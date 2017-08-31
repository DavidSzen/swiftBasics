// This is a single line comment. Comments are not run as code.

import UIKit

/*
 This is a multiline comment. It can be very long.
 
 When we import UIKit or Foundation, we're telling XCode "go fetch this
 code someone else wrote so we can use it for ourselves".
 
 Foundation contains many basic things, like pow() for raising numbers 
 to a power.
 
 UIKit is Foundation plus some other goodies, many of which are used 
 for making apps look better or run better, like UIView.
 */

print("Let's go!")

// Print is a built-in function. We get it from importing UIKit. It lets us view text or results in the console.

let constant = "This should never change"
var variable = "This might get changed"

// Var and let tell others what we intend to do later with the values they contain.

var trueOrFalse: Bool = true

// The word after the colon indicates the variable's Type. We use type declarations to state what's going to go inside our constants & variables.

var numberOne: Int

// We can declare a variable or constant, then give it a value (assign it) later.

numberOne = 1
numberOne == 1

// We assign things using a single equals sign. We compare things using a double equals.

let numberTwo: Int = 2
let numberTwoPointOh: Double = 2.0
let numberTwoPointUhOh: Float = 2.00
 
// You can't directly compare different types, but you can convert one into another to compare them.

numberTwo == Int(numberTwoPointOh)
Double(numberTwoPointUhOh) == numberTwoPointOh

// When we compare two things or make a conditional, the result is a Bool.

trueOrFalse = true
trueOrFalse = false
trueOrFalse = 10 < 1000
trueOrFalse = 20 >= 21

// Bools are true, false, or any operation that results in a true or a false, like > (greater than) or >= (greater than or equal to)

trueOrFalse = !trueOrFalse

// The ! symbol means 'not'. When used in front of a value, it negates it (makes it the opposite Bool)

trueOrFalse = 10 < 1000 && 20 >= 21
trueOrFalse = 10 < 1000 && 1000 < 1001
trueOrFalse = 20 >= 21 && 13 != 13
trueOrFalse = 20 >= 21 && 1000 < 1001

// The && means 'and'. And statements are only true if both sides are true.

trueOrFalse = 10 < 1000 || 20 >= 21
trueOrFalse = 10 < 1000 || 1000 < 1001
trueOrFalse = 20 >= 21 || 13 != 13
trueOrFalse = 20 >= 21 || 1000 < 1001

// The || means 'or'. Or statements are true if one of the conditions is true

trueOrFalse != trueOrFalse

// != is 'not equal to'. It's kind of like the ! operator, and kind of like ==. You use it to compare two things.

if numberOne == 1 {
    print(numberOne == 1)
} else {
    print(numberOne != 1)
}

// We use conditionals and comparisons inside our if statements. If the conditional is true, then the if block runs. If the conditional is false, then the else block runs

switch trueOrFalse {
case true:
    print("I'm true")
case false:
    print("I'm false")
}

// Switch statements are another way to have branching paths in our code. They check if a variable has a certain value, then do something if it does.

switch numberOne {
case 0:
    print("I'm a zero.")
case 1:
    print("I'm number one!")
default: "I don't know who I am"
}

// Switch statements need to cover all possible values for the variable they're switching on. If we're only interested in a few possibilities, we can use a default case to cover everything else

if numberOne == 0 {
    print("I'm a zero.")
} else if numberOne == 1 {
    print("I'm number one!")
} else if numberOne == 2 {
    print("I'm second.")
} else if  numberOne == 3 {
    print("I'm third.")
} else if numberOne == 4 {
    print("I'm fourth!")
} else {
    print("Quit it.")
}

// We can use else if to indicate multiple paths, but switch statements are often easier to read once we get past 3 possibilities...

while numberOne == 1 {
    print("Still true")
    numberOne = 0
}

// We also use conditionals for our while loops. As long as the condition is true, it keeps running.

for number in 5...9 {
    print(number - 4 )
}

// For loops let us indicate how many times a loop should run. When the loop hits the upper end of our range, it stops.

let newRange = 1...5

// Ranges are their own type

let anotherRange = 20..<31

// If we have ..< instead of ... in between the ends of our range, we're saying, 'stop one number before you hit the upper end'

// The ends must be whole numbers if we want to loop over the range. 

// Remove the /* */ around the next lines to test out a range that was made incorrectly for looping. Try to fix it.

/*
let decimalRange = 1.0...5.0

for number in decimalRange {
    print(number)
}
*/

let newOne: Int = 1
let noNegativeOnes: UInt = 1
let decimalOne = 1.0
let otherKindOfDecimal = Float(decimalOne)

// There are many kinds of number Types in Swift, but Double is the default for decimals.

// Remove the slashes on the next line to reveal an error.

// print(noNegativeOnes * -1)

// UInts can only be positive. Regular Ints can be positive or negative

let negativeInt: Int8 = -13
let positiveInt: Int16 = 21

// Ints with numbers in their names have different max values

let bigInt: Int64 = Int64.max
print("Int64's max is \(bigInt). That's pretty darn big.")
let littleInt: Int8 = Int8.max
print("Int8's max is only \(littleInt). That's pretty little.")

