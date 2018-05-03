//: Playground - noun: a place where people can play

import UIKit

let arrayOfNumbers = [1,5,3,6,2,7,23,34]
var sum = 0
for number in arrayOfNumbers {
    sum += number
}

print(sum)
print("numbers 1-10")
for index in 1...10 {
    print(index)
}
print("number 1-9")
for index in 1..<10 {
    print (index)
}
print("even numbers less than 10")
for index in 1..<10 where index % 2 == 0 {
    print (index)
}
print()

print("99 bottles of beer")


func beerSong(forThisManyBottlesOfBeer TotalNumberOfBottles : Int) -> String {
    var lyrics: String = ""
    
    for number in (1...TotalNumberOfBottles).reversed() {
        let newLine: String = "\n\(number) bottles of beer on the wall, \(number) bottles of beer. \nTake one down and pass it around, \(number - 1) bottles of beer on the wall.\n"
        lyrics += newLine
    }
    lyrics += "\nNo more bottles of beer on the wall, no more bottles of beer. \nGo to the store and buy some more, \(TotalNumberOfBottles) of beer on the wall.\n"
    return lyrics
}

print(beerSong(forThisManyBottlesOfBeer: 25))
