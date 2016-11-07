/* Classes and Objects
    - Classes: Blueprints for creating objects
*/

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

