/*
 
Protocol notes:
 - Like a class, a protocol is a blueprint.  Unlike class, protocol does NOT build the object.  Coder has to build the object while conforming to the Protocol blueprint/contract.
 - properties are computed not assigned
 - if function modifies a value type (struc/enum) must use "mutating" keyword
 
*/



import UIKit

protocol Vehicle {
    var isRunning: Bool { get set }
    mutating func start()
    mutating func turnOff()
}

//Telling Swift that SportsCar will conform to Vehicle protocol
struct SportsCar: Vehicle {
    var isRunning: Bool = false
    mutating func start() {
        isRunning = true
        print("Vroom ...")
    }
    mutating func turnOff() {
        isRunning = false
        print("Good race")
    }
}

//Protocols can also be used with reference types (classes).  Just saying it conforms to the prototype

class Truck: Vehicle {
    var isRunning: Bool = false
    func start() {
        isRunning = true
        print("Big Truck is started")
    }
    func turnOff() {
        isRunning = false
        print("Big Truck is off")
    }
    
    //Extend the protocol by adding a function/property not in the protocol (OK to have more than protocol requires)
    func blowHorn() {
        print ("HONK!!!!....")
    }
}


var bmw = SportsCar()
var peterbuilt = Truck()
bmw.start()
peterbuilt.start()

bmw.turnOff()
peterbuilt.turnOff()

let vehicleArr: Array<Vehicle> = [bmw, peterbuilt]

for vehicle in vehicleArr {
    if let veh = vehicle as? Truck {
        veh.blowHorn()
    }
}
