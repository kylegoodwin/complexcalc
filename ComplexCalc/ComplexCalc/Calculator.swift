//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    
    func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    func add(lhs: (Int,Int),rhs: (Int,Int)) -> (Int,Int){
        return (lhs.0 + rhs.0,lhs.1+rhs.1)
    }
    
    func add(_ list:[Int]) -> Int {
        var i = 0
        var count = 0
        while(i < list.count){
            count = count + list[i]
            i += 1
        }
        
        return count
    }
    
    func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    func subtract(lhs: (Int,Int),rhs: (Int,Int)) -> (Int,Int){
        return (lhs.0 - rhs.0,lhs.1-rhs.1)
    }
    
    func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    
    func multiply(_ list:[Int]) -> Int {
        var i = 0
        var count = 1
        while(i < list.count){
            count = count * list[i]
            i += 1
        }
        
        return count
    }
    
    func divide(lhs: Int, rhs: Int) -> Int {
        return lhs/rhs
    }
    
    func mathOp(lhs: Int, rhs: Int, op: (Int,Int)->Int) -> Int{
        return op(lhs,rhs)
    }
    
    func mathOp(args: [Int],beg: Int,op: (Int,Int)->Int) -> Int{
        var i = 0
        var count = beg
        
        while( i < args.count){
            count = op(count,args[i])
            i += 1
        }
        
        return count
        
    }
    
    func count(_ list: [Int]) -> Int{
        return list.count
    }
    
    func avg(_ list: [Int]) -> Int{
        var i = 0
        var count = 0
        while(i < list.count){
            count = count + list[i]
            i += 1
        }
        
        return count/i
    }

}
