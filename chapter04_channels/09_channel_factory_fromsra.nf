// Creates a queue channel with fastqs that correspond to a SRA ID

params.ncbi_api_key = '<Your API key here>' // Replace this with your api key

Channel
    .fromSRA(['ERR908507', 'ERR908506', 'ERR908505'], apiKey: params.ncbi_api_key)
    .view()

// Time for all exercises