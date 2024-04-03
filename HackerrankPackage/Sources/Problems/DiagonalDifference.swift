//
//  DiagonalDifference.swift
//  Hackerrank
//
//  Created by Szymon Wereszczynski on 03/04/2024.
//

/*
 Given a square matrix, calculate the absolute difference between the sums of its diagonals.
 For example, the square matrix arr is shown below:\
 
 123
 456
 989
 
 The left-to-right diagonal = 1+5+9=15. The right to left diagonal = 3+5+9=17.
 Their absolute difference is |15-17|=2.
 
 Complete the diagonalDifference function.
 diagonalDifference takes the following parameter:
 int arr[n][m]: an array of integers
 Return
 int: the absolute diagonal difference
 Input Format
 The first line contains a single integer, n, the number of rows and columns in the square matrix arr.
 Each of the next n lines describes a row, arr[i], and consists of n space-separated integers arr[i][j].

 Output Format
 Return the absolute difference between the sums of the matrix's two diagonals as a single integer.
 
 */

func diagonalDifference(arr: [[Int]]) -> Int {
    let n = arr.count
    var leftToRightDiagonalSum = 0
    var rightToLeftDiagonalSum = 0
    
    for index in 0...(n-1) {
        leftToRightDiagonalSum += arr[index][index]
        rightToLeftDiagonalSum += arr[index][n-1-index]
    }
    
    return abs(leftToRightDiagonalSum - rightToLeftDiagonalSum)
}
