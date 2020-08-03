//
//  compareVersion.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/7/16.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

func compareVersion(_ v1:String, _ v2:String) -> Int {
    var arr1 = v1.split(separator: ".")
    var arr2 = v2.split(separator: ".")
    
    let len = max(arr1.count, arr2.count)
    
    while arr1.count < len {
        arr1.append( "0")
    }
    while arr2.count < len {
        arr2.append("0")
    }
    
    for i in 0 ..< len {
        let num1:Int = Int(arr1[i])!
        let num2:Int = Int(arr2[i])!
        if num1 > num2 {
            return 1
        } else if num1 < num2 {
            return -1
        }
    
    }
        
    return 0
}



func compareVersion1(_ v1: String, _ v2:String) -> Int {
    
    var arr1 = v1.split(separator: ".")
    var arr2 = v2.split(separator: ".")
    
    let len = max(arr1.count, arr2.count)
    
    while arr1.count < len {
        arr1.append("0")
    }
    while arr2.count < len {
        arr2.append("0")
    }
    
    for i in 0 ..< len {
        let num1: Int = Int(arr1[i])!
        let num2: Int = Int(arr2[i])!
        
        if  num1 > num2 {
            return 1
        } else if num1 < num2 {
            return -1
        }
        
    }
    
    
    return 0
}
