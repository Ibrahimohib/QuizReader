//
//  ViewController.swift
//  QuizReader
//
//  Created by Mohib Ibrahim on 3/6/16.
//  Copyright © 2016 Mohib Ibrahim. All rights reserved.
//

import UIKit

struct Question{
    var Question: String!
    var Answers: [String]!
    var Answer: Int!
    
}

class ViewController: UIViewController {

    @IBOutlet var QLabel: UILabel!
    @IBOutlet var Buttons: [UIButton]!
    var Questions = [Question]()
    var QNumber = Int()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Questions = [Question(Question: "What day is my meeting with Skyler?", Answers: ["Monday","Tueday","Wednesday","Thursday"], Answer: 0)]
        Question1()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func Question1(){
        if Questions.count > 0 {
            QNumber = 0
            QLabel.text = Questions[QNumber].Question
            
            for i in 0..<Buttons.count{
                Buttons[i].setTitle(Questions[QNumber].Answers[i], forState: UIControlState.Normal)
            
            }
            Questions.removeAtIndex(QNumber)
        }
        else{
            NSLog("Done")
        }
    }


}

