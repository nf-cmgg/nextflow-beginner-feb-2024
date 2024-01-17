// Value channels: Bound to a single value without consuming that value
// Can be created with Channel.value()
// These operators output a value channel: first, last, collect, count, min, max, reduce, sum

ch1 = Channel.of(1, 2, 3)
ch2 = Channel.of(1)
// ch2 = Channel.value(1)

process SUM {
    input:
    val x
    val y

    output:
    stdout

    script:
    """
    echo \$(($x+$y))
    """
}

workflow {
    SUM(ch1, ch2).view()
}