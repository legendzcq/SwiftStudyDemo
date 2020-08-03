//
//  Quicksort.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/7/8.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

func quicksort<T: Comparable>(_ a: [T]) -> [T] {
    guard a.count > 1 else {
        return a
    }
    
    let pivot = a[a.count/2]
    let less = a.filter{ $0 < pivot}
    let equal = a.filter{$0 ==  pivot}
    let greater = a.filter {$0 > pivot}
    
    return quicksort(less) + equal + quicksort(greater)
}



func quickSort1<T: Comparable>(_ a: [T]) -> [T] {
    guard a.count > 1 else {
        return a
    }
    
    let pivot = a[a.count/2]
    let less = a.filter{ $0 < pivot}
    let equal = a.filter{$0 == pivot}
    let greater = a.filter{$0 > pivot}
    
    return quickSort1(less) + equal + quickSort1(greater)
    
}





func quicksort2<T: Comparable>(_ a: [T]) -> [T] {
    guard  a.count > 1 else {
        return a
    }
    
    let pivot = a[a.count/2]
    let less = a.filter{$0 < pivot}
    let equal = a.filter{$0 == pivot}
    let greater = a.filter{$0 > pivot}
    
    return quicksort2(less) + equal + quicksort2(greater)
}


func partitionLomuto<T: Comparable>(_ a: inout [T], low: Int, high: Int) -> Int {
    let pivot = a[high]
    
    var i = low
    for j in low ..< high {
        if a[j] <= pivot {
            (a[i],a[j]) = (a[j], a[i])
            i += 1
        }
    }
    
    (a[i], a[high]) = (a[high],a[i])
    return i
}


func quicksortLomuto<T: Comparable>(_ a: inout [T], low: Int, high: Int) {
  if low < high {
    let p = partitionLomuto(&a, low: low, high: high)
    quicksortLomuto(&a, low: low, high: p - 1)
    quicksortLomuto(&a, low: p + 1, high: high)
  }
}


func partitionHoare<T: Comparable>(_ a: inout [T], low: Int, high: Int) -> Int {
  let pivot = a[low]
  var i = low - 1
  var j = high + 1

  while true {
    repeat { j -= 1 } while a[j] > pivot
    repeat { i += 1 } while a[i] < pivot

    if i < j {
      a.swapAt(i, j)
    } else {
      return j
    }
  }
}


func quicksortHoare<T: Comparable>(_ a: inout [T], low: Int, high: Int) {
  if low < high {
    let p = partitionHoare(&a, low: low, high: high)
    quicksortHoare(&a, low: low, high: p)
    quicksortHoare(&a, low: p + 1, high: high)
  }
}


func partitionHore1<T: Comparable>(_ a: inout [T], low: Int, high: Int) -> Int {
    
    let pivot = a[low]
    
    var i = low - 1
    var j = high + 1
    
    while true {
        
        repeat {j -= 1} while a[j] > pivot
        repeat {i += 1} while a[i]  < pivot
        
        if i < j {
            a.swapAt(i, j)
        } else {
            return j
        }
    }
}

func quicksortHoare1<T: Comparable>(_ a: inout [T] , low: Int, high: Int) {
    if low < high {
        let p = partitionHore1(&a, low: low, high: high)
        quicksortHoare1(&a, low: low, high: p)
        quicksortHoare1(&a, low: p+1, high: high)
    }
    
}


func partitionHoare2<T: Comparable>(_ a: inout [T], low: Int , high: Int) -> Int {
    let pivot = a[low]
    var i = low - 1
    var j = high + 1
    
    while true {
        repeat {j -= 1} while a[j] > pivot
        repeat {i += 1} while a[i] < pivot
        
        if  i < j {
            a.swapAt(i, j)
        } else {
            return j
        }
    }
    
}


func quicksortHoare2<T: Comparable>(_ a: inout [T], low: Int, high: Int)  {
    if  low < high {
        let p = partitionHoare2(&a, low: low, high: high)
        quicksortHoare2(&a, low: low, high: p)
        quicksortHoare2(&a, low: p + 1, high: high)
    }
}



