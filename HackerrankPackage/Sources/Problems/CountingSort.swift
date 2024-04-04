//
//  CountingSort.swift
//  Hackerrank.swift
//  
//
//  Created by Szymon Wereszczynski on 03/04/2024.
//

/*
 Alternative Sorting
 Another sorting method, the counting sort, does not require comparison.
 Instead, you create an integer array whose index range covers the entire
 range of values in your array to sort.
 Each time a value occurs in the original array,
 you increment the counter at that index. At the end,
 run through your counting array, printing the value of each non-zero
 valued index that number of times.

 Note
 For this exercise, always return a frequency array with 100 elements. The example above shows only the first 4 elements, the remainder being zeros.
 Challenge
 Given a list of integers, count and return the number of times each value appears as an array of integers.
 Function Description
 Complete the countingSort.
 countingSort has the following parameter(s):
 arr[n]: an array of integers
 Returns
 int[100]: a frequency array
 Input Format
 The first line contains an integer n, the number of items in arr.
 Each of the next n lines contains an integer arr[i] where 0 =< i < n.
 Constraints
 100 =< n =< 10e6
 0 =< arr[i] < 100
 
 */

func countingSort(arr: [Int]) -> [Int] {
    var frequencyArray = Array(repeating: 0, count: 100)
    arr.forEach { number in
        frequencyArray[number] += 1
    }
    return frequencyArray
}
