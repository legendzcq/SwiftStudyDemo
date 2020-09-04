//
//  letterCombinations17.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/8/26.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

class solution17 {
    
    func letterCombinations(digits:String) -> [NSString] {
        
        var combinations:[NSString] = []
        
        if digits.isEmpty {
            return combinations
        }
        
        let phoneMap:[Character : String] = ["2":"abc","3":"def","4":"ghi","5":"jkl","6":"mno","7":"pqrs","8":"tuv","9":"wxyz"]
        
        var combination:NSString = ""
        
        backtrack(&combinations, phoneMap: phoneMap, digits: digits, index: 0, combination: &combination)
        
        return combinations
    }
    
    func backtrack(_ combinations:inout [NSString], phoneMap:[Character: String], digits: String, index:Int, combination:inout NSString) {
    
        
        let digitsArr = Array(digits)
        
        if index == digits.count {
            combinations.append(combination)
        } else {
            let digit:Character = digitsArr[index]
            let letters:String =  phoneMap[digit]!
            
            for i in 0 ..< letters.count {
                
//                let aa = letters.subString(rang: NSRange(location: i,length: 1))
//                combination +=
//                backtrack(&combinations, phoneMap: phoneMap, digits: digits, index: index + 1, combination: &combination)
//
//                if  combination.count > 0 {
//                    combination = combination.substring(to: combination.count - 1)
//                }
                
            }
        }
        
    }
}
