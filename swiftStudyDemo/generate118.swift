//
//  generate118.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/8/12.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

class solution118 {
    func generate(_ numRows:Int) -> [[Int]] {
        
        
        var triangle:[[Int]] = Array(repeating: Array(repeating: 1, count: 1), count: numRows)
        
        if numRows == 0 {
            return triangle
        }
        
        for i in 0 ..< numRows {
            triangle[i] = Array(repeating: 1, count: i + 1)
        }
        
        if numRows <= 2 {
            return triangle
        }
        
        for i in 2 ..< numRows {
            for j in 1 ..< i {
                triangle[i][j] = triangle[i - 1][j - 1] + triangle[i - 1][j]
            }
        }
        return triangle
        
        
    }
}
