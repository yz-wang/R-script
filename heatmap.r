{\rtf1\ansi\ansicpg936\cocoartf1348\cocoasubrtf170
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural

\f0\fs24 \cf0 setwd("/Users/apple/desktop/R")\
data<-read.table("hak.txt",head=T,row.names=1)\
pdf("heatmap.pdf",12,16)\
library("gplots")\
library(RColorBrewer)\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural
\cf0 par(oma=c(0,0,0,20))\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural
\cf0 col=colorRampPalette(c("lightblue","yellow","orange","red"),bias=3)(3000)\
heatmap.2(as.matrix(data),margins=(c(2,2)),lmat=rbind(c(4,4),c(0,3),c(2,1),c(0,5)),lhei=c(0.5,0.8,4,0.5),lwid=c(1,3),cexRow=2,cexCol=2,col=col,scale='none',trace="none",key.title=NA,keysize=0.06,key.xlab="rpkm",colsep=c(1:ncol(data)),rowsep=c(1:nrow(data)),sepcolor="black",sepwidth=c(0.01,0.01),Colv=FALSE,dendrogram="row")\
\
\
}