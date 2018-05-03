//: Playground - noun: a place where people can play

import UIKit

func loveCalculator (yourName : String, theirName : String) -> String {
    let loveScore = arc4random_uniform(101)
    let scoreString = "Your love schore is \(loveScore)"
    
    if loveScore > 80 {
        return "\(scoreString). You love each other like Kanye loves Kanye"
    } else if loveScore > 40 && loveScore <= 80 {
        return "\(scoreString). Like coke and mentos"
    } else {
        return "\(scoreString). No love possible"
    }
}

print(loveCalculator(yourName: "Ethan Brown", theirName: "Courtney Brown"))

