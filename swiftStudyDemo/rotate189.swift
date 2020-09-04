//
//  rotate189.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/8/13.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

class solution189 {
//    方法 1：暴力
    func rotate(_ nums:[Int], _ k:Int) -> [Int] {
        var tempNums = nums
        var temp = 0
        var previous = 0
        
        for i in 0 ..< k {
            previous = tempNums[tempNums.count - 1]
            for j in 0 ..< tempNums.count {
                temp = tempNums[j]
                tempNums[j] = previous
                previous = temp
            }
        }
        
        return tempNums
    }

//方法 2：使用额外的数组
    func rotate1(_ nums:[Int], _ k:Int)  -> [Int] {
        var tempNums = nums
        var a:[Int] = Array(repeating: 0, count: nums.count)
        for i in 0 ..< nums.count  {
            a [(i + k) % nums.count] = nums[i]
            
        }
        for i in 0 ..< nums.count {
            tempNums[i] = a[i]
        }
        
        return tempNums
    }
//    方法 3：使用环状替换


    func rotate2(_ nums:[Int], _ k:Int)  -> [Int] {
        var tempNums = nums
        let kk = k % nums.count
        var count = 0
        
        for start in count ..< nums.count {
            var current = start
            var prev = tempNums[start]
            
            repeat {
                let next = (current + kk) % tempNums.count
                let temp = tempNums[next]
                tempNums[next] = prev
                prev = temp
                current = next
                count += 1
            } while start != current
        }
        
        return tempNums
    }

}
