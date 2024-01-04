params.outdir = 'results'
params.prot = "${projectDir}/data/*.tfa"
proteins = Channel.fromPath(params.prot)

process BLASTSEQ {
    publishDir "$params.outdir/bam_files", mode: 'copy'

    input:
    path fasta

    output:
    path ('*.txt')

    script:
    """
    echo blastp $fasta > ${fasta}_result.txt
    """
}

workflow {
    blast_ch = BLASTSEQ(proteins)
    blast_ch.view()
}