process SAYHELLO {
    debug true // Settings for this process
    cpus 2

    input: // Input defined in workflow (channel)
    val x

    output: // Collects output in a queue channel
    stdout

    when: true // Condition has to be met for the process to run

    script: // What you want to do
    """
    echo "${x}"
    """
}

workflow {
    SAYHELLO(Channel.of("Hello"))
}