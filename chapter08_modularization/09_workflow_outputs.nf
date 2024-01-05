params.greeting = 'Hello world!'

include { SPLITLETTERS } from './modules.nf'
include { CONVERTTOUPPER } from './modules_emit.nf'

workflow my_workflow {
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
    my_workflow(Channel.of(params.greeting))
    my_workflow.out.view()
    // my_workflow.out.my_data.view()
}