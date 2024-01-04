x = 1
if (x > 10)
    println 'Hello'

// null, "", '' and [] get evaluated to false
list = []
if (list)
    println list
else
    println 'The list is empty'

// conditional expressions
println list ? list : 'The list is empty'

// elvis operator
println list ?: 'The list is empty'