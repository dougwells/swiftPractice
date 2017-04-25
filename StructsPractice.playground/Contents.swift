//Struct Practice

struct TodoItem {
    var title: String
    var priority: Int
    let owner: String
}

var todo1 = TodoItem(title: "Buy Yogurt", priority: 5, owner: "DW")

print(todo1.title)
todo1.title = "Buy Milk"
print(todo1.title)

let todo2 = TodoItem(title: "Buy OneWheel", priority: 10, owner: "DW")


//In Swift the self keyword is optional. You only are forced to use it in situations as shown below where a parameter name and a member name are the same.

//There's a special rule for methods that make changes to properties w/in structs. Must use keyword "mutating"

struct MoreTodos {
    var title: String
    var priority: Int
    let owner: String
    
    mutating func changeTitle(to newTitle: String) {
        self.title = newTitle
    }
}

var todo3 = MoreTodos(title: "Go surf", priority: 7, owner: "Doug")

print(todo3.title)
todo3.changeTitle(to: "Let's go surfing now")
print(todo3.title)






