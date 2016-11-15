
class Car {
    var model: String?
}

var vehicle: Car?

vehicle = Car()                 //? we do not know if has a value
vehicle?.model = "Model 3"      //? because vehicle is an optional

//Need to nest 'if let' to make sure v.model exists
if let v = vehicle {
    if let m = v.model {
        print(m)
    }
}

//Better way ...
if let v = vehicle, let m = v.model {
    print(m)
}

//Also works ...
print(vehicle?.model)   //says "only print if vehicle has a value"

//if let where  (use "," instead of "where")
var cars: [Car]?
cars = [Car]()

if let carArr = cars, carArr.count > 0 {
    print("Not nil and carArr not an empty array")
} else {
    print("Either nil or carArr is an empty array")
}

//Implicitly unwraped option
//var age: int!  - ! gets rid of Swift warnings (BE CAREFUL)
//Mark suggests setting value to zero instead, var age = 0

class Person {
    var age: Int!
    func addAge(ageParam:Int){
        self.age = ageParam
    }
}
var jack = Person()
jack.addAge(ageParam: 21)
print(jack.age)

//Another solution is to use a "getter" or "computed value"
//Called a "getter" as it gets the value for a variable
// _age - just another variable name.  Nothing special w/_

class Dog {
    private var _age:Int!   //private means only Dog can access it
    var age: Int {          //strategy works w/o "private" as well
        if _age == nil {
            _age = 8
        }
        return _age
    }
}

var crystal = Dog()
print(crystal.age)
//print(crystal._age)    error: _age is private (only Dog can access)

// Using neither a ? or !
class Cat {
    var species: String
    init(someSpecies: String) {
        self.species = someSpecies
    }
}
var mrsWhiskers = Cat(someSpecies: "Persian")
print(mrsWhiskers.species)
