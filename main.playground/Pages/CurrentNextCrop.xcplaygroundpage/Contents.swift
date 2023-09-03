//: [Previous](@previous)

import Foundation

public enum CropError: Error {
    case cropNotPresent
}

public class CropRotation {
    private var crops: [String]

    public init(initialCrop: String) {
        crops = [initialCrop]
    }

    public func addNext(currentCrop: String, nextCrop: String) {
        if crops.contains(currentCrop) {
            crops.append(nextCrop)
        }
    }

    public func getNext(currentCrop: String) throws -> String {
        guard let currentIndex = crops.firstIndex(of: currentCrop) else {
            throw CropError.cropNotPresent
        }

        if currentIndex + 1 < crops.count {
            return crops[currentIndex + 1]
        } else {
            throw CropError.cropNotPresent
        }
    }
}
// checking for the product
// make name optional & make sure quantity is at least 1 if it is ever less then 1 then set value to 1

public class Product {
    public var name: String? = ""
    public var quantity: Int

    public init(quantity: Int) {
        // Ensure that quantity is always at least 1
        self.quantity = max(quantity, 1)
    }
}

let prod = Product(quantity: 0)
print(prod.quantity) // Output: 1

