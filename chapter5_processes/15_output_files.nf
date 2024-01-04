process RANDOMNUM {
    output:
    path 'result.txt'

    script:
    """
    echo \$RANDOM > result.txt
    """
}

workflow {
    receiver_ch = RANDOMNUM()
    receiver_ch.view { "Received: " + it.text }
}