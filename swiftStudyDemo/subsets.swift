//
//  subsets.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/8/24.
//  Copyright © 2020 奇少. All rights reserved.
//


//
//1、描述
//
//给定一组不含重复元素的整数数组 nums，返回该数组所有可能的子集（幂集）。
//
//说明：解集不能包含重复的子集
//
//例：输入：nums = [1, 2, 3]
//
//        输出：[ [3], [1], [2], [1, 2, 3], [1, 3], [2, 3], [1, 2], [] ]
// https://blog.csdn.net/lin1109221208/article/details/93967413



import Foundation

class solutionXXX {
    func subsets(_ nums: [Int]) -> [[Int]] {
        
        var res:[[Int]] = [[Int]]()
        
        for i in 0 ..< (1 << nums.count) {
            var sub = [Int]()
            for j in 0 ..< nums.count {
                if ((i >> j) & 1) == 1 {
                    sub.append(nums[j])
                }
            }
            res.append(sub)
        }
        return res
    }
    
    
    func subsets1(_ nums: [Int]) -> [[Int]] {
        var res:[[Int]] = [[Int]]()
        res.append([])
        
        for n in nums {
            let size = res.count
            var i = 0
            while i < size {
                var sub = [Int](res[i])
                sub.append(n)
                res.append(sub)
                i += 1
            }
        }
        return res
    }
}
