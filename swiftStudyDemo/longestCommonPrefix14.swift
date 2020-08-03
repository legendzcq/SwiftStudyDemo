//
//  longestCommonPrefix.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/7/14.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation


func longestCommonPrefix(_ strs: [String]) -> String {
      var result = ""
    
    if strs.count > 0 {
        if let firstObjc = strs.first {
            if strs.count > 1 {
                let numbers = strs.sorted()
                let first = numbers.first!
                let last = numbers.last!
                
                let lastArray = Array(last)
                for (index, firstChar) in first.enumerated() {
                    if lastArray[index] != firstChar {
                        return result
                    }
                    result += String(firstChar)
                }
                
            } else {
                result = firstObjc
            }
        }
    }
    
    
    
    return result
  }


func longestCommonPrefix1(_ strs:[String]) -> String {
    var result = ""
    
    if strs.count > 0 {
        if let firstObjc = strs.first {
            if strs.count > 1 {
                let numbers = strs.sorted()
                let first = numbers.first!
                let last = numbers.last!
                
                let lastArray = Array(last)
                for (index, firstChar) in first.enumerated() {
                    if lastArray[index] != firstChar {
                        return result
                    }
                    result += String(firstChar)
                }
                
            } else {
                result = firstObjc
            }
        }
    }
    
    return result
}
func longestCommonPrefix2(_ strs:[String]) -> String {

  var result = ""
    
    if strs.count > 0 {
        if let firtO = strs.first {
            if strs.count > 1 {
                let numbers = strs.sorted()
                let first = numbers.first!
                let last = numbers.last!
                
                let lastArray = Array(last)
                
                for (index, firstChar) in first.enumerated() {
                    if lastArray[index] != firstChar {
                        return result
                    }
                    
                    result += String(firstChar)
                }
                
            } else {
                result = firtO
            }
        }
    }
    
    
    
    
    return result

}
