//
//  TowerBreakers.swift
//  
//
//  Created by Szymon Wereszczynski on 04/04/2024.
//

// Tower breakers on hackerrank

import Foundation

func towerBreakers(n: Int, m: Int) -> Int {
    // n - towers count
    // m - each tower height
    if m == 1 {
        return 2
    }
    if n == 1 {
        return 1
    }
    if n % 2 == 0 {
         return 2
    } else {
        return 1
    }
}
