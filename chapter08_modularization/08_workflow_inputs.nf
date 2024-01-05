params.greeting = 'Hello world!'

include { SPLITLETTERS } from './modules.nf'
include { CONVERTTOUPPER } from './modules_emit.nf'

workflow my_workflow {
    take:
    greeting // Needs to be a channel of one string per entry

    main:
    SPLITLETTERS(greeting)
    CONVERTTOUPPER(SPLITLETTERS.out.flatten())
    CONVERTTOUPPER.out.upper.view { it }
}

workflow {
    my_workflow(Channel.of(params.greeting))
}