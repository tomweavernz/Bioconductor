# installing bioconductor
source("https://bioconductor.org/biocLite.R")
biocLite()

biocLite(c("GenomicFeatures", "AnnotationDbi","ShortRead", "VariantAnnotation"))

# from youtube: https://www.youtube.com/watch?v=aWYRJUQSffw

# function to chec bioconductor packages
installpkg <- function(pkg){
  if(!require(pkg, character.only=T)){
    source("https://bioconductor.org/biocLite.R")
    biocLite(pkg)
  }else{
    require(pkg, character.only=T)
  }
}

installpkg('seqinr')

library("ade4")
library("seqinr")
library("ggplot2")
library("ShortRead")
library("VariantAnnotation")
library("Biostrings")


# seqinr functions
# shows different repositories that can be accessed through seqinr
choosebank()

# info on the top 4 banks
choosebank(infobank = TRUE)[1:4, ]

# now you can choose one of the banks
# e.g.
choosebank("embl")
# issue with package - not finding obkect "banknameSocket"
str(banknameSocket)
# Error in str(banknameSocket) : object 'banknameSocket' not found
# moving on....

choosebank("genbank")

?query #This is a major command of the package. 
# It executes all sequence retrievals using any selection criteria the data base allows. 
# The sequences are coming from ACNUC data base located on the web and they are transfered 
# by socket. The command produces the list of all sequence names that fit the required 
# criteria. The sequence names belong to the class of sequence SeqAcnucWeb.

example(heatmap) # heatmap of Mtcars data

