//
//  RingBufferTest.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/7/21.
//  Copyright © 2020 奇少. All rights reserved.
//

import Foundation

public struct RingBuffer<T> {
    fileprivate var array:[T?]
    fileprivate var readIndex = 0
    fileprivate var writeIndex = 0
    
    public init(count: Int) {
        array = [T?](repeating: nil, count: count)
    }
    
    fileprivate var availableSpaceForReading: Int {
        return writeIndex - readIndex
    }
    
    fileprivate var availableSpaceForWriting: Int {
        return array.count - availableSpaceForReading
    }
    
    public var isEmpty: Bool {
        return availableSpaceForReading == 0
    }
    
    
    public var isFull: Bool {
        return availableSpaceForWriting == 0
    }
    
    
    public mutating func write(_ element: T)-> Bool {
        if !self.isFull {
            array[writeIndex % array.count] =  element
            writeIndex += 1
            return true
        } else {
            return false
        }
    }
    
    public mutating func read() -> T? {
        if !self.isEmpty {
            let element = array[readIndex % array.count]
            readIndex += 1
            print("RingBuffer read:\(element ?? 0 as! T)")
            return element
        }else {
            return nil
        }
    }
}


