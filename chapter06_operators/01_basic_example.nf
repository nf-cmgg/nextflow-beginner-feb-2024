nums = Channel.of(1, 2, 3, 4) // Creates a queue channel
square = nums.map { it -> it * it } // Creates a new queue channel with the square of each number
square.view() 