# EM-algorithm and pseudo-alignment

## Objectives of step:

1. EM-algorithm for three clusters
2. Custom EM-algorithm for expressions
3. Modification of nextflow pipeline (+ kallisto)

## EM-algorithm for three clusters

The code of the upgraded EM-algorithm for optional number of clusters is in the `ex_max.ipynb` file. You can create not only 2- or 3-clusters EM algorithm, but choose up to 8 clusters (for using more you need to manually add more colours in `colores` list in notebook). The code is also more flexible beacuse most of code wrapped in functions.

## Pipeline for kallisto alignment

Firstly I created a new venvironment, and uploaded kallisto.

```bash
conda create -n kallisto python==3.9
conda activate kallisto
conda install -c bioconda kallisto=0.48.0
```

Then I download the human transcriptome through the below-writen command:

```bash
wget https://ftp.ncbi.nlm.nih.gov/refseq/H_sapiens/annotation/GRCh38_latest/refseq_identifiers/GRCh38_latest_rna.fna.gz
```

In the next stage, I added a new block to the pipeline, described in the directory `seminar1`. Updated pipeline is located in this durectory as "Snakefile". It can be started by the below-written command.

```bash
conda run -n snakemake snakemake --cores all --use-conda logs/alignment_GRCh38_latest_rna.log --config sra=[<target SRA>/*,<another target SRA>/*]
```