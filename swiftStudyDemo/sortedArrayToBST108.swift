//
//  sortedArrayToBST108.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/8/3.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

class solution108 {
    func sortedArrayToBST(_ nums:[Int]) -> TreeNode? {
        
        return helper(nums, 0, nums.count - 1)

    }
    
    func helper(_ nums:[Int] , _ left:Int , _ right:Int) -> TreeNode? {
        if left > right {
            return nil
        }
        
        let mid: Int = (left + right) / 2
        
        let root =  TreeNode(nums[mid])
        root.left = helper(nums, left, mid - 1)
        root.right = helper(nums, mid + 1, right)
        return root
    }
}
