#!/usr/bin/env nextflow

SRA_list = params.SRA.split(",")
params.results_dir = "results/"

log.info ""
log.info "  Q U A L I T Y   C O N T R O L  "
log.info "================================="
log.info "SRA number         : ${params.SRA}"
log.info "Results location   : ${params.results_dir}"

process DownloadSra {
        publishDir "${params.results_dir}"

	input:
	val x

        output:
        path "${x}/*"

        script:
        """
        conda run -n sra_tools fasterq-dump ${x} -O ${x}/
        conda run -n base gzip -f ${x}/*.fastq
        """
}

process QC {
        input:
        path x

        output:
        path "qc/*"

        script:
        """
        mkdir qc
        conda run -n qc fastqc -o qc $x
        """
}

process MultiQC {
        publishDir "${params.results_dir}"

        input:
        path x

        output:
        path "multiqc_report.html"

        script:
        """
        conda run -n qc multiqc $x
        """
}

workflow {
	data = Channel.of(SRA_list)
	DownloadSra(data)
        QC( DownloadSra.out )
        MultiQC( QC.out.collect() )
}
