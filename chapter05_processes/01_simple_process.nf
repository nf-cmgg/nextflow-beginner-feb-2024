process SAYHELLO {
    debug true

    script:
    """
    echo "Hello World!"
    """
}

workflow {
    SAYHELLO()
}