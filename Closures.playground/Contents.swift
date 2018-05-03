//: Playground - noun: a place where people can play

import UIKit

// passing functions
func calculator(n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}


// pass a function into calculator() to determine the math operation

func add(no1: Int, no2: Int) -> Int {
    return no1 + no2
}

func multiply(no1: Int, no2: Int) -> Int {
    return no1 * no2
}

func subtract(no1: Int, no2: Int) -> Int {
    return no1 - no2
}

calculator(n1: 2, n2: 3, operation: add)
calculator(n1: 2, n2: 3, operation: multiply)
calculator(n1: 2, n2: 3, operation: subtract)


// closure example
calculator(n1: 2, n2: 3, operation: { (no1: Int, no2: Int) -> Int in
    return no1 * no2
})
// we have basically just defined the function needed inline in the function call

// we can do the same thing but use type inference to shorten it
// remove all types and return statement
calculator(n1: 2, n2: 3, operation: { (no1, no2) in
    no1 * no2
})
// you can take it further and use anon parameter names
calculator(n1: 2, n2: 3, operation: {$0 * $1})

// and even further with a trailing closure
calculator(n1: 2, n2: 3) {$0 * $1}


// real life example.
// perform a function for each entry in an array without a for loop
let array = [6,2,3,9,4,1]

func addOne (n1: Int) -> Int {
    return n1 + 1
}

array.map(addOne)

// using a closure
print(array.map{$0+1})

// converting array to strings
let newArray = array.map{"\($0)"}
print(newArray)

