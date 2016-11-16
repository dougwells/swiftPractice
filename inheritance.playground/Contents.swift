//Inheritance

class Vehicle {
    var tires = 4
    var make: String?
    var model: String?
    var currentSpeed = 0.0
    
    init(){     //EVERY CLASS HAS AN "initialization" FUNCTION
        print("I am the parent")
    }
    
    func drive(speedIncrease:Double){
        currentSpeed += 2*speedIncrease
    }
    
    func brake(){
        currentSpeed = 0
    }
}

class SportsCar: Vehicle {
    override init() {       //Overrides PARENT's init function
        super.init()        //"super" calls parent's init function
        print("I am the child")
        make = "BMW"
        model = "3 Series"
    }
}

let dougCar = SportsCar()   //SportsCar's init fn runs automatically
print(dougCar.make)         //Optional("BMW")





