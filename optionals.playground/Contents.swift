/* Optional Chaning & Force Unwrapping
    - putting ? after type makes it "optional".  Might be there. Might not
    - can put ! after variable to tell Swift to force unwrap the variable
    - ? Optional
    - ! Force unwrapping.  If no value, error
        fatal error: unexpectedly found nil while unwrapping an Optional value
*/

var token : Int? = 5
print(token)        //  Optional(5)
print(token!)       //  5. Bad Code. How know token has a value?

//OK Code (but "Optional Chaining", below, is better
if token != nil {   //  5. OK Code.  Now you know token is not 'nil'
    print(token!)
}

//Best Code.  Called Optional Chaining
//"if let" is best way to handle optionals
if let yesToken = token {
    print(yesToken)         //5. Better Code.  Only runs if token != nil
    print(token)            //Optional(5). Original var (token) stays optional
}

class Building {
    var foundation = true
    var numExtWalls = 4
}

class Residential {
    var building = Building()
    var bedrooms = true
}

let pcHouse = Residential()
print(pcHouse.building.foundation, pcHouse.bedrooms)