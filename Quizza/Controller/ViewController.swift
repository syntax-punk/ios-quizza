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
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi()
    }
    
    @IBAction func onAnswerButtonClick(_ sender: UIButton) {
        let answer = sender.titleLabel?.text ?? ""
        let result = quizBrain.checkAnswer(answer)
        
        if result {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQestion()
        
        Timer.scheduledTimer(timeInterval: 0.25, target: self, selector: #selector(updateUi), userInfo: nil, repeats: false)
    }
    
    @objc func updateUi() {
        questionContainer.text = quizBrain.getQuestionText() ?? "No more questions!"
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
}
