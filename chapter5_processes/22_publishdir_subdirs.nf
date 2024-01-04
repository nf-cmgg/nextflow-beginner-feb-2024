params.reads = "${projectDir}/data/*_{1,2}.fq.gz"
params.outdir = 'results'

samples_ch = Channel.fromFilePairs(params.reads, flat: true)

process FOO {
    publishDir "$params.outdir/$sampleId/", pattern: '*.fq'
    publishDir "$params.outdir/$sampleId/counts", pattern: "*_counts.txt"
    publishDir "$params.outdir/$sampleId/outlooks", pattern: '*_outlook.txt'

    input:
    tuple val(sampleId), path('sample1.fq.gz'), path('sample2.fq.gz')

    output:
    path "*"

    script:
    """
    zcat sample1.fq.gz > sample1.fq
    zcat sample2.fq.gz > sample2.fq

    awk '{s++}END{print s/4}' sample1.fq > sample1_counts.txt
    awk '{s++}END{print s/4}' sample2.fq > sample2_counts.txt

    head -n 50 sample1.fq > sample1_outlook.txt
    head -n 50 sample2.fq > sample2_outlook.txt
    """
}

workflow {
    out_channel = FOO(samples_ch)
}