//
//  ResultHelper.swift
//  QuizAppTests
//
//  Created by Tow Ching Shen on 13/03/2023.
//

@testable import QuizEngine

extension Result {
    static func make(answers: [Question: Answer] = [:], score: Int = 0) -> Result<Question, Answer> {
        return Result(answers: answers, score: score)
    }
}

extension Result: Equatable where Answer: Equatable {
    public static func ==(lhs: Result<Question, Answer>, rhs: Result<Question, Answer>) -> Bool {
        return lhs.score == rhs.score && lhs.answers == rhs.answers
    }
}

extension Result: Hashable where Answer: Equatable {
    public func hash(into hasher: inout Hasher) {
        return hasher.combine(1)
    }
    
    public var hashValue: Int {
        return 1
    }
}
