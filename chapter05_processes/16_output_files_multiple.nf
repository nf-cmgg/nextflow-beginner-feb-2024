process SPLITLETTERS {
    output:
    path 'chunk_*'

    script:
    """
    printf 'Hola' | split -b 1 - chunk_
    """
}

workflow {
    letters = SPLITLETTERS()
    letters
        .flatMap()
        .view { "File: ${it.name} => ${it.text}" }
}

// Time for exercise 04