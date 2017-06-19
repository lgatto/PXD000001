#  Proteomics data set PXD000001

This package distributes the ProteomeXchange data set
[PXD000001](http://www.ebi.ac.uk/pride/archive/projects/PXD000001) as
a standalone package for offline usage.

To install `PXD000001`, you will need to first install its
dependencies from the Bioconductor repository:

```{r}
source("http://bioconductor.org/biocLite.R")
biocLite(c("mzR", "MSnbase", "msdata"))
```

Then, install the package directly from Github:


```{r}
biocLite("lgatto/PXD000001")
```
