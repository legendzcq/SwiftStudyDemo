//
//  minDepth111.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/8/5.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

class solution111 {
    
    func minDepth(_ root:TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        print(root?.val as Any)
        if (root!.left == nil) && (root!.right == nil) {
            return 1
        }
  
        var min_depth = Int.max
        if root!.left != nil {
            min_depth = min(minDepth(root?.left!), min_depth)
        }
        if root!.right != nil {
            min_depth = min(minDepth(root?.right!), min_depth)
        }
        
        
        return min_depth + 1
    }
}
