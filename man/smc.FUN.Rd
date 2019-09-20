\name{smc.FUN}
\alias{smc.FUN}
\title{
Structured Matrix Completion
}
\description{
The main function in our package, smc.FUN, is for recovery of the missing block A22 of an approximately low-rank matrix A given the other blocks A11, A12, A21.
}
\usage{
smc.FUN(A.mat, c_T, row_thresh, m1, m2)
}

\arguments{
  \item{A.mat}{
The approximately low-rank matrix that we want to recover
}
  \item{c_T}{
c_T is the thresholding level, the default value is 2.
}
  \item{row_thresh}{
  is row thresholding
}
  \item{m1}{
number of rows of block A11
}
  \item{m2}{
number of columns of block A11
}
}

\value{
 \item{smc.FUN()}{
returns the missing block of initial input matrix which has the following components:
}
\item{A.mat}{
the approximately low-rank matrix with given value of other three blocks and NA values for the block that user want to recover.
}
\item{c_T}{
is the thresholding level, the default value is 2.
}
\item{row_thresh}{
it is the row thresholding which is "True" under default. Otherwise, it can be "False" to make it column thresholding.
}
\item{m1}{
number of rows of block A11. It can be used to calculate the rest of dimension of blocks in A.mat with m2.
}
\item{m2}{
number of columns of block A11. It can be used to calculate the rest of dimension of blocks in A.mat with m1.
}
}

\references{
Cai, T., Cai, T. T., & Zhang, A. (2015). Structured Matrix Completion with Applications to Genomic Data Integration. \emph{Journal of the American Statistical Association}.
}
\author{
Yifu Liu and Anru Zhang
}

\examples{
#dimension of matrix A with row number p1 = 10 and column number p2 = 9
p1 = 60
p2 = 50
m1 = 55 #row number of A11
m2 = 45 #column number of A11
A = matrix(rnorm(300, mean = 0.05, sd = 0.1), p1, p2)

#different blocks of our matrix A that are used to approximate missing block A22
A11 = A[1:m1, 1:m2]
A12 = A[1:m1, (1+m2):p2]
A21 = A[(1+m1):p1, 1:m2]
Arecovery = rbind(cbind(A11,A12),cbind(A21,matrix(NA,nrow=p1-m1,ncol=p2-m2)))

#recover the missing block A22 where A22 is now filled with approximate values by our algorithm.
A22 = smc.FUN(Arecovery, 2, "True", m1, m2) 

}

\keyword{ structure }
\keyword{ matrix }
\keyword{ completion }
\keyword{ Genomic }
\keyword{ low }
\keyword{ rank }
\keyword{ approximate }
