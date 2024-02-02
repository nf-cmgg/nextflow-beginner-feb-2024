// Creates a queue channel from one or more paths
// https://www.nextflow.io/docs/latest/channel.html#frompath

Channel
    .fromPath('07_channel_factory_frompath.nf')
    .view()

// A glob pattern can also be used

Channel
    .fromPath('*.nf')
    .view()