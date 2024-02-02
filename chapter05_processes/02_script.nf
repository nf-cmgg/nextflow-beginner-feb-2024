process EXAMPLE {
    script: // Defaults to bash
    // Groovy code here
    def two = 1 + 1
    """
    echo 'Hello world!\nHola mundo!\nCiao mondo!\nHallo Welt!' > file
    cat file | head -n 1 | head -c 5 > chunk_1.txt
    gzip -c chunk_1.txt  > chunk_archive.gz
    """
}

workflow {
    EXAMPLE()
}