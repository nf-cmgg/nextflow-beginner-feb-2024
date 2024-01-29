process FOO {
    // cpus 4
    // memory 2.GB
    // time 1.hour
    // maxRetries 3
    debug true

    output:
    path("empty.txt")

    script:
    """
    echo "FOO: Using ${task.cpus} cores and ${task.memory} memory"
    touch empty.txt
    """
}

process BAR {
    debug true

    script:
    """
    echo "BAR: Using ${task.cpus} cores and ${task.memory} memory"
    """
}

workflow {
    FOO()
    BAR()
}