# Seminar 1

## Dependencies

## Package installing

For transcriptmics I firstly need to install SRA toolkit.
I have preinstalled conda, so I have created and activated new conda environment:

```{bash}
conda create -n sra_tools python=3.9
conda activate sra_tools
```
On the next stafe I have installed SRA toolkit by conda.

```{bash}
conda install -c bioconda sra-tools==3.0.5
```
## SRA toolkit configuring

For starting configuration setting I runned the below-written command:

```{bash}
~/anaconda3/envs/sra_tools/bin/vdb-config -i
```

For configuring I used [appropriate GitHub page of SRA toolkit documentation](https://github.com/ncbi/sra-tools/wiki/05.-Toolkit-Configuration).
