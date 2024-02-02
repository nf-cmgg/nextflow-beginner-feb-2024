process SAYHELLO {
    debug true // Directives: settings for this process
    cpus 2

    input: // Input: inputs of the process
    val x

    output: // Output: collects output in a queue channel
    stdout

    when: true // When: condition has to be met for the process to run

    script: // Script: what you want to do
    """
    echo "${x}"
    """
}

workflow {
    SAYHELLO(Channel.of("Hello"))
}