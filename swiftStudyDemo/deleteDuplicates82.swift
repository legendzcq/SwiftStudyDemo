//
//  deleteDuplicates82.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/7/20.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation
 public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init(_ val: Int) {
         self.val = val
         self.next = nil
     }
 }




func deleteDuplicates1(_ head: ListNode) -> ListNode {
    
    var current = head
    while current != nil && current.next != nil {
        if current.next?.val == current.val {
            
            let node:ListNode = current.next!
            current.next = node.next
            node.next = nil
        }else {
            current = current.next!
        }
    }
    return head
    
}



func deleteDuplicates2(_ head: ListNode) -> ListNode {
    
    var cur:ListNode? = head
    
    while cur != nil && cur!.next != nil {
        if cur!.next?.val == cur!.val {
            let node:ListNode = cur!.next!
            cur!.next = node.next
            node.next = nil
            
        }else {
            cur = cur!.next!
        }
    }
    return head
    
}
