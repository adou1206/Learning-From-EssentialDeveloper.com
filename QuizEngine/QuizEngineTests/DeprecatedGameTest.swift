//
//  GameTest.swift
//  QuizEngineTests
//
//  Created by Tow Ching Shen on 09/03/2023.
//

import XCTest
import QuizEngine

 @available(*, deprecated)
final class DeprecatedGameTest: XCTestCase {
    let router = RouterSpy()
    var game: Game<String, String, RouterSpy>!
    
    override func setUp() {
        super.setUp()
        
        game = startGame(questions: ["Q1", "Q2"], router: router, correctAnswers: ["Q1": "A1", "Q2": "A2"])
    }
    
    func test_startGame_answerZeroOutofTwoCorrectly_scoresZero() {
        router.answerCallback("wrong")
        router.answerCallback("wrong")
        
        XCTAssertEqual(router.routedResult!.score, 0)
    }
    
    func test_startGame_answerOneOutofTwoCorrectly_scoresOne() {
        router.answerCallback("A1")
        router.answerCallback("wrong")
        
        XCTAssertEqual(router.routedResult!.score, 1)
    }
    
    func test_startGame_answerTwoOutofTwoCorrectly_scoresTwo() {
        router.answerCallback("A1")
        router.answerCallback("A2")
        
        XCTAssertEqual(router.routedResult!.score, 2)
    }
}
