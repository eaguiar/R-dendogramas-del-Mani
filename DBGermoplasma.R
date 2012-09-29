#==================================================================================
#          PRIMERA PARTE: CONEXION A LA DB
#==================================================================================

library(RODBC)
ch <- odbcConnect("germoplasma", "root", "entropia")
odbcGetInfo(ch)

#==================================================================================
# creacion de los vectores de campos
#==================================================================================
id<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `idmani1` FROM `mani1`", sep=""))));
rem<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `rem` FROM `mani1`", sep=""))));

 
nombres<-cbind(id,rem);

#----------------------------------------------------------------------------------
P1a<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `clavo en eje principal` FROM `mani1`", sep="")))); 
P1b<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `color clavo` FROM `mani1`", sep="")))); 
P1c<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `nro de ramas` FROM `mani1`", sep=""))));
P1d<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `color eje principal` FROM `mani1`", sep=""))));
P1e<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `colosemfres1` FROM `mani1`", sep=""))));
P1f<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `colosemfres2` FROM `mani1`", sep=""))));
P1g<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `colosemfres3` FROM `mani1`", sep=""))));
P1h<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `relcol1y2` FROM `mani1`", sep=""))));
P1i<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `relcol1y3` FROM `mani1`", sep=""))));
P1j<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `relcol2y3` FROM `mani1`", sep=""))));
P1k<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `tam_sem` FROM `mani1`", sep=""))));
P1l<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `LaPecPro` FROM `mani1`", sep=""))));
P1ll<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `LaFolPro` FROM `mani1`", sep=""))));
P1m<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `AnFolPro` FROM `mani1`", sep=""))));
P1n<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `grosor eje principal mm` FROM `mani1`", sep=""))));
P1o<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `grosor ramas lat primar` FROM `mani1`", sep=""))));
P1p<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `CICLO COL_INT_CAJ` FROM `mani1`", sep=""))));
#17
P1q<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `COMPACTACION` FROM `mani1`", sep=""))));
P1r<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `ANCHO SURCO` FROM `mani1`", sep=""))));
P1s<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `COLOR HOJA` FROM `mani1`", sep=""))));
P1t<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `PILOSIDAD RAMA` FROM `mani1`", sep=""))));
P1u<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `TAMAÑO HOJA` FROM `mani1`", sep=""))));
P1v<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `ALTURA PLANTA` FROM `mani1`", sep=""))));
P1w<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `PORTE` FROM `mani1`", sep=""))));
P1x<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `EJE` FROM `mani1`", sep=""))));
P1y<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `lafruprom` FROM `mani1`", sep=""))));
P1z<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `anfruprom` FROM `mani1`", sep=""))));
#-----------------------------------------------------------------------------------------------------
Q1a<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `nusemprom` FROM `mani1`", sep=""))));
Q1b<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `constric` FROM `mani1`", sep=""))));
Q1c<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `retic` FROM `mani1`", sep=""))));
Q1d<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `pico` FROM `mani1`", sep=""))));
Q1e<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `nervio` FROM `mani1`", sep=""))));
Q1f<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `colocaja` FROM `mani1`", sep=""))));
Q1g<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `lasemprom` FROM `mani1`", sep=""))));
Q1h<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `ansemprom` FROM `mani1`", sep=""))));
Q1i<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `profsemprom` FROM `mani1`", sep=""))));
Q1i<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `GIBA` FROM `mani1`", sep=""))));
Q1j<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `PESO_10sem` FROM `mani1`", sep=""))));
Q1k<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `tamfol` FROM `mani1`", sep=""))));
Q1l<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `rella_anfol` FROM `mani1`", sep=""))));
Q1ll<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `profsemprom` FROM `mani1`", sep=""))));
Q1m<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `profsemprom` FROM `mani1`", sep=""))));
Q1n<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `Latothoja` FROM `mani1`", sep=""))));
Q1o<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `relpec_raq` FROM `mani1`", sep=""))));
Q1p<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `rella_anfru` FROM `mani1`", sep=""))));
Q1q<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `rella_ansem` FROM `mani1`", sep=""))));
Q1r<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `rella_profsem` FROM `mani1`", sep=""))));
#47
Q1s<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `relan_profsem` FROM `mani1`", sep=""))));
Q1t<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `volum_sem` FROM `mani1`", sep=""))));
Q1u<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `tamfru` FROM `mani1`", sep=""))));
Q1v<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `altxan_pl` FROM `mani1`", sep=""))));
Q1w<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `pesem1fru` FROM `mani1`", sep=""))));
Q1x<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `grostotramas` FROM `mani1`", sep=""))));
Q1y<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `rellafol_lasem` FROM `mani1`", sep=""))));
Q1z<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `rellafru_lasem` FROM `mani1`", sep=""))));
#55
R1a<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `rellahoj_lafol` FROM `mani1`", sep=""))));
R1b<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `relaltpl_lahoja` FROM `mani1`", sep=""))));
R1c<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `relaltpl_lafol` FROM `mani1`", sep=""))));
R1d<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `reltamfru_volsem` FROM `mani1`", sep=""))));
R1e<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `reltamfol_tamfru` FROM `mani1`", sep=""))));
R1f<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `espac_foliar` FROM `mani1`", sep=""))));
R1g<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `rellahoja_lafru` FROM `mani1`", sep=""))));
R1h<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `reltamfol_volsem` FROM `mani1`", sep=""))));
R1i<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `rellahoja_lasem` FROM `mani1`", sep=""))));
R1j<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `relespfol_volsem` FROM `mani1`", sep=""))));
R1k<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `dens_sem` FROM `mani1`", sep=""))));
R1l<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `reltamfol_pes1sem` FROM `mani1`", sep=""))));
R1ll<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `relespfol_pes1sem` FROM `mani1`", sep=""))));
R1m<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `reltamfru_pes1sem` FROM `mani1`", sep=""))));
R1n<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `relgrostotram_pes1sem` FROM `mani1`", sep=""))));
R1o<-as.real(as.matrix(sqlQuery(ch, as.is=TRUE, paste("SELECT `rel larfrut_nrosem` FROM `mani1`", sep=""))));

