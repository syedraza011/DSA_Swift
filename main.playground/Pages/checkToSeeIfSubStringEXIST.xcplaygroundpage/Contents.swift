//: [Previous](@previous)

import Foundation

public func matchKeyCombo(sequence: String) -> Bool {
    let target1 = "QEE"
    let target2 = "ZCC"
    
    if sequence.contains(target1) && sequence.contains(target2) {
        return true
    } else {
        return false
    }
}

print(SpecialActions.matchKeyCombo(sequence: "QEEAZCC"))
