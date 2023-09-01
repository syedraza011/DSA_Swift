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

