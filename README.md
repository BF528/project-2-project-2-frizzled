# Project Description

This repository contains all scripts and files used to accomplish the required goals of Project 2 - Transcriptional Profile of Mammalian Cardiac Regeneration with mRNA-Seq

Citation:
O’Meara et al. Transcriptional Reversion of Cardiac Myocyte Fate During Mammalian Cardiac Regeneration. Circ Res. Feb 2015. PMID: 25477501

# Contributors

  - Camilla Belamarich - Data Curator @cmbelama
  - Yashrajsinh Jadeja - Programmer yj@bu.edu
  - Zhuorui Sun - Analyst @sunzhuorui
  - Janvee Patel - Biologist @Janvee-Patel

# Repository Contents

Each folder indicated the role of the project. The folder contains the script and files used and produced during the process of this analysis.

Data Curator:
  - data_curator_script Linux script used to download samples, extract fastq format, and run fastqc
  - run_extract.qsub used to run the qsub job on SCC to extract fastq format

Programmer:

Analyst:

Biologist:
  - BF528_Project2_Biologist.R generates line plots of FPKM values for representative genes for Sarcomere, Mitochondria, and Cell Cycle terms. This file also generates a clustered     heatmap of the top 1000 differentially expressed genes. 

Final Write-Up:
  - PDF document of our final Write-up for Project 2
  - This includes our methods, results, analysis, and conclusions we were able to make based on the data
