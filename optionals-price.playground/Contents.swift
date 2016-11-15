
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

