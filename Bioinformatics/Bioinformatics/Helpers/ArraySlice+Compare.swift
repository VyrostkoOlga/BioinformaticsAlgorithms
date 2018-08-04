//
//  ArraySlice+Compare.swift
//  Bioinformatics
//
//  Created by Olga Vyrostko on 04.08.2018.
//

import Foundation

extension ArraySlice where Element: Equatable {
    func isEqualTo(array: [Element]) -> Bool {
        guard count == array.count else {
            return false
        }
        for idx in 0..<self.count {
            if self[idx + startIndex] != array[idx] {
                return false
            }
        }
        return true
    }
}
