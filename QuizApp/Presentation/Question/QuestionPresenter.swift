//
//  QuestionPresenter.swift
//  QuizApp
//
//  Created by Tow Ching Shen on 13/03/2023.
//

import Foundation
import QuizEngine

struct QuestionPresenter {
    let questions: [Question<String>]
    let question: Question<String>
    
    var title: String {
        guard let index = questions.firstIndex(of: question) else { return "" }
        
        return "Question #\(index + 1)"
    }
}
