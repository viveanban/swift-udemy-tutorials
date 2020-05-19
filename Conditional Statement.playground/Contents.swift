import UIKit

func calculateLove(yourName:String, theirName:String) -> Int{
    return Int.random(in: 0...100)
}

print(calculateLove(yourName: "Viveka", theirName: "String"))

func calculateMetricBMI(height:Double, weight: Double)-> Double{
    return weight / (pow(height, 2.0))
}

func bmiInterpretation(_ bmi: Double) -> String{
    if bmi > 25{
        return "Overweight"
    }else if bmi >= 18.5{
        return "Normal weight!"
    }else{
        return "Underweight!"
    }
}

let bmi = calculateMetricBMI(height: 10.0, weight: 20.0)
print(bmiInterpretation(bmi))
