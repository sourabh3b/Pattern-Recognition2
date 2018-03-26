library(gRain)
yn <- c("yes","no") 
a <- cptable(~asia, values=c(1,99), levels=yn) 
t.a <- cptable(~tub | asia, values=c(5,95,1,99), levels=yn) 
s <- cptable(~smoke, values=c(5,5), levels=yn) 
l.s <- cptable(~lung | smoke, values=c(1,9,1,99), levels=yn) 
b.s <- cptable(~bronc | smoke, values=c(6,4,3,7), levels=yn) 
e.lt <- cptable(~either | lung:tub,values=c(1,0,1,0,1,0,0,1),levels=yn) 
x.e <- cptable(~xray | either, values=c(98,2,5,95), levels=yn) 
d.be<-cptable(~dysp|bronc:either, values=c(9,1,7,3,8,2,1,9),levels=yn)
cpt.list <- compileCPT(list(a, t.a, s, l.s, b.s, e.lt, x.e, d.be))
cpt.list$asia 
cpt.list$tub  
cpt.list$smoke
cpt.list$lung 
cpt.list$bronc
ftable(cpt.list$either,row.vars = 1) 
cpt.list$xray 


 # Moral graph: marry parents and drop directions:
 Moralize Code : > par(mfrow=c(1,2)); 
 plot(bnet$dag); 
 plot(moralize(bnet$dag));
 
 
##triangulate
 plot(triangulate(moralize(bnet$dag)))
 
## Construction of Simplified jTree
jtree<-ug(~smoke.bronc:bronc.dysp);
par(mfrow=c(1,3)); 
plot(d); 
plot(dm); 
plot(jtree);






