library("rpx")
px <- PXDataset("PXD000001")
fls <- pxget(px, list = "all")
## > fls
##  [1] "F063721.dat"                                                         
##  [2] "F063721.dat-mztab.txt"                                               
##  [3] "PRIDE_Exp_Complete_Ac_22134.xml.gz"                                  
##  [4] "PRIDE_Exp_mzData_Ac_22134.xml.gz"                                    
##  [5] "PXD000001_mztab.txt"                                                 
##  [6] "TMT_Erwinia_1uLSike_Top10HCD_isol2_45stepped_60min_01-20141210.mzML" 
##  [7] "TMT_Erwinia_1uLSike_Top10HCD_isol2_45stepped_60min_01-20141210.mzXML"
##  [8] "TMT_Erwinia_1uLSike_Top10HCD_isol2_45stepped_60min_01.mzXML"         
##  [9] "TMT_Erwinia_1uLSike_Top10HCD_isol2_45stepped_60min_01.raw"           
## [10] "erwinia_carotovora.fasta"                                            

i <- c(1, 2, 5, 6, 7, 10)
stopifnot(all(file.rename(fls[i], file.path("../extdata", fls[i]))))
stopifnot(all(file.remove(fls[-i])))
