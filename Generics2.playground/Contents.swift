

import Foundation

//Generics - allows flexibility on the Types used for parameters in a function

func addInt(num: Int) -> Int {
    return num + 1
}

addInt(num: 15)  // but couldn't use addInt w/Floats

func addFloat(num: Float) -> Float {
    return num + 1.0
}

addFloat(num: 15.0)

func addAny <T: Strideable>(num: T) -> T {  //conforms to Strideable protocol
    return num + 1
}

addAny(num: 15)
addAny(num: 15.0)

func intMultiply (lhs: Int, rhs: Int) -> Int {
    return lhs*rhs
}

intMultiply(lhs: 5, rhs: 3)

func doubleMultiply(lhs: Double, rhs: Double) -> Double {
    return lhs*rhs
}

doubleMultiply(lhs: 15.0, rhs: 3.0)

protocol Numeric {
    static func * (lhs: Self, rhs: Self) -> Self
}

extension Int: Numeric {}
extension Double: Numeric {}

func genericMultiply <T: Numeric>(lhs: T, rhs: T) -> T {
    return lhs*rhs
}

genericMultiply(lhs: 3, rhs: 5)
genericMultiply(lhs: 3.0, rhs: 5.0)





