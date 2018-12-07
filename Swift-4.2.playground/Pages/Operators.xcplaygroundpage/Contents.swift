//: [Previous](@previous)

import Foundation

let array1 = [ "hello", "you" ]
let array2 = [ "savage", "world"]

func +<E: Any>(lhs: Array<E>, rhs: Array<E>) -> Array<E> {
    var result = Array<E>()
    lhs.forEach { result.append($0) }
    rhs.forEach { result.append($0) }
    return result
}

let sentence = (array1 + array2).joined(separator: " ")

print(sentence)

//: [Next](@next)
