//: Playground - noun: a place where people can play

var mutableNumbers = [3, 1, 2]
mutableNumbers.append(4)
let numbers = mutableNumbers
mutableNumbers.append(5)

// Sort the numbers
numbers.sort()                  // Return a new object
mutableNumbers.sortInPlace()    // Sort the object

// Sort the numbers in descending order
numbers.sort { (left, right) -> Bool in
    left > right                // return is optional
}

numbers.sort { (left, right) in
    left > right                // return is optional
}

let sortedNumbers = numbers.sort { $0 > $1 }
sortedNumbers

numbers.sort(>)

// Optional
let number = 5
number.successor()

let possibleNumber = "123"
let optionalNumber = Int(possibleNumber)
optionalNumber?.successor()     // if possible return successor, else 'nil'
