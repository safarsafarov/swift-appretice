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

let myAge = 21
let isTeenager = myAge >= 13 && myAge <= 19

let tashkent = 2000
let isTashkentOld = tashkent >= 1999 && tashkent <= 3000

// Challenge 2.
//“Create another constant named theirAge and set it to my age, which is 30. Then, create a constant named bothTeenagers that uses Boolean logic to determine if both you and I are teenagers.”
let theirAge = 30
let bothTeenager = myAge >= theirAge && myAge <= theirAge
// Challenge 3.
//Create a constant named reader and set it to your name as a string. Create a constant named author and set it to my name, Matt Galloway. Create a constant named authorIsReader that uses string equality to determine if reader and author are equal.
let reader = "Safar Safarov"
let author = "Matt Gelloway"
let authorIsReader = reader == author

// Challenge 4.
//Create a constant named readerBeforeAuthor which uses string comparison to determine if reader comes before author.
let readerBeforeAuthor = author < reader
