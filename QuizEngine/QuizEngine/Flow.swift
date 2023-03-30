//
//  Flow.swift
//  QuizEngine
//
//  Created by Tow Ching Shen on 06/03/2023.
//

import Foundation

class Flow <R: Router> {
    typealias Question = R.Question
    typealias Answer = R.Answer
    
    private let router: R
    private let questions: [Question]
    private var answers: [Question: Answer] = [:]
    private var scoring: ([Question: Answer]) -> Int
    
    init(questions: [Question], router: R, scoring: @escaping ([Question: Answer]) -> Int) {
        self.questions = questions
        self.router = router
        self.scoring = scoring
    }
    
    func start() {
        routeToQuestion(at: questions.startIndex)
        
//        if let firstQuestion = questions.first {
//            router.routeTo(question: firstQuestion, answerCallback: nextCallBack(from: firstQuestion))
//        }else {
//            router.routeTo(result: result())
//        }
    }
    
    private func routeToQuestion(at index: Int) {
        if index < questions.endIndex {
            let question = questions[index]
            router.routeTo(question: question, answerCallback: callback(for: question, at: index))
        }else {
            router.routeTo(result: result())
        }
    }
    
    private func routeToQuestion(after index: Int) {
        routeToQuestion(at: questions.index(after: index))
    }
    
    private func callback(for question: Question, at index: Int) -> (Answer) -> Void {
        return { [weak self] answer in
            self?.answers[question] = answer
            self?.routeToQuestion(after: index)
        }
    }
    
//    private func nextCallBack(from question: Question) -> (Answer) -> Void {
//        return { [weak self] in self?.routeNext(question, $0) }
//    }
    
//    private func routeNext(_ question: Question, _ answer: Answer) {
//        if let currentQuestionIndex = questions.firstIndex(of: question) {
//            answers[question] = answer
//
//            let nextQuestionIndex = currentQuestionIndex + 1
//
//            if nextQuestionIndex < questions.count {
//                let nextQuestion = questions[nextQuestionIndex]
//                router.routeTo(question: nextQuestion, answerCallback: nextCallBack(from: nextQuestion))
//            }else {
//                router.routeTo(result: result())
//            }
//        }
//    }
    
    private func result() -> Result<Question, Answer> {
        return Result(answers: answers, score: scoring(answers))
    }
}

//public func startGame<Question: Hashable, Answer: Equatable>(questions: [Question], router: Router, correctAnswers: [Question: Answer]) {
//}

//func score(for: [Question: Answer], correctAnswer: [Question: Answer])

//enum Answer <T> {
//    case correct(T)
//    case incorrect(T)
//}
//
//struct Answer <T> {
//    let answer: T
//    let isCorrect: Bool
//}
//
//protocol Answer {
//    var isCorrect: Bool { get }
//}
//
//struct StringAnswer {
//    let answer: String
//    let isCorrect: Bool
//}
//
//struct Question {
//    let isMultipleAnswer: Bool
//}
