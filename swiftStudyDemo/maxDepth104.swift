//
//  maxDepth104.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/7/31.
//  Copyright © 2020 奇少. All rights reserved.
//



//给定一个二叉树，找出其最大深度。
//
//二叉树的深度为根节点到最远叶子节点的最长路径上的节点数。
//
//说明: 叶子节点是指没有子节点的节点。
//
//示例：
//给定二叉树 [3,9,20,null,null,15,7]，
//
//    3
//   / \
//  9  20
//    /  \
//   15   7
//返回它的最大深度 3 。

import Foundation

class solution104 {
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        
        var currentHeight = 0
        var maxHeight = 0
        
        findMaxHeight(root, &currentHeight, &maxHeight)
        return maxHeight
    }

    func findMaxHeight(_ root:TreeNode, _ currentHeight: inout Int, _ maxHeight: inout Int)  {
        currentHeight += 1
        
        if root.left != nil || root.right != nil {
            if  root.left != nil {
                findMaxHeight(root.left!, &currentHeight, &maxHeight)
                currentHeight -= 1
            }
            
            if  root.right != nil {
                findMaxHeight(root.right!, &currentHeight, &maxHeight)
                currentHeight -= 1
            }
        }else {
            maxHeight = max(currentHeight,maxHeight)
            return
        }
        
    }




    func dfsMaxDepth1(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        var track = [(TreeNode, Int)]()
        track.append((root, 1))
        var maxLevel = -1
        while !track.isEmpty {
            let last = track.removeLast()
            let level = last.1
            
            if let left = last.0.left {
                track.append((left, level + 1))
            }
            if let right = last.0.right {
                track.append((right, level + 1))
            }
            maxLevel = max(maxLevel, level)
        }
        return maxLevel;
    }

    //bfs
    func bfsMaxDepth2(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        var queue = [TreeNode]()
        queue.append(root)
        var level = 0
        while !queue.isEmpty {
            for _ in 0..<queue.count {
                let first = queue.removeFirst()
                if let left = first.left {
                    queue.append(left)
                }
                if let right = first.right {
                    queue.append(right)
                }
            }
            level += 1
        }
        return level
    }




    //dfs递归
       func maxDepth3(_ root: TreeNode?) -> Int {
           guard let root = root else { return 0 }
           let leftDepth = maxDepth(root.left)
           let rightDepth = maxDepth(root.right)
           return max(leftDepth, rightDepth) + 1
       }



}

