num = Channel.of(1, 2, 3)

process BASICEXAMPLE {
    debug true

    input:
    val x

    script:
    """
    echo process job $x
    """
}

workflow {
    myrun = BASICEXAMPLE(num)
}