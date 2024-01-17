Channel
    .of('foo', 'bar', 'baz')
    .view()

// The message can be customized with a closure
Channel
    .of('foo', 'bar', 'baz')
    .view { "- $it" }