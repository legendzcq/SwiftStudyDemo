//
//  isPalindrome.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/7/17.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation


func isPalindrome1(_ x: Int) -> Bool {
    let str: String = String(x)
    return String(str.reversed()) == str
}

func isPalindrome(_ x:Int) -> Bool {
    var temp = x
    if x < 0 || (x % 10 == 0 && x != 0) {
        return false
    }
    
    var reveredNumber:Int = 0
    while temp > reveredNumber {
        reveredNumber = reveredNumber * 10 + temp % 10
        temp /= 10
    }
    
    return temp == reveredNumber || temp == reveredNumber / 10
}


func isPalindRome(_ x:Int) -> Bool {
    var temp = x
    if temp < 0 || ( temp % 10 == 0 && temp != 0) {
        return false
    }
    
    var reveredNumber: Int = 0
    
    while temp > reveredNumber {
        reveredNumber = reveredNumber * 10 + temp % 10
        temp /= 10
    }
    return temp == reveredNumber || temp == reveredNumber / 10
}
