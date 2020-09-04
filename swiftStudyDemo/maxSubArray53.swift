//
//  maxSubArray53.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/8/11.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

class solution53 {
    
    func maxSubArray(_ nums:[Int]?) -> Int {
      
        guard var temp = nums else {
            return 0
        }
        
        for i in 1 ..< temp.count {
            if temp[i - 1] > 0 {
                temp[i] += temp[i - 1]
            }
        }
        
        return temp.max() ?? 0
    }
    
    func maxSubArray1(_ nums:[Int]?) -> Int {
        
    guard let temp = nums else {
             return 0
         }
        
        var cur_sum = temp[0]
        var max_sum = temp[0]
     
        for i in 1 ..< temp.count {
            cur_sum = max(temp[i], cur_sum + temp[i])
            max_sum = max(cur_sum, max_sum)
        }
        
        return max_sum
    }
}
