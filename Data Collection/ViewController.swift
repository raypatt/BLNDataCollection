//
//  ViewController.swift
//  Data Collection
//
//  Created by Ray Patt on 2/21/18.
//  Copyright © 2018 Ray Patt. All rights reserved.
//

import GoogleAPIClientForREST
import GoogleSignIn
import UIKit

class ViewController: UIViewController, GIDSignInDelegate, GIDSignInUIDelegate, UITableViewDataSource{
    private let scopes = [kGTLRAuthScopeSheetsSpreadsheets, kGTLRAuthScopeDrive]
    private let service = GTLRSheetsService()
    private let driveService = GTLRDriveService()
    let signInButton = GIDSignInButton()
    
    @IBOutlet weak var testerImage: UIImageView!
    @IBOutlet weak var beginButton: UIButton!
    @IBOutlet weak var questionTableView: UITableView!
    

    ////SETTINGS VARIABLES////
    let numberOfQuestions = 10
    
    ////STORAGE VARIABLES////
    var introQuestions:Array<Array<String>> = []
    var testSettings = Array<Array<String>>()
    var questions:Array<Array<String>> = []
    var introAnswers:Array<Any> = []
    var consent:String = ""
    var instructions:String = ""
    var thanks:String = ""
    
    var images:Array<Array<Any>> = []
   
    var receivedAnswers = GTLRSheets_ValueRange()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GIDSignIn.sharedInstance().delegate = self
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().scopes = scopes
        GIDSignIn.sharedInstance().signInSilently()
        view.addSubview(signInButton)
        questionTableView.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
  
    
    func sign(_ signIn: GIDSignIn!,
              didSignInFor user: GIDGoogleUser!,
              withError error: Error!)
        {
            if let error = error
            {
                print("Authentication Error: " + error.localizedDescription)
                self.service.authorizer = nil
            }
            else
            {
                self.signInButton.isHidden = true
                self.service.authorizer = user.authentication.fetcherAuthorizer()
                self.driveService.authorizer = user.authentication.fetcherAuthorizer()
                getIntroQuestions(a1Notation: "A2:Z20")
                {
                    self.questionTableView.reloadData()
                    if self.introQuestions.count > 11 {self.questionTableView.isScrollEnabled = true}
                }
                getTestingSettings() {}
                getQuestions() {}
                getText() {}
                getImages() {}
            
           
            }
           
    }
    
    func getImages(OnCompleted:@escaping ()->()) {
        ///SEARCH FOR FOLDER NAME///
        let query1 = GTLRDriveQuery_FilesList.query()
        query1.fields = "files(id,name)"
        var folderID = ""
        driveService.executeQuery(query1) { (ticket:GTLRServiceTicket, result: Any?, error: Error?) -> Void in
            if (error == nil) {
                let result = result as! GTLRDrive_FileList
                for x in result.files! {
                    if x.name == "Experiment" { folderID = x.identifier! }
                }
                ///SEARCH FOR FILES WITHIN FOLDER NAME///
                let query2 = GTLRDriveQuery_FilesList.query()
                query2.fields = "files(id,name)"
                query2.q =  "'" + folderID + "' in parents"
                self.driveService.executeQuery(query2) {(ticket:GTLRServiceTicket, result: Any?, error: Error?) -> Void in
                    if (error == nil)
                    {
                        let tmp = result as! GTLRDrive_FileList
                        for x in tmp.files! {
                            var tmpArray:Array<Any> = []
                            tmpArray.append(x.name!)
                            print(tmpArray)
                            ///GET DATA FOR FILES///
                            let query3 = GTLRDriveQuery_FilesGet.queryForMedia(withFileId: x.identifier!)
                            self.driveService.executeQuery (query3) { (ticket:GTLRServiceTicket, result: Any?, error: Error?) -> Void in
                                let result = result as! GTLRDataObject
                                let image:UIImage = UIImage(data: result.data)!
                                tmpArray.append(image)
                                self.images.append(tmpArray)
                            }
                        }
                    }
                    else { print(error) }
                }
            }
            else { print(error) }
        }
    }
    
    func getText(OnCompleted: @escaping ()->()) {
        let spreadsheetId = "14A7zY6u4FhIJ1Y9R8gCHlO3svMcfscemPb4vYyzX4xw"
        let range = "TestingSettings!B2:B4"
        let query = GTLRSheetsQuery_SpreadsheetsValuesGet.query(withSpreadsheetId: spreadsheetId, range:range)
        service.executeQuery(query) { (ticket: GTLRServiceTicket,  result: Any?, error: Error?) -> Void in
            let result = result as! GTLRSheets_ValueRange
            self.consent = result.values![0][0] as! String
            self.instructions = result.values![1][0] as! String
            self.thanks = result.values![2][0] as! String
        }
    }
    
    func getTestingSettings(OnCompleted: @escaping ()->()) {
        let spreadsheetId = "14A7zY6u4FhIJ1Y9R8gCHlO3svMcfscemPb4vYyzX4xw"
        let range = "TestingSettings!A6:C20"
        let query = GTLRSheetsQuery_SpreadsheetsValuesGet.query(withSpreadsheetId: spreadsheetId, range:range)
        service.executeQuery(query) { (ticket: GTLRServiceTicket,  result: Any?, error: Error?) -> Void in
            let result = result as! GTLRSheets_ValueRange
            for x in result.values! { self.testSettings.append(x as! Array<String>)
            OnCompleted()
            }
        }
    }
    
