# EM-algorithm and pseudo-alignment

## Objectives of step:

1. EM-algorithm for three clusters
2. Custom EM-algorithm for expressions
3. Modification of nextflow pipeline (+ kallisto)

## EM-algorithm for three clusters

The code of the upgraded EM-algorithm for optional number of clusters is in the `em3.ipynb` file. The main points are adding a second `phi` variable, which equals to second cluster points' proportion; adding `mu3` and `sigma3` parameters; changing the palette and assigning colours, depending on the maximal likelihood (not likelihood ratio, as in the two-variable version of the algorithm).

## Custom EM-algorithm for expressions

Firstly I created a new venvironment, and have uploaded kallisto.

```bash
conda create -n kallisto python==3.9
conda activate kallisto
conda install -c bioconda kallisto=0.48.0
```

Then I download the human transcriptome through the below-writen command:

```bash
wget https://ftp.ncbi.nlm.nih.gov/refseq/H_sapiens/annotation/GRCh38_latest/refseq_identifiers/GRCh38_latest_rna.fna.gz
```

In the next stage, I added a new block to the pipeline, described in the directory `seminar1`.

```groovy

```
