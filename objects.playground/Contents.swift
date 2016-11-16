/* Classes and Objects
    - Classes: Blueprints for creating objects
*/

//Rob Percival
class FastCar {
//      var topSpeed: Int = 155
        var topSpeed: Int
    
    //how to pass param into a class (use initialization)
    init(inputTopSpeed: Int) {
        self.topSpeed = inputTopSpeed
    }
    
    func getTopSpeed() ->Int {
        return self.topSpeed
    }
}

var myCar = FastCar(inputTopSpeed: 222)
print(myCar.topSpeed)
myCar.getTopSpeed()


//Inheritance
class Car {
    let numWheels = 4
}

//FamilyCar inherits from Car
class FamilyCar: Car {
    let numDoors = 5
}
let myFamilyCar = FamilyCar()
print(myFamilyCar.numDoors)
print(myFamilyCar.numWheels)

//minVan inherits from FamilyCar AND its predecessors
class miniVan: FamilyCar {
    let funFactor = "low"
}
let myMiniVan = miniVan()
print(myMiniVan.numWheels)

//Mark Price Lecture on Objects

class Vehicle {
    var tires = 4
    var headLights = 2
    var horsePower = 450
    var model = ""
    
    func accelerate() {
        print("Zoom!")
    }
    
    func brake() {
        //code
    }
    func printModel(){
        print(model)
    }
}

let dougCar = Vehicle()
dougCar.accelerate()

//Inheritance.  Creating a class from a class
//Inherits parent's properties and methods
//Can override a method or property if desired

class ElectricCar: Vehicle {
    override func accelerate() {
        print("We're Off !!!")
    }
}

//Once you instantiate a class, it is an object
//Class is a blueprint for instantiating objects

var myTesla = ElectricCar()
myTesla.accelerate()
myTesla.model = "Model 3"
print(myTesla.model)

var myBMW = Vehicle()
myBMW.model = "325 Xi"
myBMW.printModel()


