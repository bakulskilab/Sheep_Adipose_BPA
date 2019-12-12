###############################
#QoRTs plots
###############################

meta <- read.csv("/nfs/turbo/bakulski1/Datasets/Padmanabhan/ruddle.brcf.med.umich.edu/Run_2742/Run_2742_padmanabha.csv",skip=18)

folders <- list.dirs(path='/nfs/turbo/bakulski1/People/johndou/vsheep/Run_2742/QoRTs',recursive=T)
folders <- folders[grepl('R1_001',folders)]
lane <- sub('.*_S.*_L','',folders)
samp <- gsub('.*/|_L.*','',folders)
folders <- folders[order(lane,samp)]

decoder <- data.frame(unique.ID=sub('.*/QoRTs/','',folders),
                      group.ID=sub('9..','',meta$Description),
                      lane.ID=meta$Lane,
                      sample.ID=meta$Sample_ID)
  
#done after running the QoRTs program on STAR output
library(QoRTs)
library(png)

res <- read.qc.results.data('/nfs/turbo/bakulski1/People/johndou/vsheep/Run_2742/QoRTs/', decoder=decoder)

makeMultiPlot.all(res, outfile.dir='/nfs/turbo/bakulski1/People/johndou/vsheep/Run_2742/QoRTs/',plot.device.name='pdf',chromosome.name.style="ENSEMBL")
