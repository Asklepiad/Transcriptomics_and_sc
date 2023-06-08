# EM-algorithm and pseudo-alignment

## Objectives of step:

1. EM-algorithm for three clusters
2. Custom EM-algorithm for expressions
3. Modification of nextflow pipeline (+ kallisto)

## EM-algorithm for three clusters

The code of upgraded EM-algorithm for three clusters is in `em3.ipynb` file. The main points are adding second `phi` variable, which equal to second cluster points' proportion; adding `mu3` and `sigma3` parameters; changing palette and assigning colors, depending on maximal likelihood (not likelihood ratio, as in two-variable version of algorithm).

## Custom EM-algorithm for expressions

Firstly I created new venvironment, and have uploaded kallisto.

```bash
conda create -n kallisto python==3.9
conda activate kallisto
conda install -c bioconda kallisto=0.48.0
```

Then I download human transcriptome throu the below-writed command:

```bash
wget https://ftp.ncbi.nlm.nih.gov/refseq/H_sapiens/annotation/GRCh38_latest/refseq_identifiers/GRCh38_latest_rna.fna.gz
```

On the hext stage I added new block to pipeline, described in directory `seminar1`.

```groovy

```
