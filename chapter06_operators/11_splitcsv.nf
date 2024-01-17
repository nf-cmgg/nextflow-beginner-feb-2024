// SplitCsv allows you to parse CSV files and emit
// it as a queue channel

Channel
    .fromPath("data/meta/patient1.csv")
    .splitCsv()
    .view { row -> "${row[0]}, ${row[3]}" }

// Header names can also be used
Channel
    .fromPath("data/meta/patient1.csv")
    .splitCsv(header: true)
    // row is a list object
    .view { row -> "${row.patient_id}, ${row.num_samples}" }

Channel
    .fromPath("data/meta/patient1.csv")
    .splitCsv(header: ['col1', 'col2', 'col3', 'col4', 'col5'])
    .view { row -> "${row.col1}, ${row.col4}" }

// A TSV file can also be parsed with .splitCsv
Channel
    .fromPath("data/regions.tsv", checkIfExists: true)
    // use `sep` option to parse TAB separated files
    .splitCsv(sep: '\t')
    .view()

// Time for exercise 03