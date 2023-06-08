# EM-algorithm and pseudo-alignment

## Objectives of step:

1. EM-algorithm for three clusters
2. Custom EM-algorithm for expressions
3. Modification of nextflow pipeline (+ kallisto)

## EM-algorithm for three clusters

The code of upgraded EM-algorithm for three clusters is in `em3.ipynb` file. The main points are adding second `phi` variable, which equal to second cluster points' proportion; adding `mu3` and `sigma3` parameters; changing palette and assigning colors, depending on maximal likelihood (not likelihood ratio, as in two-variable version of algorithm).
