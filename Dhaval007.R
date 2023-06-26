setwd("D:/Bioinformatics Workshop  AUMRE-23")
library(affy)
# Reading .CEL data in a variable called eset
eset <- ReadAffy(celfile.path = "D:/Bioinformatics Workshop  AUMRE-23" , compress = TRUE)

# Generate a box plot of raw data
boxplot(eset)

# Perform RMA normalization
eset_Norm <- rma(eset)

# Box plots for normalized datasets
rma <- exprs(eset_Norm)
boxplot(rma)
