# initialize random sample 1
rs1<-c()

for (i in 1:500){
  # randomly generate data
  set.seed(i)
  # let n = 20
  norm <- rnorm(20, 1, sqrt(2))
  rs1<-c(rs1,mean(norm))
}

# plot the histogram for sample 1
hist(rs1)

# initialize random sample 2
rs2<-c()

for (i in 1:500){
  # randomly generate data
  set.seed(i)
  # let n = 500
  norm <- rnorm(500, 1, sqrt(2))
  rs2<-c(rs2,mean(norm))
}

# plot the histogram for sample 2
hist(rs2)
