//
//  insertionSort.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/7/10.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

func insertionSort(_ array:[Int]) -> [Int] {
    var a = array
    for x in 1 ..< a.count {
        var y = x
        while y > 0 && a[y] < a[y - 1] {
            a.swapAt(y - 1 , y)
            y -= 1
        }
        
    }
    return a
}



func  insertionSort1(_ array: [Int]) -> [Int] {
    var a = array
    for x in 1 ..< a.count {
        var y = x
        while y > 0 && a[y] < a[y - 1] {
            a.swapAt(y - 1, y)
            y -= 1
        }
    }
    return a
}

func insertionSort2(_ array: [Int]) -> [Int] {
    var a = array
    
    for x in 1 ..< a.count {
        var y = x
        let temp = a[y]
        while y > 0 && temp < a[y - 1] {
            a[y] =  a[y - 1]
            y -= 1
        }
        a[y] = temp
    }
    return a
    
}


func insterionSort3(_ array:[Int]) -> [Int] {
    var a = array
    
    for x in 1 ..< a.count {
        var y = x
        let temp = a[y]
        while y > 0 && temp < a[y - 1]{
            a[y] =  a[y - 1]
            y -= 1
        }
        a[y] =  temp
    }
    return a
}

func insertionSort4<T>(_ array:[T], _ isOrderedBefore:(T,T)-> Bool) -> [T] {
        var a = array
    for x in 1 ..< a.count {
        var  y = x
        let temp = a[y]
        while y > 0 && isOrderedBefore(temp , a[y - 1]) {
            a[y] = a[y - 1]
            y -= 1
        }
        a[y] =  temp
    }
    return a
}

//func trheadText() {
//    var myThread = Thread(target: nil, selector: #selector(abcde), object: nil)
//
//}
//
//func abcde() {
//    
//}