#=====================================================================================================
# MATRIZ de VECTORES de DATOS
#=====================================================================================================
M1<- matrix(nrow = 170, ncol = 71);
M1<-cbind(P1a,P1b,P1c,P1d,P1e,P1f,P1g,P1h,P1i,P1j,P1k,P1l,P1ll,P1m,P1n,P1o,P1p,P1q,P1r,P1s,P1t,P1u,P1v,
          P1w,P1x,P1y,P1z,Q1a,Q1b,Q1c,Q1d,Q1d,Q1e,Q1f,Q1g,Q1h,Q1i,Q1j,Q1k,Q1l,Q1ll,Q1m,Q1n,Q1o,Q1p,Q1q,
          Q1r,Q1s,Q1t,Q1u,Q1v,Q1w,Q1x,Q1y,Q1z,R1a,R1b,R1c,R1d,R1e,R1f,R1g,R1h,R1i,R1j,R1k,R1l,R1ll,R1m,
          R1n,R1o);
#=====================================================================================================
# DISTANCIAS, CLUSTERING y PLOTEOS: HCLUST=COMPLETE
#=====================================================================================================
distancias1<-dist(M1,method="manhattan")
cluster1<-hclust(distancias1)
summary(cluster1)  # sumario de dendograma

distancias2<-dist(M1,method="euclidean")
cluster2<-hclust(distancias2)
distancias3<-dist(M1,method="maximum")
cluster3<-hclust(distancias3)
distancias4<-dist(M1,method="canberra")
cluster4<-hclust(distancias4)
distancias5<-dist(M1,method="minkowski")
cluster5<-hclust(distancias5)
distancias6<-dist(M1,method="binary")
cluster6<-hclust(distancias6)

#Realizamos la comparativa gráfica
op <- par(mfcol = c(3, 3)) #Nos permite presentar
par(las =1) #el gráfico en 4 partes
plot(cluster1,main="Método Manhatan", labels=rem)
plot(cluster2,main="Distancia euclídea",labels=rem)
plot(cluster3,main="Distancia por máximos",labels=rem)
plot(cluster4,main="Método Camberra",labels=rem)
plot(cluster5,main="Metodo Minkowski",labels=rem)
plot(cluster6,main="Metodo Binary",labels=rem)

#=====================================================================================================
# DISTANCIAS, CLUSTERING y PLOTEOS: HCLUST=WARD
#=====================================================================================================
distancias1<-dist(M1,method="manhattan")
cluster1<-hclust(distancias1, method="ward")
distancias2<-dist(M1,method="euclidean")
cluster2<-hclust(distancias2, method="ward")
distancias3<-dist(M1,method="maximum")
cluster3<-hclust(distancias3, method="ward")
distancias4<-dist(M1,method="canberra")
cluster4<-hclust(distancias4, method="ward")
distancias5<-dist(M1,method="minkowski")
cluster5<-hclust(distancias5, method="ward")
distancias6<-dist(M1,method="binary")
cluster6<-hclust(distancias6, method="ward")

