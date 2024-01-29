params.greeting = 'Hello world!'

include { SPLITLETTERS as SPLITLETTERS_ONE } from './modules.nf'
include { SPLITLETTERS as SPLITLETTERS_TWO } from './modules.nf'

include { CONVERTTOUPPER as CONVERTTOUPPER_ONE } from './modules.nf'
include { CONVERTTOUPPER as CONVERTTOUPPER_TWO } from './modules.nf'


workflow MY_WORKFLOW_ONE {
    letters_ch1 = SPLITLETTERS_ONE(params.greeting)
    results_ch1 = CONVERTTOUPPER_ONE(letters_ch1.flatten())
    results_ch1.view()
}

workflow MY_WORKFLOW_TWO {
    letters_ch2 = SPLITLETTERS_TWO(params.greeting)
    results_ch2 = CONVERTTOUPPER_TWO(letters_ch2.flatten())
    results_ch2.view()
}

workflow {
    MY_WORKFLOW_ONE()
    MY_WORKFLOW_TWO()
}

// nextflow run 10_calling_named_workflows.nf -entry MY_WORKFLOW_ONE