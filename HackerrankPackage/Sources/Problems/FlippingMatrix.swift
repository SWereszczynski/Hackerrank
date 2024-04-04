//
//  FlippingMatrix.swift
//  
//
//  Created by Szymon Wereszczynski on 04/04/2024.
//

// flippingMatrix on hackerrank

import Foundation

func flippingMatrix(matrix: [[Int]]) -> Int {
    let matrixMaxIndex = matrix.count - 1
    let submatrixMaxIndex = (matrix.count / 2) - 1
    var sum = 0
    for xIndex in 0...submatrixMaxIndex {
        for yIndex in 0...submatrixMaxIndex {
            sum += max(
                matrix[xIndex][yIndex],
                matrix[matrixMaxIndex - xIndex][yIndex],
                matrix[xIndex][matrixMaxIndex - yIndex],
                matrix[matrixMaxIndex - xIndex][matrixMaxIndex - yIndex]
            )
        }
    }
    return sum
}
