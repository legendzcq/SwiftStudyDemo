//
//  isPalindrome125.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/8/5.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

class solution125 {
    func isaaPalindrome(_ s:String) -> Bool {
        var copy: [Character] = []
        for i in s.lowercased()
        {
            if (i >= "0" && i <= "9")||(i >= "a" && i <= "z")
            {
                copy.append(i)
            }
        }
        
        let count = copy.count
        
        for i in 0..<count
        {
            if copy[i] != copy[count - 1 - i]
            {
                return false
            }
        }
        
        
        return true
    }
    
    
    func isPalindrome1(_ str:String) -> Bool {
        var tempC: [Character] = []
        for i in str.lowercased() {
            if (i >= "0" && i <= "9") || (i >= "a" && i <= "z") {
                tempC.append(i)
            }
        }
        let count = tempC.count
        
        for i in 0 ..< count {
            if tempC[i] != tempC[count - 1 - i] {
                return false
            }
        }
        
        return true
    }
}
