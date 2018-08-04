//
//  PatternMatchingTestCase.swift
//  BioinformaticsTests
//
//  Created by Olga Vyrostko on 04.08.2018.
//

import XCTest

final class PatternMatchingTestCase: XCTestCase {

    func testPatternMatchingNormal() { check(genome: "ACTGGTCAGG", pattern: "GG", expected: [3, 8]) }

    func testBounds() { check(genome: "ACTGTAC", pattern: "AC", expected: [0, 5]) }

    func testRepeted() { check(genome: "ACGGGCT", pattern: "GG", expected: [2, 3]) }

    private func check(genome: String, pattern: String, expected: [Int]) {
        XCTAssertEqual(
            expected,
            patternMatching(genome: dna(string: genome), pattern: dna(string: pattern))
        )
    }

}
