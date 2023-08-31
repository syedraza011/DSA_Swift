//: [Previous](@previous)
//modify the code so that when a reptile egg is hatched, it can only become a reptile of the same type that laid the egg.
//Additionally, if an attempt is made to hatch an egg that has already hatched, an error should be thrown.

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
