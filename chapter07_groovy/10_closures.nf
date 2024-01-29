// A closure is a block of code that can be passed as an argument to a function
square = { it * it }

// As a function itself
assert square.call(5) == 25
assert square(9) == 81

// As an argument to a function
x = [1, 2, 3, 4].collect(square)
println x

// Custom named parameters
square = { num -> num * num }

// Multiple parameters
printMap = { a, b -> println "$a with value $b" }
values = ["Yue": "Wu", "Mark": "Williams", "Sudha": "Kumari"]
values.each(printMap)

// Anonymous closures
result = 0 
values = ["China": 1, "India": 2, "USA": 3] 
values.keySet().each { result += values[it] } 
println result

// Time for all exercises
