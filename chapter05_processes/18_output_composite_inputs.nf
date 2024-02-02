reads_ch = Channel.fromFilePairs("${projectDir}/data/*_{1,2}.fq")

process FOO {
    input:
    tuple val(sample_id), path(sample_id_paths)

    output:
    tuple val(sample_id), path('sample.bam')

    script:
    """
    echo your_command_here --reads $sample_id_paths > sample.bam
    """
}

workflow {
    bam_ch = FOO(reads_ch)
    bam_ch.view()
}

// Time for exercise 04 & 05