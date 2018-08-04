//
//  ReverseComplementTestCase.swift
//  BioinformaticsTests
//
//  Created by Olga Vyrostko on 04.08.2018.
//

import XCTest

final class ReverseComplementTestCase: XCTestCase {

    func testReverseComplementNormal() {
        let dnaStr = dna(string: "ACGT")
        XCTAssertEqual([Symbol.A, .C, .G, .T], reverseComplement(dna: dnaStr))
    }

}
