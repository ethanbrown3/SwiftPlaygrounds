import UIKit

func calculateBMI(weightLbs : Float, heightIns : Float) -> String {
    let BMI = (weightLbs/pow(heightIns, 2)) * 703
    
    if BMI > 25 {
        return "\(BMI): You are overweight"
    } else if BMI >= 18.5 && BMI <= 25 {
        return "\(BMI): You are normal weight"
    } else {
        return "\(BMI): You are under weight"
    }
    
}

calculateBMI(weightLbs: 195.0, heightIns: 72)
