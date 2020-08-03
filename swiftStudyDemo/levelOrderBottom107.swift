//
//  levelOrderBottom107.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/8/3.
//  Copyright © 2020 奇少. All rights reserved.
//


//给定一个二叉树，返回其节点值自底向上的层次遍历。 （即按从叶子节点所在层到根节点所在的层，逐层从左向右遍历）
//
//例如：
//给定二叉树 [3,9,20,null,null,15,7],
//
//    3
//   / \
//  9  20
//    /  \
//   15   7
//返回其自底向上的层次遍历为：
//
//[
//  [15,7],
//  [9,20],
//  [3]
//]
//



import Foundation

class solution107 {
    
    var levels = [[Int]]()
  
    
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        if root == nil {
            return levels
        }
     
        _helper(root, 0)
        return levels.reversed()
    }
    
    func _helper(_ t:TreeNode? , _ level: Int)  {
        if levels.count == level {
            levels.append([Int]())
        }
        
        levels[level].append(t?.val ?? 0)
        
        if t?.left != nil {
            _helper(t?.left, level + 1)
        }
        
        if t?.right != nil {
            _helper(t?.right, level + 1)
        }
    }
    var levelOrderBottomArray = [[Int]]()

    func levelOrderBottom1(_ root:TreeNode?) -> [[Int]] {
        subLeveOrderBottom2(0, root)
        return levelOrderBottomArray.reversed()
    }
    
    func  subLeveOrderBottom2(_ index:Int , _ root: TreeNode?) {
        guard root != nil else {
            return
        }
        
        if index >=  levelOrderBottomArray.count {
            levelOrderBottomArray.append([Int]())
        }
        
        root?.left != nil ? subLeveOrderBottom2(index + 1, root?.left) : nil
        root?.right != nil ? subLeveOrderBottom2(index + 1, root?.right) : nil
        
        var ceng = levelOrderBottomArray[index]
        ceng.append(root!.val)
        levelOrderBottomArray[index] =  ceng
        
    }
    

}

