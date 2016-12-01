z = as.matrix(read.table("/home/jupyter/mydata/contourData1.dat"))
x <- 1:ncol(z)
y <- 1:nrow(z)

filled.contour(x,y,z, color=heat.colors,plot.title = title(main = "Contour Plot for Input Data",xlab = "X", ylab = "Y"))