#Realizamos la comparativa gráfica
op <- par(mfcol = c(3, 3)) #Nos permite presentar
par(las =1) #el gráfico en 4 partes
plot(cluster1,main="Método Manhatan",labels=rem)
plot(cluster2,main="Distancia euclídea",labels=rem)
plot(cluster3,main="Distancia por máximos",labels=rem)
plot(cluster4,main="Método Camberra",labels=rem)
plot(cluster5,main="Metodo Minkowski",labels=rem)
plot(cluster6,main="Metodo Binary",labels=rem)

#=====================================================================================================
# DISTANCIAS, CLUSTERING y PLOTEOS: HCLUST=SINGLE
#=====================================================================================================
distancias1<-dist(M1,method="manhattan")
cluster1<-hclust(distancias1, method="single")
distancias2<-dist(M1,method="euclidean")
cluster2<-hclust(distancias2, method="single")
distancias3<-dist(M1,method="maximum")
cluster3<-hclust(distancias3, method="single")
distancias4<-dist(M1,method="canberra")
cluster4<-hclust(distancias4, method="single")
distancias5<-dist(M1,method="minkowski")
cluster5<-hclust(distancias5, method="single")
distancias6<-dist(M1,method="binary")
cluster6<-hclust(distancias6, method="single")

#Realizamos la comparativa gráfica
op <- par(mfcol = c(3, 3)) #Nos permite presentar
par(las =1) #el gráfico en 4 partes
plot(cluster1,main="Método Manhatan",labels=rem)
plot(cluster2,main="Distancia euclídea",labels=rem)
plot(cluster3,main="Distancia por máximos",labels=rem)
plot(cluster4,main="Método Camberra",labels=rem)
plot(cluster5,main="Metodo Minkowski",labels=rem)
plot(cluster6,main="Metodo Binary",labels=rem)

#=====================================================================================================
# DISTANCIAS, CLUSTERING y PLOTEOS: HCLUST=AVERAGE
#=====================================================================================================
distancias1<-dist(M1,method="manhattan")
cluster1<-hclust(distancias1, method="average")
distancias2<-dist(M1,method="euclidean")
cluster2<-hclust(distancias2, method="average")
distancias3<-dist(M1,method="maximum")
cluster3<-hclust(distancias3, method="average")
distancias4<-dist(M1,method="canberra")
cluster4<-hclust(distancias4, method="average")
distancias5<-dist(M1,method="minkowski")
cluster5<-hclust(distancias5, method="average")
distancias6<-dist(M1,method="binary")
cluster6<-hclust(distancias6, method="average")

#Realizamos la comparativa gráfica
op <- par(mfcol = c(3, 3)) #Nos permite presentar
par(las =1) #el gráfico en 4 partes
plot(cluster1,main="Método Manhatan",labels=rem)
plot(cluster2,main="Distancia euclídea",labels=rem)
plot(cluster3,main="Distancia por máximos",labels=rem)
plot(cluster4,main="Método Camberra",labels=rem)
plot(cluster5,main="Metodo Minkowski",labels=rem)
plot(cluster6,main="Metodo Binary",labels=rem)

#=====================================================================================================
# DISTANCIAS, CLUSTERING y PLOTEOS: HCLUST= mcquitty
#=====================================================================================================
distancias1<-dist(M1,method="manhattan")
cluster1<-hclust(distancias1, method="mcquitty")
distancias2<-dist(M1,method="euclidean")
cluster2<-hclust(distancias2, method="mcquitty")
distancias3<-dist(M1,method="maximum")
cluster3<-hclust(distancias3, method="mcquitty")
distancias4<-dist(M1,method="canberra")
cluster4<-hclust(distancias4, method="mcquitty")
distancias5<-dist(M1,method="minkowski")
cluster5<-hclust(distancias5, method="mcquitty")
distancias6<-dist(M1,method="binary")
cluster6<-hclust(distancias6, method="mcquitty")

#Realizamos la comparativa gráfica
op <- par(mfcol = c(3, 3)) #Nos permite presentar
par(las =1) #el gráfico en 4 partes
plot(cluster1,main="Método Manhatan",labels=rem)
plot(cluster2,main="Distancia euclídea",labels=rem)
plot(cluster3,main="Distancia por máximos",labels=rem)
plot(cluster4,main="Método Camberra",labels=rem)
plot(cluster5,main="Metodo Minkowski",labels=rem)
plot(cluster6,main="Metodo Binary",labels=rem)

