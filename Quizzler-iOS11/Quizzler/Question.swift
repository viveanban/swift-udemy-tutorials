//
//  Question.swift
//  Quizzler
//
//  Created by ANBAN, Viveka on 2020-05-20.
//  Copyright © 2020 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    
    //Properties
    let question : String
    let answer : Bool
    
    init(text:String, correctAnswer:Bool) {
        self.question = text
        self.answer = correctAnswer
    }
}
