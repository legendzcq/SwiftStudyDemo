//
//  intersect.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/7/13.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

func interSect(_ nums1:[Int], _ nums2:[Int]) -> [Int] {
    var dict = [Int: Int](), result = [Int]()
    for i in nums1 {
        dict[i] = (dict[i] ?? 0) + 1
    }
    for i in nums2 {
        if  let n = dict[i],n > 0 {
            dict[i] = n - 1
            result.append(i)
        }
    }
    return result
}


func interSect1(_ num1:[Int], _ num2:[Int]) -> [Int] {
    var dict = [Int: Int]() , result = [Int]()
    for i in num1 {
        dict[i] = (dict[i] ?? 0) + 1
        print("key:\(i),value:\(String(describing: dict[i]))")
    }
    for i in num2 {
        if  let n = dict[i], n > 0 {
            print("i：\(i)---n-1:\(n - 1)")
            dict[i] = n - 1
            result.append(i)
        }
    }
    return result
}


func interSect2(_ num1:[Int], _ num2:[Int]) -> [Int] {
    var dict = [Int: Int]() , result = [Int]()
    for i in num1 {
        dict[i] =  (dict[i] ?? 0) + 1
    }
    for i in num2 {
        if let n = dict[i] , n > 0 {
            dict[i] =  n - 1
            result.append(i)
        }
    }
    return result
}
