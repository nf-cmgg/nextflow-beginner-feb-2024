include { SPLITLETTERS; CONVERTTOUPPER } from './modules.nf'

params.greeting = 'Hello world!'

workflow {
    Channel.of(params.greeting) | SPLITLETTERS | flatten | CONVERTTOUPPER | view
}