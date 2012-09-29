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

#=====================================================================================================
# MATRIZ de VECTORES de DATOS
#=====================================================================================================
M2<- matrix(nrow = 170, ncol = 71);
M2<-cbind(P1a,P1b,P1c,P1d,P1e,P1f,P1g,P1h,P1i,P1j,P1k,P1l,P1ll,P1m,P1n,P1o,P1p,P1q,P1r,P1s,P1t,P1u,P1v,
          P1w,P1x,P1y,P1z,Q1a,Q1b,Q1c,Q1d,Q1e,Q1f,Q1g,Q1h,Q1i,Q1j,Q1k,Q1l,Q1ll,Q1m,Q1n,Q1o,Q1p,Q1q,
          Q1r,Q1s,Q1t,Q1u,Q1v,Q1w,Q1x,Q1y,Q1z,R1a,R1b,R1c,R1d,R1e,R1f,R1g,R1h,R1i,R1j,R1k,R1l,R1ll,R1m,
          R1n,R1o);
M1<-scale(M2)
#=====================================================================================================
hc<-hclust(dist(M2,"euclidean"),"ward")
plot(hc, hang=-1) , labels=rem)
plot(hc, hang=-2) , labels=rem)
rect.hclust(hc,3, border="green")
rect.hclust(hc,5, border="red")
rect.hclust(hc,10, border="blue")
#rect.hclust(hc,20, border="yellow")
grp<-cutree(hc,3)
#=====================================================================================================
# TRASNPUESTA Y ESCALADA PARA DETERMINAR VARIABLES 
#=====================================================================================================
N1<-t(M1)
O1<-N1
O1
hc<-hclust(dist(N1,"euclidean"),"ward")
plot(hc, hang=-1) #, labels=rem)
plot(hc, hang=-2) #, labels=rem)
rect.hclust(hc,3, border="green")
rect.hclust(hc,5, border="red")
rect.hclust(hc,10, border="blue")



