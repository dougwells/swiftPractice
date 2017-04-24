// Pass by value.  Pass by Referenence

//pass by value.  Cannot modify a "let"
let beckyAge = 23
let tomAge = 25

func addOneYear(to age:Int) {
    age + 1  // age += 1 error since tomAge is a let
}

addOneYear(to: tomAge)

print (tomAge)

/*  pass by reference.  
 
Objects and classes.  When you use the let keyword to declare an immutable variable of a reference type (a class) then only the reference itself becomes immutable (Cannot however assign a new class to this variable). This means that the variable will not be able to reference a different object, but it is possible to change **values** of the object that's currently referenced.
 */

class User {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

class Vehicle {
    var make: String
    var model: String
    var speed: Int
    func brake () {
        speed -= 10
    }
    init(make: String, model: String, speed: Int) {
        self.make = make
        self.model = model
        self.speed = speed
    }
}

//Notice this is a "let".  Reference to Vehicle is immutable (cannot assign a new object to this ford150. IE, could not say f150= User(name: Doug) but properties can still be changed

let doug = User(name: "Doug", age: 52)

let ford150 = Vehicle(make: "Ford", model: "F150", speed: 75)

let hondaCivic = Vehicle(make: "Honda", model: "Civic", speed: 65)

print (ford150.model)

ford150.model = "Focus"
print(ford150.model)


// Since ford150 is a let/immutable, cannot change the object/class it refers to BUT, as we saw above, we can change its properties.  Only the OBJECT IT REFERENCES is immutable

//ford150 = User(name: "Doug", age: 52)

