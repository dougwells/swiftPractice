/*
 
Protocol notes:
 - Like a class, a protocol is a blueprint.  Unlike class, protocol does NOT build the object.  Coder has to build the object while conforming to the Protocol blueprint/contract.
 - properties are computed not assigned
 - if function modifies a value type (struc/enum) must use "mutating" keyword
 
*/



import UIKit

protocol Vehicle: CustomStringConvertible {
    var isRunning: Bool { get set }
    var make: String { get set }
    var model: String { get set }
    mutating func start()
    mutating func turnOff()
}

//Extension makes functions & computed properties available to objects that conform to the protocol w/o each object adding it individually.
extension Vehicle {
    var makeModel: String {return "\(make) \(model)"}
    
    mutating func start() {
        isRunning = true
        print("\(self.description). Vroom ...")
    }
    mutating func turnOff() {
        isRunning = false
        print("\(self.description).  Nice ride!")
    }
}

//Telling Swift that SportsCar will conform to Vehicle protocol
struct SportsCar: Vehicle, CustomStringConvertible {
    var isRunning: Bool = false
    var description: String { return self.makeModel }
    var make: String
    var model: String
    


    }

//Protocols can also be used with reference types (classes).  Just saying it conforms to the prototype

class Truck: Vehicle, CustomStringConvertible {
    var isRunning: Bool = false
    var make: String
    var model: String
    
    init(isRunning: Bool, make: String, model: String) {
        self.isRunning = isRunning
        self.make = make
        self.model = model
    }
    
        var description: String { return self.makeModel }
    
    //Extend the protocol by adding a function/property not in the protocol (OK to have more than protocol requires)
    func blowHorn() {
        print ("HONK!!!!....")
    }
}


var bmw = SportsCar(isRunning: true, make: "BMW", model: "328xi")
var peterbuilt = Truck(isRunning: true, make: "Peter", model: "Built")
bmw.start()
peterbuilt.start()

bmw.turnOff()
peterbuilt.turnOff()

let vehicleArr: Array<Vehicle> = [bmw, peterbuilt]

for vehicle in vehicleArr {
    print (vehicle.description)
    if let veh = vehicle as? Truck {
        veh.blowHorn()
    }
}

//protocol extensions work similar to type extensions (see below). Once add an extension, all types get that added functionality

extension Double {
    var dollarString: String {
        return String(format: "$%.02f", self)
    }
}

var tax = 100 * 0.0825
tax.dollarString
