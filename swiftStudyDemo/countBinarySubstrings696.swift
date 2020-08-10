//
//  countBinarySubstrings696.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/8/10.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

class solution696 {
    func countBinarySubstrings(_ s:String) -> Int {
        let characters:Array<Character> = Array(s)
        
        var counts:[Int] = []
        var ptr = 0
        let n = characters.count
        
        while ptr < n {
            let c = characters[ptr]
            var count = 0
            while ptr < n && characters[ptr] == c {
                ptr += 1
                count += 1
            }
            counts.append(count)
        }
        
        var ans = 0
        for i in 1 ..< counts.count {
            ans += min(counts[i], counts[i - 1])
        }
        return ans
    }
}
