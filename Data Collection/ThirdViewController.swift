//
//  ThirdViewController.swift
//  Data Collection
//
//  Created by Ray Patt on 2/22/18.
//  Copyright © 2018 Ray Patt. All rights reserved.
//

import UIKit
import GoogleAPIClientForREST
import GoogleSignIn

class ThirdViewController: UIViewController,  GIDSignInDelegate{
    private let scopes = [kGTLRAuthScopeSheetsSpreadsheets]
    private let service = GTLRSheetsService()
    let signInButton = GIDSignInButton()
    
    var valueSender = GTLRSheets_ValueRange()
    
    var thanks = ""
    
    @IBOutlet weak var thanksLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        thanksLabel.text = thanks
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
            }
        }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}


