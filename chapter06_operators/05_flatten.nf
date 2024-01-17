// Flatten transforms the channel in such a way that every tuple is
// flattened, creating a queue channel where each tuple item becomes a
// single channel item

foo = [1, 2, 3]
bar = [4, 5, 6]

Channel
    .of(foo, bar)
    .flatten()
    .view()