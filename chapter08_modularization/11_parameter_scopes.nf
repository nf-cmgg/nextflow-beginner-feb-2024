params.foo = 'Hola'
params.bar = 'mundo!'

include { SAYHELLO } from './hello.nf' // addParams(foo: 'Olá')

// params.foo = 'Hola'
// params.bar = 'mundo!'

workflow {
    SAYHELLO()
}