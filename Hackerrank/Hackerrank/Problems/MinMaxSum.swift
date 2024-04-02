//
//  MinMaxSum.swift
//  Hackerrank
//
//  Created by Szymon Wereszczynski on 02/04/2024.
//

/*
 
 Given five positive integers,
 find the minimum and maximum values that can be calculated by
 summing exactly four of the five integers.
 Then print the respective minimum and maximum values as a single
 line of two space-separated long integers.
 
 Complete the miniMaxSum function in the editor below.
 Input:
 arr: an array of 5 integers
 Output:
 Print two space-separated integers on one line:
 the minimum sum and the maximum sum of 4 of 5 elements.
 
 */

import Foundation

func miniMaxSum(arr: [Int]) -> Void {
    guard !arr.isEmpty else { return }
    
    let sum = arr.reduce(0, { $0 + $1}) // O(n)
    let sortedArray = arr
        .map { sum - $0 }
        .sorted() // O(n log n)
    
    print("\(sortedArray.first!) \(sortedArray.last!)")
}
