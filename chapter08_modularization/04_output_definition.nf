include { SPLITLETTERS; CONVERTTOUPPER } from './modules.nf'

params.greeting = 'Hello world!'

workflow  {
    greeting_ch = Channel.of(params.greeting)
    letters_ch = SPLITLETTERS(greeting_ch)
    results_ch = CONVERTTOUPPER(letters_ch.flatten())
    results_ch.view { it }
}

// workflow  {
//     greeting_ch = Channel.of(params.greeting)
//     SPLITLETTERS(greeting_ch)
//     CONVERTTOUPPER(SPLITLETTERS.out.flatten())
//     CONVERTTOUPPER.out.view()
//     CONVERTTOUPPER.out[0].view() // [0], [1], [2]... can be used to access specific output channels
// }
