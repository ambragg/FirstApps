//: Playground - noun: a place where people can play

import UIKit



extension Array {
    
    var middle: T {
        
        let even = count % 2 == 0
        
        let middleIndex = even ? count / 2 - 1 : count / 2
        
        return self[middleIndex]
        
    }
    
}

var ages = [12,24,53,15,9,27,32]

var friends = ["Jim","Bob","Sally"]

ages.last


ages.first

ages.count

ages.middle

friends.middle


protocol Baseball {
    
    var threadCount: Int { get set }
    
    func caughtInOutfield()
    
    
}

class Ball: Baseball {
    
    var threadCount = 4
    
    func caughtInOutfield() {

    }
    
}
