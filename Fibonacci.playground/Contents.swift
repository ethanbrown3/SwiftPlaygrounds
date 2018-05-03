//: Playground - noun: a place where people can play

import UIKit

func fibonacci(until: Int) -> Int {
    
    if until == 0 {
        return 0
    }
    if until == 1 {
        return 1
    }
    let fibnum = fibonacci(until: until - 1) + fibonacci(until: until - 2)
    return fibnum
}

fibonacci(until: 4)

func fibonacci2(until: Int) {
    print(0)
    print(1)
    
    var num1 = 0
    var num2 = 1
    
    for _ in 0...until {
        let num = num1 + num2
        print(num)
        
        num1 = num2
        num2 = num
    }
}
