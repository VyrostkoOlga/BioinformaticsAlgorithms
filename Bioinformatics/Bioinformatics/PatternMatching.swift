//
//  PatternMatching.swift
//  Bioinformatics
//
//  Created by Olga Vyrostko on 02.08.2018.
//

import Foundation

/**
 Reverse dna sequence and replace all the nucleotides with
 complement
 */
func reverseComplement(dna: [Symbol]) -> [Symbol] {
    var result = [Symbol]()
    var idx = dna.count - 1
    while idx >= 0 {
        result.append(~dna[idx])
        idx -= 1
    }
    return result
}
