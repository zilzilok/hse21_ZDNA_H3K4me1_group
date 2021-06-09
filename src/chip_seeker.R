source('lib.R')

###

#if (!requireNamespace("BiocManager", quietly = TRUE))
#  install.packages("BiocManager")
#BiocManager::install("TxDb.Hsapiens.UCSC.hg19.knownGene")
#BiocManager::install("ChIPseeker")
#BiocManager::install("clusterProfiler")
#BiocManager::install("org.Mm.eg.db")

library(TxDb.Hsapiens.UCSC.hg19.knownGene)
library(ChIPseeker)
library(clusterProfiler)
library(org.Hs.eg.db)

###

#NAME <- 'human'
#NAME <- 'human_merged'
#NAME <- 'human_mouse'
NAME <- 'human_merged_mouse'

OUT_DIR <- '../results/chip_seeker/'
DATA_DIR <- '../data/slop/'
BED_FN <- paste0(DATA_DIR, NAME, '.bed')

###

txdb <- TxDb.Hsapiens.UCSC.hg19.knownGene

peakAnno <- annotatePeak(BED_FN, tssRegion=c(-3000, 3000), TxDb=txdb, annoDb="org.Hs.eg.db")

png(paste0(OUT_DIR, 'chip_seeker.', NAME, '.plotAnnoPie.png'))
plotAnnoPie(peakAnno)
dev.off()

#peak <- readPeakFile(BED_FN)
#pdf(paste0(OUT_DIR, 'chip_seeker.', NAME, '.covplot.pdf'))
#covplot(peak, weightCol="V5")
#dev.off()