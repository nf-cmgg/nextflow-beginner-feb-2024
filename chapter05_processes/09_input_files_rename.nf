reads = Channel.fromPath('data/*.fq')

process FOO {
    debug true

    input: 
    path 'sample.fastq' // Creates a path

    script:
    """
    ls sample.fastq
    """
}

workflow {
    result = FOO(reads)
}