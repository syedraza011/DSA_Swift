//: [Previous](@previous)

import Foundation

public class LazyMatcher {
    public var target: String = ""
    public var functions: Array<() -> Bool?> = []

    public func addPartialMatch(partialMatch: String) -> Void {
        let closure = { [weak self] in
            return self?.target.contains(partialMatch)
        }

        self.functions.append(closure)
    }

    public func anyMatch() -> Bool {
        for fn in functions {
            let result = fn()
            if let unwrapped = result {
                if unwrapped {
                    return true
                }
            }
        }
        return false
    }
}
