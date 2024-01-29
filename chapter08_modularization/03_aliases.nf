params.greeting = 'Hello world!'
greeting_ch = Channel.of(params.greeting)

// use alias in configs!
include { SPLITLETTERS as SPLITLETTERS_ONE } from './modules.nf'
include { SPLITLETTERS as SPLITLETTERS_TWO } from './modules.nf'

include { CONVERTTOUPPER as CONVERTTOUPPER_ONE } from './modules.nf'
include { CONVERTTOUPPER as CONVERTTOUPPER_TWO } from './modules.nf'

workflow {
    letters_ch1 = SPLITLETTERS_ONE(greeting_ch)
    results_ch1 = CONVERTTOUPPER_ONE(letters_ch1.flatten())
    results_ch1.view()

    letters_ch2 = SPLITLETTERS_TWO(greeting_ch)
    results_ch2 = CONVERTTOUPPER_TWO(letters_ch2.flatten())
    results_ch2.view()
}

// What will the output of this be?