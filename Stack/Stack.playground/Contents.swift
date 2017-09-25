//: Playground - noun: a place where people can play

import UIKit

public struct Stack<T>{
    fileprivate var array = [T]()
    
    public var cuont: Int{
        return array.count
    }
    
    public var isEmpty: Bool{
        return array.isEmpty
    }
    
    public mutating func push(_ element: T){
        array.append(element)
    }
    
    public mutating func pop() -> T?{
        return array.popLast()
    }
    
    public var top: T?{
        return array.last
    }
    
}


var stackName = Stack(array: ["jo", "won", "ik"])

print(stackName.array)
stackName.pop()

print(stackName.array)
stackName.push("MIKE")

print(stackName.array)
stackName.top

stackName.isEmpty







