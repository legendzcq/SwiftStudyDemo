//
//  UnionFind.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/7/7.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

public struct UnionFind<T: Hashable> {
    private var index = [T: Int]()
    private var parent = [Int]()
    private var size = [Int]()
    
    public mutating func addSetWith(_ element: T) {
        index[element] = parent.count
        parent.append(parent.count)
        size.append(1)
    }
    
    
    
    
}
