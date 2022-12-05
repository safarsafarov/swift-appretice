import UIKit

let yes = true
let no = false

let doesOneEqualTwo = (4 == 3)
let doesOneNotEqualTwo = (1 != 2)

let asloTrue = !(1 == 2)

let isOneGreateThanTwo = (1 > 2)
let isOneLessThanTwo = (1 < 2)

let add = true && true
let addTrue = 1 < 2 && 4 > 3
let andFalse = 1 < 2 && 3 > 4

let orTrue = 1 < 2 || 2 > 4
let orFalse = 1 == 2 || 3 == 4
let andOr = (1 < 2 && 3 > 4) || 1 < 4

// Challenge 1.
//“Create a constant called myAge and set it to your age. Then, create a constant named isTeenager that uses Boolean logic to determine if the age denotes someone in the age range of 13 to 19.”

//let myAge = 21
//let isTeenager = myAge >= 13 && myAge <= 19
//
//let tashkent = 2000
//let isTashkentOld = tashkent >= 1999 && tashkent <= 3000

// Challenge 2.
//“Create another constant named theirAge and set it to my age, which is 30. Then, create a constant named bothTeenagers that uses Boolean logic to determine if both you and I are teenagers.”
//let theirAge = 30
//let bothTeenager = myAge >= theirAge && myAge <= theirAge
// Challenge 3.
//Create a constant named reader and set it to your name as a string. Create a constant named author and set it to my name, Matt Galloway. Create a constant named authorIsReader that uses string equality to determine if reader and author are equal.
//let reader = "Safar Safarov"
//let author = "Matt Gelloway"
//let authorIsReader = reader == author

// Challenge 4.
//Create a constant named readerBeforeAuthor which uses string comparison to determine if reader comes before author.
//let readerBeforeAuthor = author < reader
//
//let hourOfDay = 12
//var timeOfDay = ""
//
//if hourOfDay < 6 {
//    timeOfDay = "Early Morning"
//} else if hourOfDay < 12 {
//    timeOfDay = "Morning"
//} else if hourOfDay < 17 {
//    timeOfDay = "Afternoon"
//} else if hourOfDay < 20 {
//    timeOfDay = "Evening"
//} else if hourOfDay < 24 {
//    timeOfDay = "Late evening"
//} else {
//    timeOfDay = "INVALID HOUR"
//}
//print(timeOfDay)
//
//var hoursWorked = 45
//
//var price = 0
//if hoursWorked > 40 {
//  let hoursOver40 = hoursWorked - 40
//  price += hoursOver40 * 50
//  hoursWorked -= hoursOver40
//}
//price += hoursWorked * 25
//
//print(price)

//let myAge = 21
//if myAge > 13 {
//    print("you are not teenager")
//} else if myAge < 13{
//    print("you are teenager")
//} else {
//    print("NO VALUE")
//}
//let answer = myAge > 13 ? myAge : 13
//
//var counter = 0
//while counter < 1000 {
//    print(counter)
//}

//var counter = 0
//while true {
//    counter += 10
//    break
//}

//var counter: Int = 0
//var roll: Int = 0
//repeat {
//    roll = Int.random(in: 0...5)
//    counter += 1
//} while (counter == roll)

/*:
 ## Basic Control Flow
 ### Challenge 1: Find the error
 What’s wrong with the following code?
 
 ```
 let firstName = "Matt"
 
 if firstName == "Matt" {
   let lastName = "Galloway"
 } else if firstName == "Ray" {
   let lastName = "Wenderlich"
 }
 let fullName = firstName + " " + lastName
 ```
 */
// `lastName` is no longer in scope when setting `fullName`.
// A correct solution:

let firstName = "Matt"
var lastName = ""

if firstName == "Matt" {
    lastName = "Galloway"
} else if firstName == "Ray" {
    lastName = "Wenderlich"
}
let fullName = firstName + " " + lastName

/*:
 ### Challenge 2: Boolean challenge
 In each of the following statements, what is the value of the Boolean `answer` constant?
*/

let answer1 = true && true
// true
let answer2 = false || false
// false
let answer3 = (true && 1 != 2) || (4 > 3 && 100 < 1)
// true
let answer4 = ((10 / 2) > 3) && ((10 % 2) == 0)
// true

/*:
 ### Challenge 3: Snakes and ladders
 Imagine you're playing a game of snakes & ladders that goes from position 1 to position 20. On it, there are ladders at position 3 and 7 which take you to 15 and 12 respectively. Then there are snakes at positions 11 and 17 which take you to 2 and 9 respectively.
 Create a constant called `currentPosition` which you can set to whatever position between 1 and 20 which you like. Then create a constant called `diceRoll` which you can set to whatever roll of the dice you want. Finally, calculate the final position taking into account the ladders and snakes, calling it `nextPosition`.
 */

let currentPosition = 2
let diceRoll = 5

var nextPosition = currentPosition + diceRoll
if nextPosition == 3 {
    nextPosition = 15
} else if nextPosition == 7 {
    nextPosition = 12
} else if nextPosition == 11 {
    nextPosition = 2
} else if nextPosition == 17 {
    nextPosition = 9
}
print("Board position after \(currentPosition) is \(nextPosition)")


/*:
 ### Challenge 4: Number of days in a month
 Given a year reprsented by an `Int` and a month represented by a `String` in all lowercase and using the first three letters, calculate the number of days in the month. You need to account for leap years remembering that February ("feb") has 29 days in a leap year and 28 otherwise. A leap year occurs every 4 years, unless the year is divisible by 100, but then if it's divisible by 400 then it is actually a leap year.
 */

let month = "feb"
let year = 2018

var days = 0
if month == "jan" || month == "mar" || month == "may" || month == "jul" || month == "aug" || month == "oct" || month == "dec"  {
    days = 31
} else if month == "apr" || month == "jun" || month == "sep" || month == "nov" {
    if (year % 4 == 0 && year % 100 != 0 || year % 400 == 0) {
        days = 29
    } else {
        days = 28
    }
}

if days > 0 {
    print("\(month) has 31 days")
} else {
    print("Invalid month!")
}
/*:
 ### Challenge 5: Next power of two
 Given a number, determine the next power of 2 above or equal to that number.
*/

let number = 666
var trial = 1
var times = 0
while trial < number {
    trial = trial * 2
    times += 1
}
print("Next power of 2 >= \(number) is \(trial) which is 2 to the powerof \(times)")

