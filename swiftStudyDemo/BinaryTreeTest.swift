//
//  BinaryTreeTest.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/7/22.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation


public indirect enum BinaryTree<T> {
case node(BinaryTree<T>, T, BinaryTree<T>)
case empty
}


extension BinaryTree: CustomStringConvertible {
  public var description: String {
    switch self {
    case let .node(left, value, right):
      return "value: \(value), left = [\(left.description)], right = [\(right.description)]"
    case .empty:
      return ""
    }
  }
    
    
    public func traverseInOrder(process:(T) -> Void){
        if case let .node(left, value, right) = self {
            left.traverseInOrder(process: process)
            process(value)
            right.traverseInOrder(process: process)
        }
    }
    
    public func traversePreOrder(process: (T) -> Void) {
       if case let .node(left, value, right) = self {
         process(value)
         left.traversePreOrder(process: process)
         right.traversePreOrder(process: process)
       }
     }
     
     public func traversePostOrder(process: (T) -> Void) {
       if case let .node(left, value, right) = self {
         left.traversePostOrder(process: process)
         right.traversePostOrder(process: process)
         process(value)
       }
     }
    
}

public class TreeNode:NSObject, Comparable{
    public static func < (lhs: TreeNode, rhs: TreeNode) -> Bool {
        if lhs.val < rhs.val {
            return true
        }
        return false
    }
    
    public static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
        if lhs.val == rhs.val  {
            return true
        }
        return false
        
    }
    
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
   
}


//func BinaryTreeFromOrderings(inorder: String, preorder: String) {
//    if inorder.count == 0 ||  {
//
//    }
//}
