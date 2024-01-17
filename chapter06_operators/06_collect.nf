// Collect collects all items in one tuple and creates a value channel from it

Channel
    .of(1, 2, 3, 4)
    .collect()
    .view()