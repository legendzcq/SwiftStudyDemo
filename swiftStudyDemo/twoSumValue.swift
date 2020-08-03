//
//  twoSumValue.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/7/13.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation
//方法三：一遍哈希表
//
//事实证明，我们可以一次完成。在进行迭代并将元素插入到表中的同时，我们还会回过头来检查表中是否已经存在当前元素所对应的目标元素。如果它存在，那我们已经找到了对应解，并立即将其返回。
//
//class Solution {
//    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//        var result = [Int]()
//        var container = Set<Int>()
//        for (index, value) in nums.enumerated() {
//            let match = target - value
//            if container.contains(match) {
//                let first  = nums.firstIndex(of: match)!
//                result.append(first)
//                result.append(index)
//                break
//            }
//            container.insert(value)
//        }
//        return result
//    }
//}
//
//题解说明:
//1.创建Hash Container,解决时间复杂度问题.
//2.在Hash Container中查找match.
//    2.1 查找成功，找到value和match的索引index.
//3.查找失败，将value1存入Hash Container.
//4.继续遍历数组.
//
//作者：zhangyu528
//链接：https://leetcode-cn.com/problems/two-sum/solution/swift51-ti-jie-by-zhangyu528/
//来源：力扣（LeetCode）
//著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。

func twoSum(_ nums:[Int], _ target:Int) -> [Int] {
    var result = [Int]()
    var container = Set<Int>()
    
    for (index, value) in nums.enumerated() {
        let match = target - value
        if container.contains(match) {
            let first = nums.firstIndex(of: match)!
            result.append(first)
            result.append(index)
            break
        }
        container.insert(value)
    }
    return result
}


func twoSum1(_ nums:[Int], _ target: Int) -> [Int] {
    var result = [Int]()
    var container = Set<Int>()
    
    for (index, value) in nums.enumerated() {
        let match = target - value
        if container.contains(match) {
            let first = nums.firstIndex(of: match)!
            result.append(first)
            result.append(index)
            break
        }
        container.insert(value)
    }
    return result
}


func twoSum2(_ nums:[Int], _ target: Int) -> [Int] {
    var result = [Int]()
    var container = Set<Int>()
    
    for (index, value) in nums.enumerated() {
        let match  = target - value
        if  container.contains(match) {
            let first = nums.firstIndex(of: match)!
            result.append(first)
            result.append(index)
            break
        }
        container.insert(value)
        
    }
    return result
    
}


func twoSumNew(_ nums:[Int], target: Int) -> [Int] {
    for i in 0 ..< nums.count {
        var low = i + 1
        var high = nums.count - 1
        while low <= high {
            let mid = (high - low ) / 2 + low
            if nums[mid] == target - nums[i] {
                return [i + 1, mid + 1]
            } else if nums[mid] > target - nums[i] {
                high = mid - 1
            } else {
                low = mid + 1
            }
        }
    }
    
    return [-1,-1]
}


func twoSumNew1(_ numbers:[Int] , target: Int) -> [Int] {
    
    for i in 0 ..< numbers.count  {
        
        var low = i + 1
        var  high = numbers.count - 1
        
        while low <= high {
            let mid = (high - low) / 2 + low
            if numbers[mid] == target - numbers[i] {
                return [i + 1 , mid + 1]
            }
            else if numbers[mid] > target - numbers[i] {
                high = mid - 1
            } else {
                low = mid + 1
            }
        }
        
    }
    return [-1, -1]
}
