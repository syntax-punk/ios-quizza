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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onAnswerButtonClick(_ sender: UIButton) {
    }
    
}
