//
//  addBinary67.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/8/10.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

class solution67 {
    func addBinary(_ a:String, _ b:String) -> String {
        var ans = ""
        let aa:[Character] = a.reversed()
        let bb:[Character] = b.reversed()
        
        let n = max(a.count, b.count)
        var carry = 0
        
        for i in 0 ..< n {
            carry += i < a.count ? (aa[i] == "1") ? 1 : 0 : 0
            carry += i < b.count ? (bb[i] == "1") ? 1 : 0 : 0
            ans.append(((carry % 2) != 0) ? "1" : "0")
            carry /= 2
        }
        
        if carry > 0 {
            ans.append("1")
        }
        
        let res:[Character] = ans.reversed()
        
        return String(res)
    }
}
