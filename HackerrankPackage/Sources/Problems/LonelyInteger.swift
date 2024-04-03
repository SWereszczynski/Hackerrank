//
//  LonelyInteger.swift
//  Hackerrank
//
//  Created by Szymon Wereszczynski on 02/04/2024.
//

/*
 Given an array of integers, where all elements but one occur twice,
 find the unique element.
 It is guaranteed that n is an odd number and that there is one unique element.
 
 Example:
 array = [1,2,3,4,3,2,1]
 The unique element is 4.
 
 Function Description
 Complete the lonelyinteger function.
 lonelyinteger has the following parameter(s):
 int a[n]: an array of integers
 Returns
 int: the element that occurs only once
 */

func lonelyinteger(a: [Int]) -> Int {
    var uniqueDict = [Int: Int]()
     a.forEach { element in
        if uniqueDict[element] != nil {
           uniqueDict.removeValue(forKey: element)
       } else {
           uniqueDict[element] = 1
       }
    }
    return uniqueDict.first!.key
}
