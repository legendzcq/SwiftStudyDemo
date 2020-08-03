//
//  searchInsert35.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/7/20.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

func searchInsert(_ nums:[Int], _ target: Int) -> Int {
    let n = nums.count
    var left:Int = 0, right = n - 1, ans = n
    
    while left <= right {
        let mid = ((right - left) >> 1) + left
        if target <= nums[mid] {
            ans = mid
            right = mid - 1
        } else {
            left = mid + 1
        }
    }
    
    return ans
}
