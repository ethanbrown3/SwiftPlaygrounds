
//func getMilk() {
//    print("go to the shops")
//    print("get 2 cartons of milk")
//    print("pay 2$")
//    print("go home")
//}

//func getMilk(howManyMilkCartons : Int) {
//    print("go to the shops")
//    print("get \(howManyMilkCartons) cartons of milk")
//
//    let priceToPay = howManyMilkCartons * 2
//
//    print("pay $\(priceToPay)")
//    print("go home")
//}

// function with return
func getMilk(howManyMilkCartons : Int, howMuchMoneyRobotWasGiven : Int) -> Int {
    print("go to the shops")
    print("get \(howManyMilkCartons) cartons of milk")
    
    let priceToPay = howManyMilkCartons * 2

    print("pay $\(priceToPay)")
    print("go home")
    
    let change = howMuchMoneyRobotWasGiven - priceToPay

    return change
}

var changeReturned = getMilk(howManyMilkCartons: 12, howMuchMoneyRobotWasGiven: 50)
print("Hello master, here's your $\(changeReturned) change")
