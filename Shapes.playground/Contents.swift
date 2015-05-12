//: Playground - noun: a place where people can play

import UIKit

enum ShapeType : Int {
    
    case Triangle = 3
    case Rectangle = 4
    case Pentagon = 5
    case Hexagon = 6
    case Septagon = 7
    case Octogon = 8

}

class Shape {
    
    var sides: Int!
    
    var fillColor: UIColor?
    var strokeColor: UIColor?
    
    init(type: ShapeType) {
   
      sides = type.rawValue
    
    }

    func shapeShift()  {
        
    }
    

}


var square1 = Shape(type: .Rectangle)

var squarepixels = 4 * square1.sides



square1.fillColor = UIColor.blueColor()

var sidecount = square1.sides



var triangle1 = Shape(type: .Triangle)

var trianglepixels = 4 * triangle1.sides


class Mouth {
    var lipsColor: UIColor!
    var teethcount: Int!
    
    var badBreath: Bool = false
    var fullOfFood: Bool = false
    
    init(teeth: Int, lips: UIColor) {
        
    }
    
    func chewFood(food: AnyObject) {
        // chew 3 times then swallow
    }
    
    func yawn() {
        
    }
}


var num1: Int?
var num2: Int?

num1 = 4

num1!

num2!


if num1 != nil { num1 }
if num2 != nil { num2 }


//  Create a playground
//    Make a Class BodyPart
//    Make 20 Classes that are Body Parts
//    Each class will have 3 properties (eyeColor, teeth, Int etc)
//    Each class will have 3 methods (chew(), rollAnkle(), etc.)
//    At least 15 methods need to be called from another BodyPart
//    At least 10 properties need to be other BodyParts

class Face  {
    
    var mounth: Mouth!
    
}


class BodyPart {
    
}




