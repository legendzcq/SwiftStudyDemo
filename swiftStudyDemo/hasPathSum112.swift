//
//  hasPathSum112.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/8/6.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

class solution112 {
    func hasPathSum(_ root:TreeNode?, _ sum:Int) -> Bool {
        if  root == nil  {
            return false
        }
        
        var que_node:[TreeNode] = []
        var que_val:[Int] = []
        
        que_node.append(root!)
        que_val.append(root!.val)
        
        while !que_node.isEmpty {
            let now = que_node.removeFirst()
            let temp = que_val.removeFirst()
            
            if now.left == nil && now.right == nil {
                if temp == sum {
                    return true
                }
                continue
            }
            
            if now.left != nil {
                que_node.append(now.left!)
                que_val.append(now.left!.val + temp)
            }
            if now.right != nil {
                que_node.append(now.right!)
                que_val.append(now.right!.val + temp)
            }
            
        }
        return false
        
        
    }
    
    func hasPathSum1(_ root:TreeNode?, _ sum:Int) -> Bool {
        if  root == nil  {
               return false
           }
        
        if root?.left == nil && root?.right == nil {
            return sum == root?.val
        }
        
        return hasPathSum1(root?.left, sum - root!.val) || hasPathSum1(root?.right, sum - root!.val)
    }
    
}
