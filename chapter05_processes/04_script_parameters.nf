params.data = 'World'

process FOO {
    debug true

    script:
    """
    echo Hello $params.data
    """
}

workflow {
    FOO()
}