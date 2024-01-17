// Creates a queue channel from file pairs

Channel
    .fromFilePairs('./data/*_{1,2}.fq')
    .view()

// The 'flat' option can be used to let each file be its own element
Channel
    .fromFilePairs('./data/*_{1,2}.fq', flat:true)
    .view()