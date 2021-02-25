#!/#!/usr/bin/env bash

conda update python
python --version
conda create -n python3.8 python=3.8
conda activate python3.8
conda install -c bioconda multiqc

cd Desktop/raw_data/report

multiqc *.zip
