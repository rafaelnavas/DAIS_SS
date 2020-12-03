
rm(list = ls())
hru = read.dbf("C:/demo_plus/augusto3/Shapefiles/hrus2.dbf")
hru = hru[,c("Subbasin", "HRUS")]
con = strsplit(paste(hru$HRUS),split = ", ")

myhru = matrix(ncol=2,nrow = 0)
for(i in 1:length(con)){
for(j in 1:length(con[[i]])){
  myhru = rbind(myhru,
              as.numeric(c(hru$Subbasin[i],con[[i]][j]))) 
}
}



myhru = myhru[order(myhru[,2]),]
myhru = myhru[-1,]

colnames(myhru) = c("subbasin","hru")
myhru = data.frame(myhru)

ar = read.fwf("C:/demo_plus/augusto3/mgt_base/hru.con",widths = c(37,14), n=5204, colClasses=c("NULL", "numeric"), skip = 2)
myhru$area = ar$V2

head(myhru)

rot = read.fwf("C:/demo_plus/augusto3/mgt_base/hru-data.hru",skip = 2,widths = c(81,18),colClasses=c("NULL", "character"))
rot = rot$V2
rot = gsub("\\s", "", rot)

myhru$rot = rot


head(myhru)
saveRDS(myhru,"C:/Users/Rafael Navas/Documents/R_projects/DAIS_SS/utilidades/hru_info.RDS")
