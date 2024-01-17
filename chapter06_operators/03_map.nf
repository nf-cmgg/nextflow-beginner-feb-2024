// Map applies a function to each item in the channel
// and returns a new queue channel

Channel
    .of('hello', 'world')
    .map { it.reverse() } // 'it' is the current item in the channel
    .view()

Channel
    .of('hello', 'world')
    .map { word -> [word, word.size()] } // custom named variables can be specified like this
    .view()

// Time for exercise 01