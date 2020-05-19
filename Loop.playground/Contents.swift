import UIKit

var str = "Hello, playground"

func getOneLyric(nbOfBottles: Int) -> String{
    return "\(nbOfBottles) bottles of beer on the wall, \(nbOfBottles) bottles of beer. Take one down, pass it around, \(nbOfBottles - 1) bottles of beer on the wall.\n"
}

func printAllLyrics(){
    for number in (1..<100).reversed(){
        print(getOneLyric(nbOfBottles: number))
    }
    print("No more bottles on the wall, no more bottles of beer. \nGo to the store and buy some more, 99 bottles of beer on the wall")
}

printAllLyrics()
