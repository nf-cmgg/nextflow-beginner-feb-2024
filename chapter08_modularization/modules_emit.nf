process SPLITLETTERS {
    input:
    val x

    output:
    path 'chunk_*', emit: chunk

    """
    printf '$x' | split -b 6 - chunk_
    """
}

process CONVERTTOUPPER {
    input:
    path y

    output:
    stdout emit: upper

    """
    cat $y | tr '[a-z]' '[A-Z]' 
    """
}
