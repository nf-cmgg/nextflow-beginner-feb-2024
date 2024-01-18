params.compress = 'gzip'
params.file2compress = "$projectDir/data/small.fasta"

process FOO {
    input:
    path file

    script: // Everything outside quotes is Groovy
    if (params.compress == 'gzip')
        """
        gzip -c $file > ${file}.gz
        """
    else if (params.compress == 'bzip2')
        """
        bzip2 -c $file > ${file}.bz2
        """
    else
        throw new IllegalArgumentException("Unknown compressor $params.compress")
}

workflow {
    FOO(file(params.file2compress))
}