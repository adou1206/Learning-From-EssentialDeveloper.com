//
//  Result.swift
//  QuizEngine
//
//  Created by Tow Ching Shen on 09/03/2023.
//

import Foundation

public struct Result<Question: Hashable, Answer> {
    public let answers: [Question: Answer]
    public let score: Int
}
