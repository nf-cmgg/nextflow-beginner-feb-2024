// Fix these string interpolations

name = "Bob"
race = "snail"

println 'Hello, I am ${name} the ${race}!' // Hello, I am Bob the snail!

x = "I am $name and I love backslashes and the letter 't', see: \t\t\t" // I am Bob and I love backslashes and the letter 't', see \t\t\t
println x

println "Use the string interpolation $name to get $name" // Use the string interpolation $name to get Bob