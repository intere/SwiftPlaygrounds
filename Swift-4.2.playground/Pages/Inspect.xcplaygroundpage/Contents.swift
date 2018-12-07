//: [Previous](@previous)

import Foundation

// Implementation Code

extension Sequence {
    public func inspect(
        _ body: (Element) throws -> Void
        ) rethrows  -> Self {
        for element in self {
            try body(element)
        }
        return self
    }
}

/// Takes the left and right arrays and converts them into a hash
func zip(_ lhs: Array<AnyHashable>, _ rhs: Array<Any>) -> [AnyHashable: Any] {
    let count = min(lhs.count, rhs.count)
    var result = [AnyHashable: Any]()
    for i in 0..<count {
        result[lhs[i]] = rhs[i]
    }
    return result
}

// Demonstration Code

let ingredients = [ "🍅", "🍃", "🍕", "🍔", "🍌", "🥩", "🍍" ]
let isVegetarian = [ true, true, false, false, true, false, true ]

let salad = zip(ingredients, isVegetarian).filter { ingredient, vegetarian in
        vegetarian
    }.map { ingredient, vegetarian in
        ingredient
    }.inspect { ingredient in
        print("Vegetarian ingredient: \(ingredient)")
    }.joined(separator: ", ")

print("Your vegetarian salad: \(salad)")

//: [Next](@next)
