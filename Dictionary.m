// Dictionaries

/*  COLLECTIONS TYPES:  ** Collections are mutable, therefore can's use constants
    1. Array  
    2. Dictionary *** stores associations btw keys of some types and values of some type
    				  in a collection with no defined ordering, you look up values by
    				  their identifier or key (like a real-life dictionary)
    3. Set
*/

// SYNTAX: Dictionary <key, value>

// the key MUST BE HASHABLE (searchable) - meaning that it has to be (Bool, Int, Double, String)

// ALL BASIC TYPES ARE HASHABLE



// DICTIONARY LITERALS  - key value pairs are separated by colon :

// long-hand:

                      //<KeyType, ValueType>
var airports: Dictionary <String, String> = ["SEA": "Seattle", "HON": "Honolulu"]

airports = ["TYO":"Tokyo", "PDX": "Portland"]

//short-hand: 

var nameByParkingSpace: [Int : String]

nameByParkingSpace = [13: "Allison", 15: "Mike"]



//ACCESSING & MODIFYING

// count

airports.count

// isEmpty

airports.isEmpty // <- this is another way to check if a dictionary is empty

// adding new item with subscripting

airports["LHR"] = "London"

// to change a value can use updateValue(_:forKey)

airports.updateValue("Dublin", forKey: "DUB") //<- returns an optional, use subscripting to retrieve value

if let airportName = airports["DUB"] {
    print("\(airportName)")
} else {
    print("No name")
}

// REMOVE KEY, VALUE PAIR 

// by subscripting and setting the value to nil

airports["APL"] = "Apple Intn"

airports["APL"] = nil

airports["APL"]

// by using removeValueForKey(_:)
airports.removeValueForKey("DUB")



// INTERATING OVER A DICTIONARY

// for-in

for (airportCode, airportName) in airports {
    print("\(airportCode) : \(airportName)")
}

// interate by accessing key & value properties

for airportCode in airports.keys {
    print("Airport code is \(airportCode)")
}

for airportName in airports.values {
    print("Airport name is \(airportName)")
}

// To use dict keys or values with in an API that takes an array instance, initialize a new array with keys or values


let airportCodes = [String](airports.keys)
let airportNames = [String](airports.values)

// Using optionals to check the existence of a value in a dictionary 

let users = ["bSmith":"Bob Smith", "sJobs": "Steve Jobs"]

let steve : String? = users["sJobs"]

if let user = steve { // if steve is not nil
    print("\(user) is in the dictionary")
}

























































