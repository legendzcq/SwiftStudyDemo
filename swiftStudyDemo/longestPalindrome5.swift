//
//  longestPalindrome5.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/8/24.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation





class solution5 {
    
    func longestPalindrome(_ s:String) -> String {
        

        let len = s.count
        if len < 2 {
            return s
        }
        
        var maxLen = 1
        var begin = 0
        
        let charArray = Array(s)
        
        for i in 0 ..< len - 1 {
            for j in (i + 1) ..< len {
                if (j - i + 1 > maxLen) && (validPalindromic(charArray, left: i, right: j))  {
                    maxLen = j - i + 1
                    begin = i
                }
            }
        }
        
        return NSString(string: s).substring(with: NSRange(location: begin, length: maxLen))
    }
    
    
    func validPalindromic(_ charArray:[Character], left: Int, right:Int) -> Bool {
        var leftt = left
        var rightt = right
        while leftt < rightt {
            if charArray[leftt] != charArray[rightt] {
                return false
            }
            leftt += 1
            rightt -= 1
        }
        
        return true
    }
}
