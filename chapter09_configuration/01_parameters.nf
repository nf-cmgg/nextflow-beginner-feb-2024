#!/usr/bin/env nextflow

params.greeting = 'Hello world!'

process GREET {
    debug true
    script:
    """
    echo ${params.greeting}
    """
}

workflow {
    GREET()
}