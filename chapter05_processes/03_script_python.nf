process PYSTUFF {
    debug true

    script: // Use shebang for another programming language
    """
    #!/usr/bin/env python

    x = 'Hello'
    y = 'world!'
    print ("%s - %s" % (x, y))
    """
}

workflow {
    PYSTUFF()
}