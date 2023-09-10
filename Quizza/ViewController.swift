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
        "3 + 2 = 6",
        "10 - 8 = 2",
        "3 + 3 * 3 = 18",
        "11 + 3 + 2 - 1 = 15"
    ]
    
    var quizId = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi()
    }

    @IBAction func onAnswerButtonClick(_ sender: UIButton) {
        quizId += 1
        if quizId < quizes.count - 1 {
            updateUi()
        }
    }
    
    func updateUi() {
        questionContainer.text = quizes[quizId]
    }
}
