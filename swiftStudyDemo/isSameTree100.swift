//
//  isSameTree100.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/7/27.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation


/**
* Definition for a binary tree node.
 */
 public class TreeNode100 {
    public var val: Int
    public var left: TreeNode100?
    public var right: TreeNode100?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
 }



func isSameTree(_ p: TreeNode100?, _ q: TreeNode100?) -> Bool {
    if p == nil && q == nil {
        return true
    }
    
    if q == nil || p == nil {
        return false
    }
    
    if p?.val != q?.val {
        return false
    }
    
    return isSameTree(p?.right, q?.right) && isSameTree(p?.left, q?.left)
}


func check(_ p: TreeNode100?, _ q: TreeNode100?) -> Bool {
    if p == nil && q == nil {
        return true
    }
    if p == nil || q == nil {
        return false
    }
    
    if p?.val != q?.val {
        return false
    }
    
    return true
}

func isSameTree1(_ p: TreeNode100?, _ q: TreeNode100?) -> Bool {
    
    var pp = p
    var qq = q
    
    
    if pp == nil && qq == nil {
        return true
    }
    if !check(pp, qq) {
        return false
    }
    
    var deqP:[TreeNode100] = []
    var deqQ:[TreeNode100] = []
    
    deqP.append(pp!)
    deqQ.append(qq!)
    
    while !deqP.isEmpty {
        pp = deqP.removeFirst()
        qq = deqQ.removeFirst()
        
        if !check(pp, qq) {
            return false
        }
        
        if pp != nil {
            if !check(pp?.left, qq?.left) {
                return false
            }
            
            if pp?.left != nil {
                deqP.append((pp?.left)!)
                deqQ.append((qq?.left)!)
            }
            
            if !check(pp?.right, qq?.right) {
                return false
            }
            
            if pp?.right != nil {
                deqP.append((pp?.right!)!)
                deqQ.append((qq?.right!)!)
            }
        }
        
        
        
    }
    
    return true
   
}
