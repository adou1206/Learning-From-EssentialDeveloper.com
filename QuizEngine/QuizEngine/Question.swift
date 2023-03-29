//
//  Question.swift
//  QuizEngine
//
//  Created by Tow Ching Shen on 11/03/2023.
//

import Foundation

//protocol QuestionType: Hashable {
//    var type: Question { get }
//}
//
//struct ConcreteQuestion: QuestionType {
//    let question: String
//    let type: Question
//}

public enum Question<T: Hashable> : Hashable {
    case singleAnswer(T)
    case multipleAnswer(T)
}