// MARK: - Useful Int, Float, and Double methods & functions

UInt8.min // The smallest value possible for this Type of number
UInt8.max // The biggest value possible for this Type of number
Double.infinity // A special value representing infinity
pow(2, 8) // Gives you two raised to the power of eight
sqrt(256) // Gives you the square root of 256

// Uncomment and correct the broken code below by converting the Types involved

// let itsComplicated: UInt16 = numberTwo * (numberTwoPointOh + numberTwoPointUhOh) - bigInt

var questionableInt: Int?

questionableInt = 10

// Optionals look like Type declarationss with a ? on the end. They can contain either a value of the correct Type...

questionableInt = nil

//...or a special value signifying absence, called nil

questionableInt = 11
print(questionableInt)

// If we put something inside an Optional, we have to 'unwrap' it, or take out its contents, before we use it. If we don't, we get some weird results warning us we have an optional

print(questionableInt!)

// We can use the ! symbol to unwrap things. This is called force-unwrapping, because we're telling the computer to use whatever is inside the Optional, even if it is nil

questionableInt = nil

// Uncomment the next line to see why force-unwrapping is a bad idea if we have a nil

// print(questionableInt!)

let newInt = Int("10")

// We can create new Ints with Strings...but the result is an Optional!

newInt! + newInt!

let optionalInt: Int? = Int("ten")

// If we give an Int a String that doesn't contain a valid number, the result is nil

if let ten = newInt {
    print(ten + ten)
} else {
    print("That's not a number in there.")
}

// We can safely unwrap Optionals with if let syntax. This stores the value in a temporary variable if a value of the correct Type is in there. The else allows us to handle the nils

var tenTenWins: Int
tenTenWins = newInt ?? 1010
tenTenWins = optionalInt ?? 1010

// Nil coalescing is special shorthand for unwrapping Optionals. The righthand side only happens if the value in the variable is a nil.

let alphabetEmojiAndOtherCharacters: String = "I ❤️ 東京"

// Strings are letters, emojis, or other characters strung together

let justAnEmoji: Character = "😀"

// Single Characters are their own type...though you can also have Strings one character long

let shortString: String = "😎"
let nerdyString: String = "\u{1F47D}"

// We can also generate characters and strings using Unicode.

print("This is an emoji combined with a skin tone code: \u{1F467}" + "\u{1F3FE}")
let oneWayToSaySpanish = "espa" + "\u{00F1}" + "ol"
let anotherWay = "espan" + "\u{0303}" + "ol"

// We can combine Unicode for emoji with different skin tones, or for characters and marks that aren't found in the English alphabet

// MARK: - Important String things

print("We can insert a variable inside a string like so: \(shortString)")

"inner characters in a special array".characters // The stuff inside the String
"length of string".characters.count // How many characters are in the String
"first character's index".startIndex // The first index, aka 0
"last character's index -- or is it?".endIndex // One more than the last index

let accessThis = "pet the 🐶 inside"
let certainCharacter = accessThis[accessThis.index(accessThis.startIndex, offsetBy: 8, limitedBy: accessThis.endIndex)!] // get at a particular character inside the string

print("\(certainCharacter) is a good dog.")

// Ok, the last one is really complicated! Let's go over that again.

accessThis[accessThis.startIndex]

// This is how we get to the first letter, p -- we use [] and the .startIndex property.

accessThis[accessThis.index(before: accessThis.endIndex)]

// This is how we get to the last letter, e -- again, we use [], but this time we need to get at the character BEFORE the .endIndex, since the actual end index is one less.

let petTheDogAgain = accessThis[accessThis.index(accessThis.startIndex, offsetBy: 8, limitedBy: accessThis.endIndex)!]

/*
 And so, to pet the dog, we must...
 
 1. Open up some square brackets -- [
 2. Use String.index(i: , offsetBy: , limitedBy)
 3. Put the String's startIndex in i
 4. Put the String's endIndex in limitedBy
 5. Put how far into the String we need to go in offsetBy *
 6. Force or safely unwrap the value
 7. Close the bracket -- ]
 
 * Strings start counting at 0, so it will always be one less than you think
 */

print(petTheDogAgain)

// Whew! This brings us to arrays.

var properStringArray = [String]()

for character in accessThis.characters {
    let letter = String(character)
    properStringArray.append(letter)
}

print(properStringArray[8] + "is the same dog, but stringy")

properStringArray[8] == String(certainCharacter)

// This is a simpler way to access things inside Strings...but you need the other way for the exam.

type(of: properStringArray)
type(of: accessThis.characters)

// Btw, we can check the type of things using type(of:)

// MARK: - Useful Array stuff

properStringArray[0] // The first item in the array
properStringArray.count // How many things are in the array
properStringArray[properStringArray.count - 1] // One way to get at the last item in the array
properStringArray.last! // Another way to get at the last item
properStringArray.first! // Another way to get at the first item

