# Install R packages (if needed)
# install.packages("pacman")
library(pacman)
pacman::p_load(tidyverse, # for data wrangling
               metafor, # for meta-analytic working models
               clubSandwich, # for cluster-robust SE estimation
               robumeta, # for RVE
               readxl, # for reading Excel files
               optimParallel, # for using multiple processors
               devtools, # for installing some R packages via GitHub
               PublicationBias # for some publication bias analyses
)

## Install dmetar
#devtools::install_github("MathiasHarrer/dmetar")
library(dmetar)

## Number of available cores
ncores <- parallel::detectCores() - 1

# load data file
dat<- read_excel("Gender_data_simp.xlsx")

# Data structure
str(dat)
