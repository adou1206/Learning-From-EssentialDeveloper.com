//
//  Router.swift
//  QuizEngine
//
//  Created by Tow Ching Shen on 09/03/2023.
//

import Foundation

public protocol QiuzDelegate {
    associatedtype Question: Hashable
    associatedtype Answer
    
    func handle(question: Question, answerCallback: @escaping (Answer) -> Void)
    
    func handle(result: Result<Question, Answer>)
}

@available(*, deprecated)
public protocol Router {
    associatedtype Question: Hashable
    associatedtype Answer
    
    func routeTo(question: Question, answerCallback: @escaping (Answer) -> Void)
    
    func routeTo(result: Result<Question, Answer>)
}

/*TODO:
    1. add deprecated message (Router protocol)
    2. remove Hashable constraint from Question and make the result type generic
*/
