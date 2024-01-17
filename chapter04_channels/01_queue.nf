// Queue channels: asynchronous, unidirectional, FIFO (first in, first out)
// Can be created with Channel.of()
ch = Channel.of(1, 2, 3)
ch.view()