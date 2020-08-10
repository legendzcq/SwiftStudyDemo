//
//  isBalanced110.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/8/6.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

class solution110  {
    
    func height(_ root: TreeNode?) -> Int {
        if root == nil {
            return -1
        }
        return 1 + max(height(root?.left), height(root?.right))
    }
    
    func isBalanced(_ root:TreeNode?) -> Bool {
        if root == nil {
            return true
        }
        
        return abs(height(root?.left) - height(root?.right)) < 2
            && isBalanced(root?.left)
            && isBalanced(root?.right)
    }
}
