params.greeting = 'Hello world!'

include { SPLITLETTERS } from './modules.nf'
include { CONVERTTOUPPER } from './modules_emit.nf'

workflow MY_WORKFLOW {
    take:
    greeting

    main:
    SPLITLETTERS(greeting)
    CONVERTTOUPPER(SPLITLETTERS.out.flatten())

    emit:
    CONVERTTOUPPER.out.upper
    // my_data = CONVERTTOUPPER.out.upper
}

workflow {
    MY_WORKFLOW(Channel.of(params.greeting))
    MY_WORKFLOW.out.view()
    // MY_WORKFLOW.out.my_data.view()
}