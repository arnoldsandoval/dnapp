

// Playground - noun: a place where people can play

import UIKit


let canvas = UIView(frame: CGRectMake(0, 0, 200, 200))
canvas.backgroundColor = UIColor(red: 0.54, green: 0.43, blue: 0.96, alpha: 1)

let title = UILabel(frame: CGRectMake(0,0,200,50))
    title.backgroundColor = UIColor(red:0.54, green: 0.43, blue: 0.96, alpha: 1)
    title.textColor = UIColor.whiteColor()
    title.text = "Arnold is cool"
    title.textAlignment = NSTextAlignment.Center
    title.font = UIFont(name: "Avenir Next", size: 24)

canvas.addSubview(title)

var button = UIButton(frame: CGRectMake(0, 50, 200, 50))
    button.setTitle("Button Title", forState: UIControlState.Normal)

canvas.addSubview(button)

// Constants and Vars

let name: String = "Arnie"
var age: Int = 27
    age = age + 1

// Value Types
let label: String = "the width is "
let width: Int = 100
let widthLabel: String = label + String(width)

// Arrays

var colors = ["red", "green", "blue", "purple"]
    colors[3]
    colors.append("orange")
    colors.removeAtIndex(0)

colors

// Control Flow

if age > 30 {
    print("You're old lol")
} else{
    print("looking good young man")
}

age > 30 ? print("Eres un viejo jaja") : print("te ves bien chavo")

switch age {
    case 30...100: "You're old"
    case 18...29: "You're young"
    case 0...17: "You've got your whole life ahead of you"
    default: "What's your age?"
}

for color in colors{
    print("color is \(color)")
}

// Functions!
func pointToRetina(point: Int) -> Int {
    return point * 2
}

func add(value1: Int, value2: Int) -> Int{
    return value1 + value2
}

pointToRetina(5)

add(1000,value2: 10)



struct UserStruct {
    var name: String
    var age: Int
    var job: String
    
    init(name: String, age: Int, job: String) {
        self.name = name
        self.age = age
        self.job = job
    }
    
}


var userA = UserStruct(name: "Arnold", age: 28, job: "Developer")
var userB = userA

userB.name = "Arnie"


userA.name
userB.name

// Optionals (new to Swift)

var answer: String! // ? at end means nil value is OK. ! at end means you will have a value present.

UILabel().text = answer


if let sureAnswer = answer { //Check to see that sure answer has a value
    UILabel().text = sureAnswer
}

UILabel().text = answer ?? ""