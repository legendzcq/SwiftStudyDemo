//
//  plusOne66.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/8/10.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

class solution66 {
    func plusOne(_ digits: [Int]) -> [Int] {
        var temp = digits
        let len = temp.count
        
//        for i in stride(from: len - 1, to: 0, by: -1) {
        for i in (0 ... len - 1).reversed() {
            temp[i] += 1
            temp[i] %= 10
            if temp[i] != 0 {
                return temp
            }
        }
        
        temp = Array(repeating: 0, count: len + 1)
        temp[0] = 1
        return temp
    }
}
