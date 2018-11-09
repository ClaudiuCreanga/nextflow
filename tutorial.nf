#!/usr/bin/env nextflow

params.da = ["da", "nu"]

process convertToUpper {

    input:
    set x, y from params.da

    output:
    stdout result

    script:
    """
    #!/usr/bin/env python
    data = { "$x": "$y" }
    """
}

result.subscribe {
    println it.trim()
}