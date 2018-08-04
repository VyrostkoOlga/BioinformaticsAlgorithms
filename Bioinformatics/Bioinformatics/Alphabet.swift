//
//  Alphabet.swift
//  Bioinformatics
//
//  Created by Olga Vyrostko on 02.08.2018.
//

import Foundation

prefix operator ~

enum Symbol: String, Equatable, Hashable {
    case A = "A"
    case C = "C"
    case G = "G"
    case T = "T"

    static prefix func ~(symbol: Symbol) -> Symbol {
        switch symbol {
        case .A: return .T
        case .C: return .G
        case .G: return .C
        case .T: return .A
        }
    }

    static func == (lhs: Symbol, rhs: Symbol) -> Bool {
        return lhs.rawValue == rhs.rawValue
    }

    var hash: Int {
        return rawValue.hash
    }
}

/**
 Time complexity - O(n)
 Space complexity - O(n)
 */
func dna(string: String) -> [Symbol] {
    return string.compactMap { Symbol(rawValue: String($0)) }
}
