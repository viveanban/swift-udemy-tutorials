//Create function
//func getMilk(){
//    print("Go to the shops")
//    print("Buy 2 cartons of milk")
//    print("Pay 2$")
//    print("Come home")
//}

//Create function with arguments
//func getMilk(milkCartonNumber: Int){
//    print("Go to the shops")
//    print("Buy \(milkCartonNumber) cartons of milk")
//    print("Pay \(milkCartonNumber*2)$")
//    print("Come home")
//}

func getMilk(milkCartonNumber: Int, moneyGiven: Int) -> Int{
    let price = milkCartonNumber*2
    print("Go to the shops")
    print("Buy \(milkCartonNumber) cartons of milk")
    print("Pay \(price)$")
    print("Come home")
    
    return moneyGiven - price
}

//Call functions
//getMilk()
//getMilk(milkCartonNumber: 4)
let change = sgetMilk(milkCartonNumber: 2, moneyGiven: 10)
print("Hello master! here's your \(change)$ change")
