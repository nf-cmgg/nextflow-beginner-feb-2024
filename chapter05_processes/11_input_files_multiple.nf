reads = Channel.fromPath('data/*.fq')

process FOO {
    debug true

    input:
    path sample

    script:
    """
    ls -lh $sample
    """
}

workflow {
    FOO(reads.collect())
}