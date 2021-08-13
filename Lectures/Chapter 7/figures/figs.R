pdf("square.pdf")
par(mar = c(0, 0, 0, 0))
plot(c(-1,6),c(-1,6),type='n',axes=FALSE,xlab="",ylab="")
lines(c(0,0),c(0,6))
lines(c(0,6),c(0,0))
lines(c(6,6),c(0,6))
lines(c(0,6),c(6,6))


text(3,-1,"X")
text(-1,3,"Y")

for(i in 0:6) {
    lines(c(i,i),c(0,-0.1))
    lines(c(0,-0.1),c(i,i))
    
    text(-0.5,i,i*10)
    text(i,-0.5,i*10)
}

lines(c(1,6),c(0,5))
lines(c(0,5),c(1,6))
lines(c(0,6),c(0,6), lty = 2)

polygon(c(1, 6, 6),c(0, 0, 5),col='lightblue')
polygon(c(0, 0, 5),c(1, 6, 6),col='lightblue')
dev.off()

