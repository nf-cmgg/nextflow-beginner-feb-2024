params.data = 'World'

process FOO {
    debug true

    script:
    def country = "from Belgium"
    """
    echo Hello $params.data $country
    """
}

workflow {
    FOO()
}