//
//  Question.swift
//  Quizza
//
//  Created by Voogie on 14/09/2023.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        self.text = q
        self.answer = a
    }
}
