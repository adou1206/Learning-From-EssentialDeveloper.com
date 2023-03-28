//
//  ViewControllerFactory.swift
//  QuizApp
//
//  Created by Tow Ching Shen on 11/03/2023.
//

import UIKit
import QuizEngine

protocol ViewControllerFactory {
    func questionViewController(for question: Question<String>, answerCallback: @escaping ([String]) -> Void) -> UIViewController
    
    func resultViewController(for result: Result<Question<String>, [String]>) -> UIViewController
}

//protocol QuestionViewControllerFactory {
//    func questionViewController(for question: Question<String>, answerCallback: @escaping (String) -> Void) -> UIViewController
//}
//
//protocol ResultViewControllerFactory {
//    func resultViewController(for result: Result<Question<String>, String>) -> UIViewController
//}
