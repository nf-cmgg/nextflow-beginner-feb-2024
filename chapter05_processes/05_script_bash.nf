process FOO {
    debug true

    script: // Double quotes => allows use of external variables
    """
    FOO=Foo
    echo "This process does \$FOO"
    """
}

process BAR {
    debug true

    script: // Single quotes => allows only use of local bash scope variables
    '''
    BAR=Bar
    echo "This process does $BAR"
    '''
}

workflow {
    FOO()
    BAR()
}