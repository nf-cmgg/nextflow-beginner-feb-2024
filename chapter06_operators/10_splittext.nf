// SplitText splits a text file and outputs the result as 
// a queue channel

Channel
    .fromPath('data/random.txt') 
    .splitText()
    .view()

// A closure can be used to process each text chunk
Channel
    .fromPath('data/random.txt')
    .splitText(by: 2) { it.toUpperCase() }
    .view()