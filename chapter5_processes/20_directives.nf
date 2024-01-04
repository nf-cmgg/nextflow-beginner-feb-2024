process FOO {
    cpus 2
    memory 1.GB
    time 3.h
    disk 20.GB
    tag "foo"
    container 'ubuntu:20.04'
    // A list of all directives can be found here: 
    // https://www.nextflow.io/docs/latest/process.html#directives

    script:
    """
    echo your_command --this --that
    """
}

workflow {
    FOO()
}