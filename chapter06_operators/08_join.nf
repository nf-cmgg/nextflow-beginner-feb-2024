// Join joins together items from 2 channels that have a matching key 
// (by default the first item in the tuple)

left = Channel.of(['X', 1], ['Y', 2], ['Z', 3], ['P', 7])
right = Channel.of(['Z', 6], ['Y', 5], ['X', 4])
left.join(right).view()