process FOO {
    debug true

    script:
    '''
    env | egrep 'ALPHA|BETA'
    '''
}

workflow {
    FOO()
}