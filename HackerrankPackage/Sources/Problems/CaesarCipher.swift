//
//  CaesarCipher.swift
//  
//
//  Created by Szymon Wereszczynski on 04/04/2024.
//

// caesarCipher on hackerrank

import Foundation

func caesarCipher(s: String, k: Int) -> String {
    let alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
    let mappingDict: [String: String] = alphabet
        .enumerated()
        .reduce(into: [String: String]()) { (dict, item) in
            var offset = (item.offset + k)
            let multiplier = offset / (alphabet.count)
            if offset >= (alphabet.count) {
                offset -= (alphabet.count) * multiplier
            }
            dict[item.element] = alphabet[offset]
        }
    
    return s
        .map { letter in
            let modifiedLetter: String = letter.isUppercase ? letter.lowercased() : letter
            if alphabet.contains(modifiedLetter) {
                let mappedLetter = mappingDict[modifiedLetter]!
                return letter.isUppercase ? mappedLetter.uppercased() : mappedLetter
            } else {
                return String(letter)
            }
        }
        .joined()
    
}
