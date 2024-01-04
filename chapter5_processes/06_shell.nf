params.data = 'le monde'

process BAZ {
    debug true

    shell:
    '''
    X='Bonjour'
    echo $X !{params.data}
    '''
}

workflow {
    BAZ()
}