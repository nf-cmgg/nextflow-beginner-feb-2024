// GroupTuple combines all items with a matching key in one tuple,
// it emits a queue channel with each distinct key followed by the tuple

Channel
    .of([1, 'A'], [1, 'B'], [2, 'C'], [3, 'B'], [1, 'C'], [2, 'A'], [3, 'D'])
    .groupTuple()
    .view()

// Time for exercise 02