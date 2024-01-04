params.dbtype = 'nr'
params.prot = "${projectDir}/data/*.tfa"
proteins = Channel.fromPath(params.prot)

process FIND {
    debug true

    input:
    path fasta
    val type

    when:
    fasta.name =~ /^small1.*/ && type == 'nr'

    script:
    """
    echo blastp -query $fasta -db nr
    """
}

workflow {
    result = FIND(proteins, params.dbtype)
}