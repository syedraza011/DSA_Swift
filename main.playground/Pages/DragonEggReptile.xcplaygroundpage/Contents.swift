//: [Previous](@previous)
//modify the code so that when a reptile egg is hatched, it can only become a reptile of the same type that laid the egg.
//Additionally, if an attempt is made to hatch an egg that has already hatched, an error should be thrown.

```swift
public protocol Reptile {
    func lay() -> ReptileEgg
}

public class FireDragon: Reptile {
    public func lay() -> ReptileEgg {
        return ReptileEgg(createReptile: FireDragon.init)
    }
}

public class ReptileEgg {
    private var hatched: Bool = false
    private let createReptile: () -> Reptile
    
    public init(createReptile: @escaping () -> Reptile) {
        self.createReptile = createReptile
    }
    
    public func hatch() throws -> Reptile {
        if hatched {
            throw AlreadyHatchedError.alreadyHatched
        }
        
        hatched = true
        return createReptile()
    }
}

enum AlreadyHatchedError: Error {
    case alreadyHatched
}

let fireDragon = FireDragon()
let egg = fireDragon.lay()

do {
    let hatchedReptile = try egg.hatch()
    print("Hatched:", hatchedReptile)
} catch {
    print("Error:", error)
}
```

In this code, the `FireDragon` class now conforms to the `Reptile` protocol and provides an implementation for the `lay` method. The `ReptileEgg` class keeps track of whether the egg has been hatched using the `hatched` flag. The `createReptile` closure is used to create a new instance of the same reptile type that laid the egg.

When you attempt to hatch an egg, it checks whether it has already been hatched. If it has, it throws an `AlreadyHatchedError`. If not, it sets the `hatched` flag to true and uses the `createReptile` closure to create a new instance of the corresponding reptile type.

Finally, the code demonstrates how to lay an egg using a `FireDragon` instance, hatch the egg, and handle potential errors.
import Foundation

public protocol Reptile {
    func lay() -> ReptileEgg
}

public class FireDragon: Reptile {
    public func lay() -> ReptileEgg {
        return ReptileEgg(createReptile: FireDragon.init)
    }
}

public class ReptileEgg {
    private var hatched: Bool = false
    private let createReptile: () -> Reptile
    
    public init(createReptile: @escaping () -> Reptile) {
        self.createReptile = createReptile
    }
    
    public func hatch() throws -> Reptile {
        if hatched {
            throw AlreadyHatchedError.alreadyHatched
        }
        
        hatched = true
        return createReptile()
    }
}

enum AlreadyHatchedError: Error {
    case alreadyHatched
}

let fireDragon = FireDragon()
let egg = fireDragon.lay()

do {
    let hatchedReptile = try egg.hatch()
    print("Hatched:", hatchedReptile)
} catch {
    print("Error:", error)
}

