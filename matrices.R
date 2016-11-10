y <- matrix(1:20,nrow=5,ncol=4)
y

c <- c(6,12,14,3,17,5)
rn <- c("ROW 1","Row 2")
cn <- c("COL1","COL2","COL3")
mymatrix <- matrix(c,nrow=2,ncol=3,byrow=TRUE,dimnames=(list(rn,cn)))

mymatrix

mymatrix[,2] #pull column 2
mymatrix[1,] #pull row 1