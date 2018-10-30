
//  SecondViewController.swift
//  Data Collection
//
//  Created by Ray Patt on 2/21/18.
//  Copyright © 2018 Ray Patt. All rights reserved.
//

import UIKit
import GoogleAPIClientForREST
import GoogleSignIn

class SecondViewController: UIViewController  {
    private let scopes = [kGTLRAuthScopeSheetsSpreadsheets]
    private let service = GTLRSheetsService()
    let signInButton = GIDSignInButton()
    
    @IBOutlet weak var answerSlider: UISlider!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var questionText: UILabel!
    
    
    var introAnswers:Array<Any> = []
    var allQuestions:Array<Array<String>> = []
    var testSettings = Array<Array<String>>()
    var questions:Array<String> = []
    var questionIndices = Array<Int>()
    var questionIndex = 0
    var answers:Array<Float> = []
    let valueSender = GTLRSheets_ValueRange()
    var thanks = ""
    
    override func viewDidLoad() {
        submitButton.isHidden = true
        questionSelect()
        questionText.text = allQuestions[questionIndices[questionIndex]][0]
    }
    
    override func viewDidAppear(_ animated: Bool) {
    }
    
    @IBAction func questionSelect() {
        var percentGroup = Array<Double>()
        for _ in testSettings { percentGroup.append(0.0) }
        
        while (questionIndices.count < 10)
        {
            let randomNumber = Int(arc4random_uniform(_:UInt32(self.allQuestions.count)))
            if (!questionIndices.contains(randomNumber))
            {
                var questionValues = allQuestions[randomNumber]
                questionValues.remove(at: 0)
                var xIndex = 0
                for x in testSettings
                {
                    var tmpX = x
                    tmpX.remove(at: 0)
                    if (tmpX == questionValues)
                    {
                        if (percentGroup[xIndex] < Double(x[0])!)
                        {
                            percentGroup[xIndex] = (((percentGroup[xIndex]*10.0) + 1.0) / 10)
                            questionIndices.append(randomNumber)
                        }
                    }
                xIndex += 1
                }
            }
        }
        for x in questionIndices {print(allQuestions[x])}
    }

    ////NEXT QUESTION///
    @IBAction func nextQuestion(_ sender: Any) {
            if questionIndex < questionIndices.count-1
            {
                answers.append(answerSlider.value)
                print(questionIndex)
                answerSlider.value = 0.5
                questionIndex += 1
                questionText.text = allQuestions[questionIndices[questionIndex]][0]
            if (questionIndex == questionIndices.count-1)
                {
                    nextButton.isHidden = true
                    submitButton.isHidden = false
                    ////RESETTING QUESTION INDEX/////
                    questionIndex = 0
                }
            }
        }
    @IBAction func appendAnswers(){
        answers.append(answerSlider.value)
        answerSlider.value = 0.5
        var everything = Array<Array<Any>>()
        var singleQuestion = Array<Any>()
        for x in 0...(answers.count-1) {
            singleQuestion = introAnswers
            singleQuestion.append(answers[x])
            singleQuestion.append(allQuestions[questionIndices[x]][0])
            everything.append(singleQuestion)
        }
        valueSender.values = everything
        questionIndices.removeAll()
    }
    
    ////NEXT PAGE////
    override func prepare(for segue: UIStoryboardSegue, sender:Any?) {
        if segue.identifier == "segue2"
        {
            let finalData = segue.destination as! ThirdViewController
            finalData.valueSender = valueSender
            finalData.thanks = thanks
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
