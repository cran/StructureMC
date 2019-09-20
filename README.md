# StructureMC
## Structured Matrix Completion
Current literature on matrix completion focuses primarily on independent sampling models under which the individual observed entries are sampled independently. Motivated by applications in genomic data integration, we propose a new framework of structured matrix completion (SMC) to treat structured missingness by design. Specifically, our proposed method aims at efficient matrix recovery when a subset of the rows and columns of an approximately low-rank matrix are observed. The main function in our package, smc.FUN, is for recovery of the missing block A22 of an approximately low-rank matrix A given the other blocks A11, A12, A21.

This is the R package `StructureMC' (Structured Matrix Completion) made Yifu Liu(2012johnnyliu@gmail.com) and Anru Zhang(anruzhang@stat.wisc.edu) and maintained by Yifu Liu(2012johnnyliu@gmail.com).

For more information about the Structured Matrix Completion, please refer to the paper "Cai, T., Cai, T. T., & Zhang, A. (2015). Structured Matrix Completion with Applications to Genomic Data Integration. Journal of the American Statistical Association." 