#=====================================================================================================
# DISTANCIAS, CLUSTERING y PLOTEOS: HCLUST=MEDIAN
#=====================================================================================================
distancias1<-dist(M1,method="manhattan")
cluster1<-hclust(distancias1, method="median")
distancias2<-dist(M1,method="euclidean")
cluster2<-hclust(distancias2, method="median")
distancias3<-dist(M1,method="maximum")
cluster3<-hclust(distancias3, method="median")
distancias4<-dist(M1,method="canberra")
cluster4<-hclust(distancias4, method="median")
distancias5<-dist(M1,method="minkowski")
cluster5<-hclust(distancias5, method="median")
distancias6<-dist(M1,method="binary")
cluster6<-hclust(distancias6, method="median")

#Realizamos la comparativa gráfica
op <- par(mfcol = c(3, 3)) #Nos permite presentar
par(las =1) #el gráfico en 4 partes
plot(cluster1,main="Método Manhatan",labels=rem)
plot(cluster2,main="Distancia euclídea",labels=rem)
plot(cluster3,main="Distancia por máximos",labels=rem)
plot(cluster4,main="Método Camberra",labels=rem)
plot(cluster5,main="Metodo Minkowski",labels=rem)
plot(cluster6,main="Metodo Binary",labels=rem)

#=====================================================================================================
# DISTANCIAS, CLUSTERING y PLOTEOS: HCLUST=CENTROID
#=====================================================================================================
distancias1<-dist(M1,method="manhattan")
cluster1<-hclust(distancias1, method="centroid")
distancias2<-dist(M1,method="euclidean")
cluster2<-hclust(distancias2, method="centroid")
distancias3<-dist(M1,method="maximum")
cluster3<-hclust(distancias3,method="centroid")
distancias4<-dist(M1,method="canberra")
cluster4<-hclust(distancias4,method="centroid")
distancias5<-dist(M1,method="minkowski")
cluster5<-hclust(distancias5, method="centroid")
distancias6<-dist(M1,method="binary")
cluster6<-hclust(distancias6, method="centroid")

#Realizamos la comparativa gráfica
op <- par(mfcol = c(3, 3)) #Nos permite presentar
par(las =1) #el gráfico en 4 partes
plot(cluster1,main="Método Manhatan",labels=rem)
plot(cluster2,main="Distancia euclídea",labels=rem)
plot(cluster3,main="Distancia por máximos",labels=rem)
plot(cluster4,main="Método Camberra",labels=rem)
plot(cluster5,main="Metodo Minkowski",labels=rem)
plot(cluster6,main="Metodo Binary",labels=rem)

#======================================================================================================
# PARTICIONADO ALREDEDOR DE MEDIOIDES
#------------------------------------------------------------------------------------------------------
library(cluster)


paso2<-pam(distancias1,2)
paso3<-pam(distancias1,3)
paso4<-pam(distancias1,4)
paso5<-pam(distancias1,5)
paso6<-pam(distancias1,6)

par(mfrow=c(3,3))

plot(paso2)
plot(paso3)
plot(paso4)
plot(paso5)
plot(paso6)

#-----------------------
paso2<-pam(distancias2,2)
paso3<-pam(distancias2,3)
paso4<-pam(distancias2,4)
paso5<-pam(distancias2,5)
paso6<-pam(distancias2,6)

par(mfrow=c(3,3))
#plot(paso1)
plot(paso2)
plot(paso3)
plot(paso4)
plot(paso5)
plot(paso6)

#-----------------------
paso2<-pam(distancias3,2)
paso3<-pam(distancias3,3)
paso4<-pam(distancias3,4)
paso5<-pam(distancias3,5)
paso6<-pam(distancias3,6)

par(mfrow=c(3,3))
#plot(paso1)
plot(paso2)
plot(paso3)
plot(paso4)
plot(paso5)
plot(paso6)

#-----------------------
paso2<-pam(distancias4,2)
paso3<-pam(distancias4,3)
paso4<-pam(distancias4,4)
paso5<-pam(distancias4,5)
paso6<-pam(distancias4,6)

par(mfrow=c(3,3))
#plot(paso1)
plot(paso2)
plot(paso3)
plot(paso4)
plot(paso5)
plot(paso6)

#-----------------------
paso2<-pam(distancias5,2)
paso3<-pam(distancias5,3)
paso4<-pam(distancias5,4)
paso5<-pam(distancias5,5)
paso6<-pam(distancias5,6)

par(mfrow=c(3,3))
#plot(paso1)
plot(paso2)
plot(paso3)
plot(paso4)
plot(paso5)
plot(paso6)

#-----------------------
paso2<-pam(distancias6,2)
paso3<-pam(distancias6,3)
paso4<-pam(distancias6,4)
paso5<-pam(distancias6,5)
paso6<-pam(distancias6,6)

par(mfrow=c(3,3))
#plot(paso1)
plot(paso2)
plot(paso3)
plot(paso4)
plot(paso5)
plot(paso6)
#===============================================================================================