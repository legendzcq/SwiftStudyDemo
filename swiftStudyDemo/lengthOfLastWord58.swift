//
//  lengthOfLastWord58.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/8/7.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

class solution58 {
    func lengthOfLastWord(_ s:String) -> Int {
        let characters = s.map{String($0)}
        
        var end = characters.count - 1

        while end >= 0 && characters[end] == " " {
            end -= 1
        }
        if  end < 0 { return 0 }
        
        var start = end
        while start >= 0 && characters[start] != " " {
            start -= 1
        }
    
    return end - start
    }
}
