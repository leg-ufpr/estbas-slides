#!/bin/sh

Rscript -e "rmarkdown::render_site()"
cd slides
Rscript _build.R
