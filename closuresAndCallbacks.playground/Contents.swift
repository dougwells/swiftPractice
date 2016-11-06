//Normal function
func greeting(name: String) -> String {
    return "Hello " + name
}
print(greeting(name: "Doug"))

/* Convert to closure
 1) remove func and the name of the function
 2) Copy param and return type & move into curly braces
 3) add keyword "in"
 
  { (name: String) -> String in
 return "Hello " + name
 }
 
*/


