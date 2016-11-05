//Dictionary (key:value pairs)
//We set the index

    //Creating a Dictionary
    var myDictionary = [Int:String]()
    myDictionary[5] = "Octopus"
    var planets: [String:String] = ["One":"Mercury","Two":"Venus","Three":"Earth", "Nine":"Pluto"]

    //Methods
    planets.count
    planets.isEmpty

    // For In
    for (key, planet) in planets {
        print("\(key): \(planet)")
    }


