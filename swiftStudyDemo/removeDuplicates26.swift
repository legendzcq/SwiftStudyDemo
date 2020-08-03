//
//  removeDuplicates.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/7/23.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

func removeDuplicates(_ nums:inout [Int]) -> Int {
    if nums.count == 0 {
        return 0
    }
    var i:Int = 0
    for j in 1 ..< nums.count {
        if nums[j] != nums[i] {
            i += 1
            nums[i] = nums[j]
        }
    }
    
    return i + 1
}


func removeDuplicates1(_ nums:inout [Int]) -> Int {
    if nums.count == 0 {
        return 0
    }
    
    var i:Int = 0
    for j in 1 ..< nums.count {
        if nums[j] != nums[i] {
            i += 1
            nums[i] = nums[j]
        }
    }
    
    return i + 1
}
