

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

func addAny <T: Strideable>(num: T) -> T {
    return num + 1
}

addAny(num: 15)
addAny(num: 15.0)





