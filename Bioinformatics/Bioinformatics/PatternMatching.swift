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

/**
 Returns all positions of pattern in genome
 Complexity - O((n-k)*k), where n = length of genome, k = length of pattern,
 note: count for array in Swift has complexity O(1)
 */
func patternMatching(genome: [Symbol], pattern: [Symbol]) -> [Int] {
    let n = genome.count
    let k = pattern.count
    guard n >= k else { return [] }

    var result = [Int]()
    for i in 0..<n-k+1 {
        let slice = genome[i..<i+k]
        if slice.isEqualTo(array: pattern) {
            result.append(i)
        }
    }
    return result
}
