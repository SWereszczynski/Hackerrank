//
//  TimeConvertion.swift
//  Hackerrank
//
//  Created by Szymon Wereszczynski on 02/04/2024.
//

/*
 Given a time in 12-hour AM/PM format, convert it to military (24-hour) time.
 Note: - 12:00:00AM on a 12-hour clock is 00:00:00 on a 24-hour clock.
 - 12:00:00PM on a 12-hour clock is 12:00:00 on a 24-hour clock.
 
 Complete the timeConversion function in the editor below. It should return a new string representing the input time in 24 hour format.
 timeConversion has the following parameter(s):
 string s: a time in 12 hour format
 Returns
 string: the time in 24 hour format
 Input Format
 A single string  that represents a time in 12-hour clock format (i.e.: hh:mm:ssAM/PM).
 
 */

import Foundation

func timeConversion(s: String) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "hh:mm:ssa"
    
    let date = dateFormatter.date(from: s)!
    dateFormatter.dateFormat = "HH:mm:ss"

    return dateFormatter.string(from: date)
}
