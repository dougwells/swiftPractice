/* Classes & Inheritance: https://www.makeschool.com/online-courses/tutorials/learn-swift-by-example-pt-3-classes-initialization
 
*/

class User {
    
    let name: String
    let location: String
    let age: Int
    
    func greeting() {print("I'm \(name) from \(location)")}
    
    init(name: String, location: String, age: Int) {
        self.name = name
        self.location = location
        self.age = age
    }
}

let linda = User(name: "Linda", location: "Park City", age: 53)

linda.greeting()

/*
 
 Below, the call to the super initializer is the last statement. In Swift a subclass needs to set up all of its properties before calling the super initializer.
 
 */
 
 class Dragon: User {
 let wingSpan: Int
 
 init(name: String, location: String, age: Int, wingSpan: Int) {
 self.wingSpan = wingSpan
    super.init(name: name, location: location, age: age)
    
    //In Swift a subclass needs to set up all of its properties before calling the super initializer.

 
 }
 
 
 override func greeting() {
 print("Argh ... me name is \(name) and my wings are \(wingSpan) feet long")
 }
 }
 
 let puff = Dragon(name: "Puff", location: "Middle Earth", age: 350, wingSpan: 100)
 
 puff.greeting()






