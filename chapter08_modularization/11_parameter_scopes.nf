params.foo = 'Hola'
params.bar = 'mundo!'

include { say_hello } from './hello.nf' // addParams(foo: 'Olá')

// params.foo = 'Hola'
// params.bar = 'mundo!'

workflow {
    say_hello()
}