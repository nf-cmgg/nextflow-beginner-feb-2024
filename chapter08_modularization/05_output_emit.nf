include { SPLITLETTERS; CONVERTTOUPPER } from './modules_emit.nf'

params.greeting = 'Hello world!'

workflow  {
    greeting_ch = Channel.of(params.greeting)
    SPLITLETTERS(greeting_ch)
    CONVERTTOUPPER(SPLITLETTERS.out.chunk.flatten())
    CONVERTTOUPPER.out.upper.view()
}