//: Playground - noun: a place where people can play

import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    let cheeseString = "My favorite cheese is \(cheese)";
    return cheeseString
}
// Make fullSentence say "My favorite cheese is cheddar."
var fullSentence = favoriteCheeseStringWithCheese("cheddar")


/*

Arrays & Dictionaries

*/

var numberArray = [1, 2, 3, 4]
// Add 5 to this array
numberArray += [5]


var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]

// Add 5 : "five" to this dictionary
numberDictionary[5] = "five"
numberDictionary

/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
for var i = 1; i<11; i++ {
    println("\(i)")
}


// Use a half-closed range loop to print 1 - 10, inclusively
// WORK HERE

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [picard, worf]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    // Setup return value
    var drinkArray : [String] = []
    
    // go through and for each character in the input array
    for character in characters {
        // extract the fav drink
        var drink = character["favorite drink"]
        // add it to the drink array
        drinkArray.append(drink!)
    }
    // return drink array
    return drinkArray
}


let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)


/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

func printOutStrings(){
    var allItems = ""
    for (item) in strings{
        allItems += "\(item);"
    }
    println("\(allItems)")
}

printOutStrings()

let expectedOutput = "milk;eggs;bread;challah"

/*

Closures

*/

var cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]
// Use a closure to sort this array alphabetically
// WORK HERE

func cerealArraySort(s1: String, s2: String) ->Bool{
    return s1 < s2
}
cerealArray.sort(cerealArraySort)
for cereal in cerealArray{
    println(cereal)
}
