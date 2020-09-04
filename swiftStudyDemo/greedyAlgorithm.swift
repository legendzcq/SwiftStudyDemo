//
//  greedyAlgorithm.swift
//  swiftStudyDemo
//
//  Created by 奇少 on 2020/8/11.
//  Copyright © 2020 奇少. All rights reserved.
// https://blog.csdn.net/effective_coder/article/details/8736718

import Foundation



class solutionTXSF:NSObject {
    struct NodeTX {
        var weight:Float?
        var value:Float?
        var mark:Bool?
        var char_mark:Character?
        var pre_weight_value:Float?
    }
    func bagProblem()  {
                let Weight:[Float] = [35,30,60,50,40,15,20]
                let Value:[Float] = [10.0,40.0,30.0,50.0,35.0,40.0,30.0]
                let Char:[Character] = ["A","B","C","D","E","F","G",]
                var array:[NodeTX] = Array(repeating: NodeTX(), count: 7)
                
                for i in 0 ..< 7 {
                    array[i].value = Value[i]
                    array[i].weight = Weight[i]
                    array[i].char_mark = Char[i]
                    array[i].mark = false
                    array[i].pre_weight_value = Float(Value[i] + Weight[i])
                    
                }
                
        //        for i in 0 ..< 7 {
        //            print("\(String(describing: array[i].pre_weight_value))")
        //        }
                
                var weight_all:Float = 0.0
                var value_all:Float = 0.0
                var max:Float = 0.0
                
                var charArray:[Character] = []
                var flag = 0, n = 0
                
                while weight_all <= 150 {
                    for index in 0 ..< 7 {
                        if array[index].pre_weight_value! > max && array[index].mark == false {
                            max = array[index].pre_weight_value!
                            flag = index
                        }
                    }
                    n += 1
                    charArray.append(array[flag].char_mark!)
                    array[flag].mark = true
                    weight_all += array[flag].weight!
                    value_all += array[flag].value!
                    max = 0.0
                }
                
                
                for i in 0 ..< n-1 {
                    print(charArray[i])
                    print("weight_all:\(weight_all - array[n - 1].weight!)")
                    print("value_all:\(value_all)")
                }
    }
    
   public func ActivitySchedule() {
        let S:[Int] = [1,3,0,5,3,5,6,8,8,2,12]
        let F:[Int] = [4,5,6,7,8,9,10,11,12,13,14]
        var mark:[Bool] = Array(repeating: false, count: 11)
        
        mark[0] =  true
        var j = 0
        for i in 1 ..< S.count {
            if S[i] >= F[j] {
                mark[i] = true
                j = i
            }
        }
        
        for i in 0 ..< S.count {
            if mark[i] {
                print(i)
            }
        }
    }
    
    public func greedyActivitySelector( starts:[Int] , finishes:[Int]) -> [Int] {
        let n = starts.count - 1
        var activities:[Int] = [1]
        
        var k = 1
        
        for m in 2 ... n {
            if starts[m] > finishes[k] {
                activities.append(m)
                k = m
            }
        }
        
        return activities
    }
  
}
