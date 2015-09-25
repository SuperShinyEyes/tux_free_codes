//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let age = 25
let intro = str + String(age)

let label = "The width is "
let width = 94
let widthLabel = label + String(width)
let widthLabelTwo = "The width is \(width)"


let optionalInt: Int? = 9
// You will get an error here if optionalInt is nil
let actualInt: Int = optionalInt!

var sevenDigit = "7"
var possibleInt = Int(sevenDigit)
print(possibleInt)
var sevenAlphabet = "seven"
possibleInt = Int(sevenAlphabet)
print(possibleInt)

// Creates an empty array.
var emptyArray = [String]()


let number = 235
if number < 10 {
    print("The number is small")
} else if number > 100 {
    print("The number is pretty big")
} else {
    print("The number is between 10 and 100")
}


let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)


var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
print(greeting)

var optionalHello: String? = "Hello"
if let hello = optionalHello where hello.hasPrefix("H"), let name = optionalName {
    greeting = "\(hello), \(name)"
}



let vegetable = "red pepper"
switch vegetable {
case "celery":
    let vegetableComment = "Add some raisins and make ants on a log."
case "cucumber", "watercress":
    let vegetableComment = "That would make a good tea sandwich."
case let x where x.hasSuffix("pepper"):
    let vegetableComment = "Is it a spicy \(x)?"
default:
    let vegetableComment = "Everything tastes good in soup."
}



var firstForLoop = 0
for i in 1..<10 {
    firstForLoop += i
}
print(firstForLoop)



var secondForLoop = 0
// Wildcard
for _ in 0...4 {
    secondForLoop += 1
}
print(secondForLoop)




func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}

print(greet("Seyoung", day:"Tuesday"))


var array = ["apple", "banana", "dragonfruit"]
array.insert("cherry", atIndex: 2)
print(array)
array.append(String(123))
array.count
array.contains("apple")
array.appendContentsOf(["sdf"])




class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

let triangle = Shape()
triangle.numberOfSides = 3
print(triangle.simpleDescription())


class NamedShape {
    var numberOfSides = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides"
    }
}

let square = NamedShape(name: "square")
square.simpleDescription()

// Inheritance
class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
}
let square2 = Square(sideLength: 4.4, name:"tommy")
square2.area()
square2.simpleDescription()

class Circle: NamedShape {
    var radius: Double
    
    // Failable initializer
    init?(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
        if radius <= 0 {
            return nil
        }
    }
    
    override func simpleDescription() -> String {
        return "A circle with a radius of \(radius)."
    }
}

let successfulCircle = Circle(radius: 5.2, name: "John")
let failedCircle = Circle(radius: -12, name: "Kay")
failedCircle?.simpleDescription()


class Triangle: NamedShape {
    init(sideLength: Double, name: String){
        super.init(name: name)
        numberOfSides = 3
    }
}

// Downcast
let shapesArray = [Triangle(sideLength: 1.5, name: "triangle!"), Triangle(sideLength: 4.2, name: "t2"), Square(sideLength: 3.2, name: "s1"), Square(sideLength: 2.7, name: "s2")]
var squares = 0
var triangles = 0

for shape in shapesArray {
    if let square = shape as? Square {
        squares++
    } else if let triangle = shape as? Triangle {
        triangles++
    }
}

print("\(squares) squares and \(triangles) triangles.")


// Enumerations & rawValue
enum Rank: Int {
    case Ace = 1
    // rest of the raw values are assigned in order
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

let ace = Rank.Ace
ace.simpleDescription()
let two = Rank.Two
two.simpleDescription()
let aceRawValue = ace.rawValue

if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
}


// Enumeration with no raw value
enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
}
let hearts = Suit.Hearts


// Struct
/* differences between structures and classes is that structures are always copied when they are passed around in your code, but classes are passed by reference. Structures are great for defining lightweight data types that don’t need to have capabilities like inheritance and type casting.  */
struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}

let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()


// Struct vs. Class
// http://stackoverflow.com/questions/24217586/structure-vs-class-in-swift-language
class SomeClass {
    var name: String
    init(name: String) {
        self.name = name
    }
}

var aClass = SomeClass(name: "Bob")
var bClass = aClass // aClass and bClass now reference the same instance!
bClass.name = "Sue"

print(aClass.name) // "Sue"
print(bClass.name) // "Sue"


struct SomeStruct {
    var name: String
    init(name: String) {
        self.name = name
    }
}

var aStruct = SomeStruct(name: "Bob")
var bStruct = aStruct // aStruct and bStruct are two structs with the same value!
bStruct.name = "Sue"

print(aStruct.name) // "Bob"
print(bStruct.name) // "Sue"


// Protocols
protocol ExampleProtocol {
    /* The { get } following the simpleDescription property indicates it is read-only, meaning that the value of the property can be viewed, but never changed. */
    var simpleDescription: String { get }
    func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
}
var a = SimpleClass()
a.adjust()
a.simpleDescription
a.anotherProperty



class SimpleClass2: ExampleProtocol {
    var simpleDescription: String = "Another very simple class."
    func adjust() {
        simpleDescription += "  Adjusted."
    }
}

var protocolArray: [ExampleProtocol] = [SimpleClass(), SimpleClass(), SimpleClass2()]
for instance in protocolArray {
    instance.adjust()
}
protocolArray

