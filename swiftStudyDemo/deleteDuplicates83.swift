//
//  deleteDuplicates83.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/7/21.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

func deleteDuplicates(_ head: ListNode?) -> ListNode {
    let top = ListNode(0)
    top.next = head
    var prev = top
    var current = head
    while let now = current, var next = now.next {
        if now.val == next.val{
            //求出next指向最后一个相等的
            while let end = next.next{
                if now.val == end.val {
                    next = end
                }else{
                    break
                }
            }
            prev.next = next.next
            current = next.next
        }else{
            prev = now
            current = next
        }
    }
    return top.next!
    
}
