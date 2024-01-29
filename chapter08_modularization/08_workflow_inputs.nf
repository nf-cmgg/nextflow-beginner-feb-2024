params.greeting = 'Hello world!'

include { SPLITLETTERS } from './modules.nf'
include { CONVERTTOUPPER } from './modules_emit.nf'

workflow MY_WORKFLOW {
    take:
    greeting // Needs to be a channel of one string per entry

    main:
    SPLITLETTERS(greeting)
    CONVERTTOUPPER(SPLITLETTERS.out.flatten())
    CONVERTTOUPPER.out.upper.view { it }
}

workflow {
    MY_WORKFLOW(Channel.of(params.greeting))
}