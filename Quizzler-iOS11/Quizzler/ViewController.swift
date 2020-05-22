//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestion:QuestionBank = QuestionBank()
    var pickedAnswer:Bool = false
    var questionsCompleted:Int = 0
    var progress:Double = 0.0
    var score:Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        progressBar.tintColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        
        showQuestion()
        updateUI()
    }
    
    
    @IBAction func answerPressed(_ sender: AnyObject) {
        pickedAnswer = (sender.tag == 1) ? true : false
        
        if isAnswerCorrect(index: questionsCompleted){
            score += 1
            ProgressHUD.showSuccess("Correct!")
        }else{
            ProgressHUD.showError("Wrong!")
        }
        progress += 1/Double(allQuestion.list.count)
        
        if(questionsCompleted < allQuestion.list.count - 1){
            questionsCompleted += 1
            showQuestion()
            updateUI()
        }else{
            endOfQuizReached()
        }
    }
    
    
    func updateUI() {
        progressLabel.text = "\(questionsCompleted)/\(allQuestion.list.count)"
        scoreLabel.text = "Score: \(score)"
        progressBar.progress = Float(progress)
    }
    
    
    func showQuestion() {
        questionLabel.text = allQuestion.list[questionsCompleted].question
    }
    
    
    func isAnswerCorrect(index: Int) -> Bool{
        return allQuestion.list[index].answer == pickedAnswer
    }
    
    
    func startOver() {
        allQuestion.list.shuffle()
        
        score = 0
        questionsCompleted = 0
        progress = 0.0
        
        showQuestion()
        updateUI()
    }
    
    func endOfQuizReached(){
        let alert = UIAlertController(title: "Awesome", message:"You've finished all the questions! Do you want to start over? ", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Start Over", style: .default, handler: {_ in
            self.startOver()}))
        self.present(alert, animated: true, completion: nil)
    }
}
