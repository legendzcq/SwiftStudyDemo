//
//  isSymmetric101.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/7/30.
//  Copyright © 2020 奇少. All rights reserved.
//

//
//给定一个二叉树，检查它是否是镜像对称的。
//
//
//
//例如，二叉树 [1,2,2,3,4,4,3] 是对称的。
//
//    1
//   / \
//  2   2
// / \ / \
//3  4 4  3
//
//
//但是下面这个 [1,2,2,null,3,null,3] 则不是镜像对称的:
//
//    1
//   / \
//  2   2
//   \   \
//   3    3
//
//
//进阶：
//
//你可以运用递归和迭代两种方法解决这个问题吗？



import Foundation

class solution101 {
    
    func check1(_ p:TreeNode?, _ q: TreeNode?) -> Bool {
        

        if p == nil && q == nil {
            return true
        }
        
        if p == nil || q == nil {
            return false
        }
        
        let b1 = (p!.val == q!.val)
        let b2 = check1(p!.left, q!.right)
        let b3 = check1(p!.right, q!.left)
        
        
        if b1 && b2 && b3 {
            return true
        }
        
        
        return false
    }

    func isSymmetric(_ root: TreeNode?) -> Bool {
        return check1(root, root)
    }

}
