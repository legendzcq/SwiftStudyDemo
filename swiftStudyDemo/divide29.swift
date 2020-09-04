//
//  divide29.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/9/4.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

class solution29 {
    func divide(dividend: Int, divisor:Int) -> Int {
        if dividend == 0 { return 0 }
        if divisor == 1 { return dividend}
    
        if divisor == -1 {
            if dividend > INT8_MIN {
                return -dividend
            }
            
            return Int(INT32_MAX)
        }
    
        var a = dividend
        var b = divisor
        var sign = 1
        if (a > 0 && b < 0) || (a < 0 && b > 0) {
            sign = -1
        }
        a = a > 0 ? a : -a
        b = b > 0 ? b : -b
        let res = div( a, b)
        
        if sign > 0 { return res > INT32_MAX ? Int(INT32_MAX) : res}
        
        
        return -res
    }
    
    func div(_ a:Int , _ b:Int) -> Int {
        if a < b { return 0}
        var count = 1
        var tb = b
        while (tb + tb) <= a {
            count = count + count
            tb = tb + tb
        }
        return count + div( a - tb, b)
    }
}
