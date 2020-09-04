//
//  mySqrt69.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/8/11.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

class solution69 {
    func mySqrt(_ x:Int) -> Int {
        var left = 0, right = x
        var res = 0
        while left <= right {
            let mid = left + (right - left) / 2
            if mid * mid > x {
                right = mid - 1
            } else {
                res = mid
                left = mid + 1
            }
        }
        return res
    }
}
