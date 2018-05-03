//: Playground - noun: a place where people can play

import UIKit

class Firebase {
    func createUser (username: String, password: String, completion: (Bool, Int) -> Void ) {
        // does something time consuming
        var isSuccess = true
        var userID = 123
        completion(isSuccess, userID)
    }
}

class MyApp {
    func registerButtonPressed () {
        let firebase = Firebase()
        
        // using a function reference
//        firebase.createUser(username: "Ethan", password: "12345", completion: completed)
        
        // using a closure
        firebase.createUser(username: "Ethan", password: "12345") {
            (isSuccess: Bool, userID: Int) in
            
            print("registration: \(isSuccess)")
            print("userID is: \(userID)")
        }
    }
    
    func completed (isSuccess: Bool, userID: Int) {
        
        print("registration: \(isSuccess)")
        print("userID is: \(userID)")
    }
}


let myApp = MyApp()
myApp.registerButtonPressed()
