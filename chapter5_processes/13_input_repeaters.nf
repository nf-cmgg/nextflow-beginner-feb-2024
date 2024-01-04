sequences = Channel.fromPath("${projectDir}/data/*.tfa")
methods = ['regular', 'espresso', 'psicoffee']

process ALIGNSEQUENCES {
    debug true

    input:
    path seq
    each mode

    script:
    """
    echo t_coffee -in $seq -mode $mode
    """
}

workflow {
    ALIGNSEQUENCES(sequences, methods)
}

// Time for exercise 03