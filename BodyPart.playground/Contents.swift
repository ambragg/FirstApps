//: Playground - noun: a place where people can play

import UIKit

//  Create a playground
//    Make a Class BodyPart
//    Make 20 Classes that are Body Parts
//    Each class will have 3 properties (eyeColor, teeth, Int etc)
//    Each class will have 3 methods (chew(), rollAnkle(), etc.)
//    At least 15 methods need to be called from another BodyPart
//    At least 10 properties need to be other BodyParts


// These are Jo's notes



class BodyPart {
    
    var isDamaged = false
}



//var pointerFinger = Finger ()
//
//pointerFinger.boneCount = 3
//pointerFinger.isDamaged = true
//
//var leftThumb = Thumb ()
//
//leftThumb.isDamaged = false



class Arm : BodyPart {
    
    var hand: Hand!
    
    override init() {
        
        hand = Hand()
        
    }
    
}


class Hand : BodyPart {
    
    var fingers: [Finger] = []

    override init() {
        
        fingers.append(Finger())
        fingers.append(Finger())
        fingers.append(Finger())
        fingers.append(Finger())
        fingers.append(Thumb())
    }
    
    func closeHand() {
        
        for finger in fingers {
            
            finger.fingercurl()
            
            
            
        }
    }
}



class Finger : BodyPart {
    
    var boneCount: Int!
    
    func fingerCurl() {
        
        println("Curling \(self)")
        
        
    }
}



class Thumb : Finger {
    
    var isDoubleJointed = false
}

var leftArm = Arm()

leftArm.hand.closeHand()






// End Jo's notes

//class BodyPart {
//    
//}
//
//
//class leg {
//    
//    var legColor: UIColor!
//    var legHair: Bool = false
//    var leginjury: Bool = false
//    
//    func useFootToKick() {
//        
//    }
//    
//    func growLegHair() {
//    
//    }
//    
//    func breakLeg {
//        
//    }
//}
//
//
//
//class foot {
//    
//    var numberOfToes = 5
//    var footColor: UIColor!
//    var bunion: Bool = false
//    
//    func useLegToKick() {
//        
//    }
//    
//    
//    
//    
//}
//
//class toes {
//    
//}
//
//
//class shoulder {
//    
//}
//
//
//class arm {
//    
//}
//
//
//class hand {
//    
//    var numberOfFingers = 5
//    var handColor: UIColor!
//    var closed: Bool = false
//    
//    
//}
//
//
//class wrist {
//    
//}
//
//
//class thumb {
//    
//}
//
//
//class  indexFinger {
//    
//}
//
//
//class middleFinger {
//    
//}
//
//
//class ringFinger {
//    
//}
//
//
//class pinkyFinger {
//    
//}
//
//
//
//
//class eyes {
//    
//    var eyeColor: UIColor!
//    var blind: Bool = false
//    var missingEye: Bool = false
//    
//    func rollEyes() {
//        
//    }
//    
//    func turnHeadToLookBehindYou() {
//        
//    }
//    
//    func blink() {
//        
//    }
//    
//}
//
//
//
//class mouth {
//    
//    var lipColor: UIColor!
//    var teethNumber: Int!
//    var mouthOpen: Bool = false
//    
//    func puckerLips() {
//        
//    }
//    
//    func bite() {
//        
//    }
//    
//    func Blow() {
//        
//    }
//}
//
//
//
//class ankle {
//    
//}
//
//
//
//class head {
//    
//}
//
//
//class nose {
//    
//}
//
//
//class ear {
//    
//}
//
//
//class neck {
//    
//}
//
//
//class torso {
//    
//}




