//
//  UnsafePointerText.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/7/21.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

func incrementor(_ ptr: UnsafeMutablePointer<Int>)  {
    ptr.pointee += 1
}


func incrementor1( num:inout Int) {
    num += 1
}
