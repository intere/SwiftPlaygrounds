//: [Previous](@previous)

import Foundation

var array = Array<Int>()
array.append(5)

//let cast = ["Vivien", "Marlon", "Kim", "Karl"]
//let lowercaseNames = cast.map { $0.lowercased() }
//// 'lowercaseNames' == ["vivien", "marlon", "kim", "karl"]
//let letterCounts = cast.map { $0.count }
//// 'letterCounts' == [6, 6, 3, 4]
//
//type(of: cast)
//type(of: lowercaseNames)
//type(of: letterCounts)

type(of: array)
type(of: array.map { $0 })

array.map({ $0 })

//: [Next](@next)
