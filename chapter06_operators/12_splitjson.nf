// SplitJson can parse JSON to a queue channel

// JSON arrays
Channel
    .of('["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]')
    .splitJson()
    .view()

// JSON objects
Channel
    .of('{"player": {"name": "Bob", "height": 180, "champion": false}}')
    .splitJson()
    .view()

// JSON array of JSON objects
Channel
    .of('[{"name": "Bob", "height": 180, "champion": false}, \
          {"name": "Alice", "height": 170, "champion": false}]')
    .splitJson()
    .view()

// On a JSON file
Channel
    .fromPath('data/random.json')
    .splitJson()
    .view()

// Time for all exercises