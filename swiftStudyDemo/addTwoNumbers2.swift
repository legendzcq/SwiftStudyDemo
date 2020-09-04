//
//  addTwoNumbers2.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/8/17.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation



class solution2 {
     class ListNode {
        public var val: Int
        public var next: ListNode?
        public init(_ val: Int) {
            self.val = val
            self.next = nil
        }
    }
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let dunmyHead = ListNode(0)
        var p = l1
        var q = l2
        var curr = dunmyHead
        var carry = 0
        
        while p != nil || q != nil {

            
            let x:Int =  p?.val ?? 0
            let y:Int =  q?.val ?? 0
            let sum = carry + x + y
            carry = sum / 10
            curr.next =  ListNode(sum % 10)
            curr = curr.next!
            
            if p != nil {
                p = p?.next
            }
            
            if q != nil {
                q = q?.next
            }
            
        }
        
        if carry > 0 {
            curr.next = ListNode(carry)
        }
        
        return dunmyHead.next
    }
    
    func run() {
        let node21 = ListNode(2)
        node21.next = ListNode(4)
        node21.next?.next = ListNode(3)
        
        let node22 = ListNode(5)
        node22.next = ListNode(6)
        node22.next?.next = ListNode(4)
        var node23:ListNode = solution2().addTwoNumbers(node21, node22)!

        
        while node23.val > -1 {
            print(node23.val)
            node23 = node23.next ?? ListNode(-2)
        }
    }
}
