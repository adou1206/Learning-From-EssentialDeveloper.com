//
//  Router.swift
//  QuizEngine
//
//  Created by Tow Ching Shen on 09/03/2023.
//

import Foundation

public protocol Router {
    associatedtype Question: Hashable
    associatedtype Answer
    
    func routeTo(question: Question, answerCallback: @escaping (Answer) -> Void)
    
    func routeTo(result: Result<Question, Answer>)
}
