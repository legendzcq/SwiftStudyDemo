//
//  removeElement27.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/7/24.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation


func removeElement(nums:inout [Int],val: Int) -> Int {
    var i = 0
    
    for j in 0 ..< nums.count {
        if nums[j] != val {
            nums[i] = nums[j]
            i += 1
        }
    }
    return i
}


func removeElement1(nums:inout [Int],val:Int) -> Int {
    var i = 0
    for j in 0 ..< nums.count {
        if nums[j] != val {
            nums[i] = nums[j]
            i += 1
        }
    }
    return i
}
