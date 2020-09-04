//
//  generateParenthesis22.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/8/25.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

class Solution22 {
    
    var ans = [String]()
    func generateParenthesis(_ n: Int) -> [String] {
        fork(left: n, right: n, current: "")
        print("ans.count:\(ans.count)")
        return ans
    }
    
    
    func fork(left: Int, right:Int, current: String) {
        if right > 0 {
            if left > 0 {
                fork(left: left - 1, right: right, current: current + "(")
            }
            if right > left {
                fork(left: left, right: right - 1, current: current + ")")
            }
        } else {
            ans.append(current)
        }
    }
    
    
    func generateParenthesis1(_ n: Int) -> [String] {
    
        var ans:[String] =  []
        var cur = ""
        backtrack(ans: &ans, cur: &cur, open: 0, close: 0, max: n)
        return ans
    }
    
    func backtrack( ans:inout [String] , cur:inout String, open: Int, close: Int, max: Int) {
        if cur.count == max * 2 {
            ans.append(cur)
            return
        }
        
        if open < max {
            cur.append("(")
            backtrack(ans: &ans, cur: &cur, open: open + 1, close: close, max: max)
            cur.removeLast()
        }
        
        if close < open {
            cur.append(")")
            backtrack(ans: &ans, cur: &cur, open: open, close: close + 1, max: max)
            cur.removeLast()
        }
    }
    
    
    
    
    //    func generateParenthesis(_ n: Int) -> [String] {
    //
    //        var reslut:[String] = []
    //
    //        var current = ""
    //
    //        generate_all(&current, n * 2, result: &reslut)
    //
    //        return reslut
    //    }
    //
    //    func generate_all(_ current:inout String, _ n : Int , result: inout [String])  {
    //
    //        if n == current.count {
    //
    //            if  valid1(&current) {
    //                result.append(current)
    //
    //            }
    //            return
    //        }
    //
    //        current += "("
    //        generate_all(&current, n, result: &result)
    //        if result.count > 0 {
    //            result.removeLast()
    //        }
    //
    //        current += ")"
    //        generate_all(&current, n, result: &result)
    //        if result.count > 0 {
    //            result.removeLast()
    //        }
    //    }
    //
    //    func valid1(_ str: inout String) -> Bool {
    //
    //        var balance = 0
    //        for c in str {
    //            if c == "(" {
    //                balance += 1
    //            } else {
    //                balance -= 1
    //                if balance < 0 {
    //                    return false
    //                }
    //            }
    //        }
    //
    //        return balance == 0
    //    }
    
}
