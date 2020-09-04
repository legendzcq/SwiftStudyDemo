//
//  climbStairs70.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/8/11.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

class solution70 {
    func climbStairs(_ n:Int) -> Int {
        var p = 0, q = 0, r = 1
        
        for i in 1 ... n  {
            p = q
            q = r
            r = p + q
        }
        
        return r
    }
    
  
}
