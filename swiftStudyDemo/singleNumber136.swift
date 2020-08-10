//
//  singleNumber136.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/8/5.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

class solution136 {
    func singleNumber(_ nums:[Int]) -> Int {
        var single = 0
        for num in nums {
            single ^= num
        }
        return single
    }
}
