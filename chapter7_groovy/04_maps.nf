// Assign a map
map = [a: 0, b: 1, c: 2]

// Common methods
/// Getting from a map
assert map['a'] == 0 
assert map.b == 1 
assert map.get('c') == 2

/// Adding to a map
map['a'] = 'x' 
map.b = 'y' 
map.put('c', 'z') 
assert map == [a: 'x', b: 'y', c: 'z']