methods = ['prot', 'dna', 'rna']

process FOO {
    input:
    val x

    output:
    val x

    script:
    """
    echo $x > file
    """
}

workflow {
    receiver_ch = FOO(Channel.of(methods))
    receiver_ch.view { "Received: $it" }
}