% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generics.R
\name{tensor_ops}
\alias{tensor_ops}
\alias{^.torch.Tensor}
\title{Two tensor operations}
\usage{
tensor_ops(a, b)

\method{^}{torch.Tensor}(a, b)
}
\arguments{
\item{a}{tensor}

\item{b}{tensor}
}
\description{
Two tensor operations
}
\section{Methods (by class)}{
\itemize{
\item \code{torch.Tensor}: A tensor 'a' to the power of 'b'
}}

\examples{
\donttest{
a <- torch$Tensor(list(1, 1, 1))
b <- torch$Tensor(list(2, 2, 2))
s <- 2.0
a + b
b - a
a * b
a / s
a == b
a == a
a != a
x <- torch$Tensor(list(list(2, 2, 2), list(4, 4, 4)))
y <- torch$Tensor(list(list(1, 2, 1), list(3, 4, 5)))
x > y
x < y
x >= y
y <= x
diag <- torch$eye(3L)
zeros <- torch$zeros(c(3L, 3L))
diag & zeros
diag & diag
diag | diag
zeros | zeros
zeros & zeros
diag & zeros
diag | zeros
}
}
