// Params automatically get resolved to a value channel

ch1 = Channel.of(1, 2, 3)
params.ch2 = "1"

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
    SUM(ch1, params.ch2).view()
}

// Time for exercise 01