properStringArray.append("!") // Add an element to the end of the array
properStringArray.insert("?", at: properStringArray.count - 1) // Add an element wherever you want
properStringArray.index(of: "🐶") // Get the index associated with an item in the array
properStringArray.contains("🐶") // Check to see if we have an item inside the array
properStringArray.remove(at: 8) // Remove the item at an index and move everything over by 1

print(properStringArray)

properStringArray.removeAll() // Empty the array
properStringArray.isEmpty // Check if the array is empty

print(properStringArray)

// As you can see, arrays have a lot of useful stuff!

let dictionary: [String: String] = ["Aardvark": "I'm the first value inside the dictionary"]

// Dictionaries are kind of like arrays where the index can be anything, not just an Int.

dictionary["Aardvark"]

var newDictionary: [Double: String] = [3.14: "I'm a piece of pi!"]

print(newDictionary[3.14]!)

// Values inside a dictionary are optional. 

newDictionary[12.00000001]

// If you try to use a key that doesn't exist yet, you get nil.

newDictionary[12.00000001] = "I exist now!"

// You add values to dictionaries by using square brackets.

if let thisExists = newDictionary[12.00000001] {
    print(thisExists)
} else {
    print("The value does not exist yet")
}

// MARK: - Important dictionary features

newDictionary.count // How many entries are in the dictionary
newDictionary.keys // Just the keys to the dictionary
newDictionary.values // Just the values in the dictionary

func display(dictionary: [Double: String]) {
    for (key, value) in dictionary {
        print("\(key): \(value)")
    }
}

display(dictionary: newDictionary)

// We've been using functions all along, but now we get to make new ones.

/*
 A function is a chunk of code that we pre-define so we can use it later.
 
 Functions can have a parameters, or named variables inside parentheses.
 We use parameters to tell the function what it should be doing something to.
*/

let doom: String = "☠️"

func buildMeAPyramid(of text: String) {
    for number in 1...10 {
        for printingSpree in 1...number {
            print(text, terminator: "")
        }
        
        print("")
    }
}

buildMeAPyramid(of: doom)

// We can give our parameters internal names we only use within the function, to make our code more explicit

func swap(this: Int, forThat that: Int, inside array: [Int]) -> [Int] {
    var swappedArray = [Int]()
    
    for number in array {
        if number == this {
            swappedArray.append(that)
        } else {
            swappedArray.append(number)
        }
    }
    
    return swappedArray
}

let freshNewArray = swap(this: 1, forThat: 0, inside: [1,1,1,1,1,0,0,1,1,1,1,1])

// Our functions can have multiple parameters. They can have return statements. Returns allow us to store the result of the function in a variable

func happyCatsOnly(_ array: [String]) -> Bool {
    for element in array {
        if element == "😺" || element == "😸" || element == "😹" || element == "😻" {
            continue
        } else {
            return false
        }
    }
    
    return true
}

happyCatsOnly(["😺", "😺", "😺"])

// If we don't want to have to write out the parameter name when we call the function, we can give it an underscore as the external name when we define it

func transformMyLetter(letter: String) -> String {
    let decoded = [
        "a": "b",
        "b": "c",
        "c": "d",
        "d": "e",
        "e": "f",
        "f": "g",
        "g": "h",
        "h": "i",
        "i": "j",
        "j": "k",
        "k": "l",
        "l": "m",
        "m": "n",
        "n": "o",
        "o": "p",
        "p": "q",
        "q": "r",
        "r": "s",
        "s": "t",
        "t": "u",
        "u": "v",
        "v": "w",
        "w": "x",
        "x": "y",
        "y": "z",
        "z": "a"
    ]
    
    return decoded[letter]!
}

// This very long function returns a String when we give it another String. A goes in, B comes out

let transformedLetter = transformMyLetter(letter: "a")

// We can use it to solve the decoding problem from Monday, because returning gives us a value we can use in other places

let codedMessage = "rdbqds"
var decodedMessage = ""

for character in codedMessage.characters {
    let stringified = String(character)
    
    decodedMessage += transformMyLetter(letter: stringified)
}

print(decodedMessage)

// Here, we use the returned values to build up a string called decodedMessage.

// Write a function that reverses the process, and encodes messages instead of decoding them

// Add a check to your function to make sure it only gets valid letters

// Rewrite your function so it takes in whole words and returns whole words

func dogsOnlyPlease(_ array: [String]) -> Bool {
    guard array.isEmpty == false else {
        print("There's nothing here!")
        return false
    }
    
    for element in array {
        if element != "🐶" {
            return false
        } else {
            continue
        }
    }
    
    return true
}

print("This array has only dogs in it: " + "\(dogsOnlyPlease(["🐶", "🐶", "🐶"]))")

// We often use guard statements inside our functions. This can ensure we only get valid input

func noDogsAllowed(_ array: [String]) -> Bool {
    for element in array {
        guard element != "🐶" else {
            return false
        }
    }
    
    return true
}

print("This array has no dogs in it: \(noDogsAllowed(["🐶", "🐶", "🐶"]))")

// Guard statements also make our code more concise. If the condition in the guard isn't met, we hit the else statement. If the condition is met, the guard lets us pass to the rest of our code.
