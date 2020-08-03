//
//  treeSolution.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/8/3.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation


class treeSolution {
    // 递归先序遍历
    func recursionPreorderTraversal(_ root:TreeNode?)  {
        guard root != nil else {
            return
        }
        
        print(root!.val)
        
        recursionPreorderTraversal(root?.left)
        recursionPreorderTraversal(root?.right)
    }
    
    func preorderTraversal(_ root:TreeNode?) {
        var treeNodeStack:[TreeNode] = [TreeNode]()
        
         var node = root
        
        while node != nil || !treeNodeStack.isEmpty {
            
            while node != nil {
                print(node!.val)
                
                treeNodeStack.append(node!)
                node = node?.left ?? nil
            }
            
            if !treeNodeStack.isEmpty {
                node = treeNodeStack.removeLast()
                node = node?.right ?? nil
            }
        }
    }
    
    func recursionMiddleorderTraversal(_ root:TreeNode?)  {
        guard root != nil else {
            return
        }
        
        recursionMiddleorderTraversal(root?.left)
        print(root!.val)
        recursionMiddleorderTraversal(root?.right)
    }
    
    func middleorderTraversal(_ root:TreeNode?)  {
        var treeNodeStack:[TreeNode] = [TreeNode]()
        var node = root
        while node != nil || !treeNodeStack.isEmpty {
            while node != nil {
                treeNodeStack.append(node!)
                node = node?.left
            }
            if !treeNodeStack.isEmpty {
                
                node = treeNodeStack.removeLast()
                print(node!.val)
                node = node?.right
            }
        }
    }
    
    
    func recursionPostorderTraversal(_ root:TreeNode?)  {
        guard root != nil else {
            return
        }
        
        recursionPostorderTraversal(root?.left)
        recursionPostorderTraversal(root?.right)
        print(root!.val)
    }
    
    func postorderTraversal(_ root:TreeNode?)  {
        var treeNodeStack:[TreeNode] = [TreeNode]()
        var node = root
        var lastVisit = root
        
        
        while node != nil || !treeNodeStack.isEmpty {
            while node != nil {
                treeNodeStack.append(node!)
                node = node?.left
            }
            
            node = treeNodeStack.last
            
            if node?.right == nil || node?.right == lastVisit {
                print(node!.val)
                treeNodeStack.removeLast()
                lastVisit = node
                node = nil
            } else {
                node = node?.right
            }
        }
        
        
    }
}


