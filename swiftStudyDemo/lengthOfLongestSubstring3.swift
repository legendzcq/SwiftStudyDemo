//
//  lengthOfLongestSubstring3.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/8/21.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

class solution3 {
    
    func lengthOfLongestSubstring(_ s:String) -> Int {
        let ss:Array<Character> = Array(s)
        var occ:Set = Set<Character>()
        var rk = -1 , ans = 0
        
        for i in 0 ..< ss.count {
            if i != 0 {
                occ.remove(ss[i - 1])
            }
            
            while rk + 1 < ss.count && !occ.contains(ss[rk + 1]) {
                occ.insert(ss[rk + 1])
                rk += 1
            }
            
            ans = max(ans, rk - i + 1)
        }
        
        
        
        return ans
        
    }
}
