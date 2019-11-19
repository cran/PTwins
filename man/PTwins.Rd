\name{PTwins}
\alias{PTwins}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Percentile Estimation of Fetal Weight for Twins by Chorionicity
}
\description{The PTwins function estimates the fetus weight percentile using a multilevel linear model developed from a Spanish twin cohort.
}
\usage{
PTwins(weight,week,day=3,dichorionic=TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{weight}{The fetus weight estimated by ultrasound at a gestational age (weeks) using Hadlock formula:

  log10(FW)=1.3596-0.00386(AC)x(FL)+0.0064(HC)+0.0006(BPD)x(AC)+ 0.0424(AC)+0.174(FL)

  FW: fetal weight, AC: abdominal circumference, FL: femur lenght,

  HC: head circumference, BPD: biparital diameter}

\item{week}{The gestational age in weeks for which the Fetus weight where estimated}

\item{day}{The exact day in the gestational week at which the fetus weight were estimated. For the percentile calculation, if we choose for example: week=23, day=2, this is equivalent to 163 days of GA}

\item{dichorionic}{This parameter indicates if the fetus is dichorionic-diamniotic (dichorionic=TRUE) or monochorionic-monoamniotic (dichorionic=FALSE)}
}
\details{The inputs weight, week, day or dichorionic can be a number or a vector to include several cases
}
\value{
The returned fit object of PTwins contains the following components.

\item{Percentile}{Percentile of the fetus weight}
\item{weight}{fetus weight}
\item{GA}{Gestational age in exact weeks}
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
%\references{
%% ~put references to the literature/web site here ~
%}
\author{Rocio Aznar, Luis Mariano Esteban, Gerardo Sanz, Ricardo Saviron
}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
#Percentile estimation of a dichorionic-diamniotic fetus of 2300 grams
#of weight estimated at the 22nd week (+2 days) of gestational age.

PTwins(weight=2300,week=22,day=2,dichorionic=TRUE)

#Percentile estimation of a monochorionic-diamniotic fetus of 2300 grams
#of weight estimated at the 22nd week (+2 days) of gestational age.

PTwins(weight=2300,week=22,day=2,dichorionic=FALSE)

#Percentile estimation of a dataframe that includes 10 cases

WEIGHT<-round(rnorm(10,2100,125),digits=0)
WEEK<-sample(seq(18,36),10)
DAY<-sample(seq(0,7),10,replace=TRUE)
dichorionic<-sample(c("TRUE","FALSE"),10,replace=TRUE)
DT<-data.frame(WEIGHT,WEEK,DAY,dichorionic)

PTwins(weight=DT$WEIGHT,week=DT$WEEK,day=DT$DAY,dichorionic=DT$dichorionic)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{misc}% use one of  RShowDoc("KEYWORDS")
\keyword{models}% __ONLY ONE__ keyword per line
