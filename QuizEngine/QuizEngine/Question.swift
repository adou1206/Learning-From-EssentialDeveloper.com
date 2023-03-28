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
    
    public func hash(into hasher: inout Hasher) {
        switch self {
        case .singleAnswer(let value):
            return hasher.combine(value.hashValue)
        case .multipleAnswer(let value):
            return hasher.combine(value.hashValue)
        }
    }
    
    public var hashValue: Int {
        switch self {
        case .singleAnswer(let value):
            return value.hashValue
        case .multipleAnswer(let value):
            return value.hashValue
        }
    }
}

