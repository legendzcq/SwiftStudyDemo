//
//  swiftThreadDemo.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/7/13.
//  Copyright © 2020 奇少. All rights reserved.
//

import Cocoa

class swiftThreadDemo: NSObject {
    var queue = OperationQueue()
    
    deinit
    {
        //dealloc
    }
    
    func testGCDThread()
    {
        let queue1 = DispatchQueue.init(label: "Serial queue1")//label:队列标识符
        //            如果想指定串行队列的优先级, 可使用下面的方法来创建:
        let queue2 = DispatchQueue.init(label: "QueueIdentifier", qos: DispatchQoS.userInitiated)
        
        let mainQueue = DispatchQueue.main
        
        let queue3 = DispatchQueue.init(label: "com.gcd.queue", qos: DispatchQoS.default, attributes: DispatchQueue.Attributes.concurrent, autoreleaseFrequency: DispatchQueue.AutoreleaseFrequency.workItem, target: nil)


        let queue4 = DispatchQueue.global()
        
        let queue5 = DispatchQueue.global(qos: DispatchQoS.QoSClass.default)
      
        
    }
    
  func threadText() {
//        var myThread = Thread.init(target: self, selector: Selector("abcd"), object: nil)
    let myThread = Thread.init(target: self, selector: #selector(abcd), object: nil)
    myThread.start()
    }
    
    @objc func abcd() {
        print(Thread.current)
    }
    
   static func GCDTest1() {
        DispatchQueue.global().async {
            // 并行，异步
            print("开一条全局队列异步执行任务")
            DispatchQueue.main.async {
                print("在主队列执行刷新界面任务")
            }
        }
    }
    
    static func GCDTest5() {
        let group = DispatchGroup.init()
        let myQueue = DispatchQueue(label: "com.myQueue", qos: .default, attributes: .concurrent, autoreleaseFrequency: .workItem, target: nil)
        myQueue.async(group: group, qos: .default,flags: []) {
            for _ in 0...10 {
                print("耗时任务1。。。。")
            }
        }
    }
    
    
    func GCDTest6() {
          let queue = DispatchQueue(label: "queueName", attributes: .concurrent)
          queue.async {
              sleep(3)
              print("任务 1")
          }
          queue.async {
              sleep(2)
              print("任务 2")
          }
          queue.async {
              sleep(1)
              print("任务 3")
          }
          DispatchGroup.init().notify(qos: .default, flags: .barrier, queue: queue) {
              print("所有任务结束")
          }
          print("任务结束")
      }
    
}
