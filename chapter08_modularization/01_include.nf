// Include using relative paths from this script
include { SPLITLETTERS   } from './modules.nf'
include { CONVERTTOUPPER } from './modules.nf'

params.greeting  = 'Hello world!'
greeting_ch = Channel.of(params.greeting)

workflow {
    letters_ch = SPLITLETTERS(greeting_ch)
    results_ch = CONVERTTOUPPER(letters_ch.flatten())
    results_ch.view { it }
}