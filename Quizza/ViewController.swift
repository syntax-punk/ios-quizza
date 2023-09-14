//
//  ViewController.swift
//  Quizza
//
//  Created by Voogie on 04/09/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionContainer: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quizes = [
        Question(q: "A slug's blood is green.", a: "True"),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
        
    ]
    
    var quizId = 0, correct = 0, wrong = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi()
    }
    
    @IBAction func onAnswerButtonClick(_ sender: UIButton) {
        let answer = sender.titleLabel?.text ?? ""
        let result = checkAnswer(answer)
        
        if result {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        if quizId < quizes.count - 1 {
            quizId += 1
        } else {
            quizId = 0
        }
        
        Timer.scheduledTimer(timeInterval: 0.25, target: self, selector: #selector(updateUi), userInfo: nil, repeats: false)
    }
    
    func checkAnswer(_ answer: String) -> Bool {
        let correctAnswer = quizes[quizId].answer;
        if answer == correctAnswer {
            correct += 1
            return true
        } else {
            wrong += 1
            return false
        }
    }
    
    @objc func updateUi() {
        questionContainer.text = quizes[quizId].text
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = Float(quizId + 1) / Float(quizes.count)
    }
}
