reads = Channel.fromPath('data/*.fq')

process FOO {
    debug true

    input:
    path sample

    script:
    """
    ls  $sample
    """
}

workflow {
    result = FOO(reads)
}