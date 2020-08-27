biocGet <- function (pkgs){
   library(BiocManager)
   BiocManager::install(pkgs)
   }

BiocManager::install(ask=FALSE, update=TRUE)


bioc.basics <- c("bit64",
                 "blob",
                 "RUnit",
                 "stringi",
                 "BiocGenerics",
                 "org.Hs.eg.db",
                 "phastCons7way.UCSC.hg38",
                 "phastCons100way.UCSC.hg38",
                 "MotifDb",
                 "VariantAnnotation",
                 "AnnotationDbi",
                 "RPostgreSQL",
                 "biomaRt",
                 "Biostrings",
                 "S4Vectors",
                 "XVector",
                 "glmnet",
                 "foreach",
                 "Matrix",
                 "GenomeInfoDb",
                 "IRanges",
                 "GenomicRanges",
                 "GenomicFeatures",
                 "GenomicScores",
                 "annotatr",
                 "ggplot2")

other.pkgs <- c("prettyunits",
                "devtools",
                "motifmatchr",
                "TFBSTools",
                "universalmotif",
                "ggseqlogo",
                "yaml",
                "later",
                "DT",
                "V8",
                "shiny",
                "shinydashboard",
                "shinyjs",
                "factoextra",  # viz for multivariate analysis, PCA in particular
                "colourpicker",
                "RColorBrewer")
pkgs <- c(bioc.basics, other.pkgs)

for(pkg in pkgs){
   suppressWarnings(
      needed <- !require(pkg, character.only=TRUE, quiet=TRUE)
      )
   printf("%s needed? %s", pkg, needed)
   if(needed)
      BiocManager::install(pkg, ask=FALSE, update=TRUE)
   } # for

library(devtools)
github.packages <- c("paul-shannon/cyjShiny",
                     "paul-shannon/shinyModules",
                     "priceLab/trena",
                     "priceLab/TrenaProject",
                     "priceLab/TrenaProjectHG38",
                     "priceLab/trenaSGM",
                     "priceLab/ghdb",
                     "priceLab/TrenaProjectErythropoiesis")

for(pkg in github.packages){
   install_github(pkg)
   }
