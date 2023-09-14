//
//  ViewController.swift
//  Quizza
//
//  Created by Voogie on 04/09/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionContainer: UILabel!
    @IBOutlet weak var progressBar: UIImageView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quizes = [
        ["3 + 2 = 6", "False"],
        ["10 - 8 = 2", "True"],
        ["3 + 3 * 3 = 18", "False"],
        ["11 + 3 + 2 - 1 = 15", "True"]
    ]
    
    var quizId = 0, correct = 0, wrong = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi()
    }

    @IBAction func onAnswerButtonClick(_ sender: UIButton) {
        let answer = sender.titleLabel?.text ?? ""
        checkAnswer(answer)

        if quizId < quizes.count - 1 {
            quizId += 1
        } else {
            quizId = 0
        }
        updateUi()
    }
    
    func checkAnswer(_ answer: String) {
        let correctAnswer = quizes[quizId][1];
        if answer == correctAnswer {
            correct += 1
        } else {
            wrong += 1
        }
    }
    
    func updateUi() {
        questionContainer.text = quizes[quizId][0]
    }
}
