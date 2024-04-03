//
//  PlusMinus.swift
//  Hackerrank
//
//  Created by Szymon Wereszczynski on 02/04/2024.
//

/*
 
 Given an array of integers, calculate the ratios of its elements that are positive, negative, and zero.
 Print the decimal value of each fraction on a new line with 6 places after the decimal.
 
 Note: This challenge introduces precision problems.
 The test cases are scaled to six decimal places,
 though answers with absolute error of up 10e-4 to are acceptable.
 
 Complete the plusMinus function in the editor below.
 Input:
 int arr[n]: an array of integers
 Output:
 Print the ratios of positive, negative and zero values in the array.
 Each value should be printed on a separate line with 6 digits after the decimal.
 The function should not return a value.
 
*/

func plusMinus(arr: [Int]) -> Void {
    var positiveCount: Float = 0
    var negativeCount: Float = 0
    var zeroCount: Float = 0
    
    arr.forEach { item in
        if item == 0 {
            zeroCount += 1
        } else if item > 0 {
            positiveCount += 1
        } else {
            negativeCount += 1
        }
    }
    
    print(
        """
        \(ratioFormatter(positiveCount))
        \(ratioFormatter(negativeCount))
        \(ratioFormatter(zeroCount))
        """
    )
    
    func ratioFormatter(_ numbersCount: Float) -> String {
        let ratio = numbersCount / Float(arr.count)
        return String(format: "%.6f", ratio)
    }
}