    func getIntroQuestions(a1Notation:String, OnCompleted: @escaping ()->()){
        let spreadsheetId = "14A7zY6u4FhIJ1Y9R8gCHlO3svMcfscemPb4vYyzX4xw"
        let range = "IntroQuestions!" + a1Notation
        let query = GTLRSheetsQuery_SpreadsheetsValuesGet
            .query(withSpreadsheetId: spreadsheetId, range:range)
        service.executeQuery(query) { (ticket: GTLRServiceTicket,  result: Any?, error: Error?) -> Void in
            let result = result as! GTLRSheets_ValueRange
            for x in result.values! {
                self.introQuestions.append(x as! Array<String>)
                print(self.introQuestions)
                OnCompleted()
            }
        }
    }
    
    func getQuestions(OnCompleted: @escaping ()->()){
        let spreadsheetId = "14A7zY6u4FhIJ1Y9R8gCHlO3svMcfscemPb4vYyzX4xw"
        let range = "Questions!A2:C100"
        let query = GTLRSheetsQuery_SpreadsheetsValuesGet
            .query(withSpreadsheetId: spreadsheetId, range:range)
        service.executeQuery(query) { (ticket: GTLRServiceTicket,  result: Any?, error: Error?) -> Void in
            let result = result as! GTLRSheets_ValueRange
            for x in result.values! { self.questions.append(x  as! Array<String>) }
            OnCompleted()
        }
    }
    
    @IBAction func unwindToThisViewController(sender: UIStoryboardSegue) {
        if let sendingController = sender.source as? ThirdViewController {
            receivedAnswers = sendingController.valueSender
            let spreadsheetId = "14A7zY6u4FhIJ1Y9R8gCHlO3svMcfscemPb4vYyzX4xw"
            let range = "Data!A1:B2"
            let query = GTLRSheetsQuery_SpreadsheetsValuesAppend.query(withObject: receivedAnswers, spreadsheetId: spreadsheetId, range: range)
            query.valueInputOption = "RAW"
            service.executeQuery(query)
        }
    }
var x = 0
    @IBAction func test(_ sender: Any) {
        testerImage.image = images[x][1] as! UIImage
        x+=1
    }
    
    
///////////////////////////TABLE VIEW///////////////////////////////////////////
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ questionTableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return introQuestions.count
    }
    func tableView(_ questionTableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        switch introQuestions[indexPath.row][1] {
        case "TextField":
            let cell = questionTableView.dequeueReusableCell(withIdentifier: "customCellEntry") as! UIEntryCellTableViewCell
            cell.tag = indexPath.row+1
            cell.label.text = introQuestions[indexPath.row][0]
            return cell
        case "Picker":
            let cell = questionTableView.dequeueReusableCell(withIdentifier: "customCellPicker") as! UIPickerCell
            cell.tag = indexPath.row+1
            cell.label.text = introQuestions[indexPath.row][0]
            for x in 2...(introQuestions[indexPath.row].count-1)
            { cell.data.append(String(describing: introQuestions[indexPath.row][x]))}
            return cell
        default:
            print("")
        }
        let cell = UITableViewCell()
        return cell
    }
    
    @IBAction func importIntroAnswers() {
        for x in 0...(introQuestions.count-1){
            switch introQuestions[x][1] {
            case "TextField":
                let cell = questionTableView.cellForRow(at: IndexPath(row: x, section: 0)) as! UIEntryCellTableViewCell
                let text = cell.entry.text
                introAnswers.append(text.unsafelyUnwrapped)
            case "Picker":
                let cell = questionTableView.cellForRow(at: IndexPath(row: x, section: 0)) as! UIPickerCell
                let text = introQuestions[x][cell.picker.selectedRow(inComponent: 0)+2]
                introAnswers.append(text)
            default:
                print("")
            }
        }
    }

    
//////////////////////////NEXT PAGE//////////////////////////////////////////
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue"
        {
            ////SENDING DATA TO SecondViewController/////
            let secondData = segue.destination as! SecondViewController
            secondData.introAnswers = introAnswers
            secondData.testSettings = testSettings
            secondData.allQuestions = questions
            secondData.thanks = thanks
        }
    }

    @IBAction func consent(_ sender: Any) {
        //////INSTRUCTIONS ALERT/////////
        let instructions = UIAlertController(title: "INSTRUCTIONS",
                                             message: self.instructions,
                                             preferredStyle: .alert)
        let instructionAction = UIAlertAction(title: "Begin!",
                                              style: .default,
                                              handler: {action in self.performSegue(withIdentifier: "segue",
                                                                                    sender: self)})
        instructions.addAction(instructionAction)
        //////CONSENT ALERT///////////
        
        let consent = UIAlertController(title: "CONSENT",
                                        message: self.consent,
                                        preferredStyle: .alert)
        let consentAction = UIAlertAction(title: "Agree",
                                          style: .default,
                                          handler: {action in self.present(instructions,
                                                                           animated: true,
                                                                           completion: nil)})
        let noConsentAction = UIAlertAction(title: "DO NOT Agree",
                                            style: .default,
                                            handler: {action in self.introAnswers.removeAll()})
        consent.addAction(consentAction)
        consent.addAction(noConsentAction)
        present(consent,
                animated: true,
                completion: nil)
 
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

