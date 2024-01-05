process FOO {
    debug true

    script:
    """
    FOO=Foo
    echo "This process does \$FOO"
    """
}

process BAR {
    debug true

    script:
    '''
    BAR=Bar
    echo "This process does $BAR"
    '''
}

workflow {
    FOO()
    BAR()
}