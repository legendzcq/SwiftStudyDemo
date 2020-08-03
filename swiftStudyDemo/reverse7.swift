//
//  reverse7.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/7/14.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

func reverse(_ x: Int) -> Int {

    var rev = 0
    
    var temp = x
    
    while temp != 0 {
        let a = temp % 10
        temp = temp / 10
        rev = rev * 10 + a
    }
    
    if rev > Int32.max || rev < Int32.min {
        return 0
    }
    return rev

}


func reverse1(_ x: Int) -> Int {
    
    var rev = 0
    
    var temp = x
    
    while temp != 0 {
        let a = temp % 10
        temp = temp / 10
        rev = rev * 10 + a
    }
    
    if rev > Int32.max || rev < Int.min {
        return 0
    }
    
    return rev
}



func reverse2(_ x: Int) -> Int {
    var rev = 0
    var temp = 0
    
    while temp != 0 {
        let a = temp % 10
        temp = temp / 10
        rev = rev * 10 + a
    }
    
    if rev > Int32.max || rev < Int.min {
        return 0
    }
    
    return rev
}
