/*
 
 */
import UIKit

let defaults = UserDefaults.standard
let sharedURLSession = URLSession.shared


class Car {
    var colour = "Red"
    
    static let singletonCar = Car()

}

var myCar = Car.singletonCar
myCar.colour = "Blue"

let yourCar = Car.singletonCar
print(yourCar.colour)

