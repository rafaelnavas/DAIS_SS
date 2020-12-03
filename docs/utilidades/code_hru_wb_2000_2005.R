rm(list = ls())

# numero de hru por rotacion
hru_info = readRDS("~/R_projects/DAIS_SS/utilidades/hru_info.RDS")
id.agrc3_rot = hru_info$hru[hru_info$rot%in%c("agrc3_rot")]
id.agrc4_rot = hru_info$hru[hru_info$rot%in%c("agrc4_rot")]

length(id.agrc4_rot)

# w.agrc3 = hru_info$area[id.agrc3_rot]
# w.agrc4 = hru_info$area[id.agrc4_rot]

# numero de años en la modelacion (2000-2005)
nyear = 6

setwd("C:/demo_plus/augusto3/mgt_base")

# lectura de hru_wb (cantidad de agua)
ff = "hru_wb_mon.txt"
tt = unlist(read.table(ff, skip = 1, nrows = 1))
hru = read.table(ff, skip = 3, col.names = tt)
hru = hru[,c("yr","mon","day","unit","precip","wateryld", "irr", "et")]
#seleccion por rotacion
hru_agrc3 = hru[hru$unit%in%id.agrc3_rot,]
hru_agrc4 = hru[hru$unit%in%id.agrc4_rot,]
#agregacion por cada hru
hru_agrc3 = aggregate(cbind(precip,wateryld,irr,et)~unit,data=hru_agrc3, FUN=sum)
hru_agrc4 = aggregate(cbind(precip,wateryld,irr,et)~unit,data=hru_agrc4, FUN=sum)

#salida
precip_3 = hru_agrc3$precip
wateryld_3 = hru_agrc3$wateryld
irr_3 = hru_agrc3$irr
et_3 = hru_agrc3$et

precip_4 = hru_agrc4$precip
wateryld_4 = hru_agrc4$wateryld
irr_4 = hru_agrc4$irr
et_4 = hru_agrc4$et

#######################
setwd("C:/demo_plus/augusto3/mgt_03_1")

# lectura de hru_wb (cantidad de agua)
ff = "hru_wb_mon.txt"
tt = unlist(read.table(ff, skip = 1, nrows = 1))
hru = read.table(ff, skip = 3, col.names = tt)
hru = hru[,c("yr","mon","day","unit","precip","wateryld", "irr", "et")]
#seleccion por rotacion
hru_agrc3 = hru[hru$unit%in%id.agrc3_rot,]
hru_agrc4 = hru[hru$unit%in%id.agrc4_rot,]
#agregacion por cada hru
hru_agrc3 = aggregate(cbind(precip,wateryld,irr,et)~unit,data=hru_agrc3, FUN=sum)
hru_agrc4 = aggregate(cbind(precip,wateryld,irr,et)~unit,data=hru_agrc4, FUN=sum)

#salida
precip_3 = cbind(base=precip_3,mgt_03_1=hru_agrc3$precip)
wateryld_3 = cbind(base=wateryld_3,mgt_03_1=hru_agrc3$wateryld)
irr_3 = cbind(base=irr_3,mgt_03_1=hru_agrc3$irr)
et_3 = cbind(base=et_3,mgt_03_1=hru_agrc3$et)

precip_4 = cbind(base=precip_4,mgt_03_1=hru_agrc4$precip)
wateryld_4 = cbind(base=wateryld_4,mgt_03_1=hru_agrc4$wateryld)
irr_4 = cbind(base=irr_4,mgt_03_1=hru_agrc4$irr)
et_4 = cbind(base=et_4,mgt_03_1=hru_agrc4$et)


##############################################
setwd("C:/demo_plus/augusto3/mgt_03_1y6")

# lectura de hru_wb (cantidad de agua)
ff = "hru_wb_mon.txt"
tt = unlist(read.table(ff, skip = 1, nrows = 1))
hru = read.table(ff, skip = 3, col.names = tt)
hru = hru[,c("yr","mon","day","unit","precip","wateryld", "irr", "et")]
#seleccion por rotacion
hru_agrc3 = hru[hru$unit%in%id.agrc3_rot,]
hru_agrc4 = hru[hru$unit%in%id.agrc4_rot,]
#agregacion por cada hru
hru_agrc3 = aggregate(cbind(precip,wateryld,irr,et)~unit,data=hru_agrc3, FUN=sum)
hru_agrc4 = aggregate(cbind(precip,wateryld,irr,et)~unit,data=hru_agrc4, FUN=sum)

#salida
precip_3 = cbind(precip_3,mgt_03_1y6=hru_agrc3$precip)
wateryld_3 = cbind(wateryld_3,mgt_03_1y6=hru_agrc3$wateryld)
irr_3 = cbind(irr_3,mgt_03_1y6=hru_agrc3$irr)
et_3 = cbind(et_3,mgt_03_1y6=hru_agrc3$et)

precip_4 = cbind(precip_4,mgt_03_1y6=hru_agrc4$precip)
wateryld_4 = cbind(wateryld_4,mgt_03_1y6=hru_agrc4$wateryld)
irr_4 = cbind(irr_4,mgt_03_1y6=hru_agrc4$irr)
et_4 = cbind(et_4,mgt_03_1y6=hru_agrc4$et)


##############################################
setwd("C:/demo_plus/augusto3/mgt_03_6")

# lectura de hru_wb (cantidad de agua)
ff = "hru_wb_mon.txt"
tt = unlist(read.table(ff, skip = 1, nrows = 1))
hru = read.table(ff, skip = 3, col.names = tt)
hru = hru[,c("yr","mon","day","unit","precip","wateryld", "irr", "et")]
#seleccion por rotacion
hru_agrc3 = hru[hru$unit%in%id.agrc3_rot,]
hru_agrc4 = hru[hru$unit%in%id.agrc4_rot,]
#agregacion por cada hru
hru_agrc3 = aggregate(cbind(precip,wateryld,irr,et)~unit,data=hru_agrc3, FUN=sum)
hru_agrc4 = aggregate(cbind(precip,wateryld,irr,et)~unit,data=hru_agrc4, FUN=sum)

#salida
precip_3 = cbind(precip_3,mgt_03_6=hru_agrc3$precip)
wateryld_3 = cbind(wateryld_3,mgt_03_6=hru_agrc3$wateryld)
irr_3 = cbind(irr_3,mgt_03_6=hru_agrc3$irr)
et_3 = cbind(et_3,mgt_03_6=hru_agrc3$et)

precip_4 = cbind(precip_4,mgt_03_6=hru_agrc4$precip)
wateryld_4 = cbind(wateryld_4,mgt_03_6=hru_agrc4$wateryld)
irr_4 = cbind(irr_4,mgt_03_6=hru_agrc4$irr)
et_4 = cbind(et_4,mgt_03_6=hru_agrc4$et)



##############################################
setwd("C:/demo_plus/augusto3/mgt_04_1")

# lectura de hru_wb (cantidad de agua)
ff = "hru_wb_mon.txt"
tt = unlist(read.table(ff, skip = 1, nrows = 1))
hru = read.table(ff, skip = 3, col.names = tt)
hru = hru[,c("yr","mon","day","unit","precip","wateryld", "irr", "et")]
#seleccion por rotacion
hru_agrc3 = hru[hru$unit%in%id.agrc3_rot,]
hru_agrc4 = hru[hru$unit%in%id.agrc4_rot,]
#agregacion por cada hru
hru_agrc3 = aggregate(cbind(precip,wateryld,irr,et)~unit,data=hru_agrc3, FUN=sum)
hru_agrc4 = aggregate(cbind(precip,wateryld,irr,et)~unit,data=hru_agrc4, FUN=sum)

#salida
precip_3 = cbind(precip_3,mgt_04_1=hru_agrc3$precip)
wateryld_3 = cbind(wateryld_3,mgt_04_1=hru_agrc3$wateryld)
irr_3 = cbind(irr_3,mgt_04_1=hru_agrc3$irr)
et_3 = cbind(et_3,mgt_04_1=hru_agrc3$et)

precip_4 = cbind(precip_4,mgt_04_1=hru_agrc4$precip)
wateryld_4 = cbind(wateryld_4,mgt_04_1=hru_agrc4$wateryld)
irr_4 = cbind(irr_4,mgt_04_1=hru_agrc4$irr)
et_4 = cbind(et_4,mgt_04_1=hru_agrc4$et)


##############################################
setwd("C:/demo_plus/augusto3/mgt_04_1y6")

# lectura de hru_wb (cantidad de agua)
ff = "hru_wb_mon.txt"
tt = unlist(read.table(ff, skip = 1, nrows = 1))
hru = read.table(ff, skip = 3, col.names = tt)
hru = hru[,c("yr","mon","day","unit","precip","wateryld", "irr", "et")]
#seleccion por rotacion
hru_agrc3 = hru[hru$unit%in%id.agrc3_rot,]
hru_agrc4 = hru[hru$unit%in%id.agrc4_rot,]
#agregacion por cada hru
hru_agrc3 = aggregate(cbind(precip,wateryld,irr,et)~unit,data=hru_agrc3, FUN=sum)
hru_agrc4 = aggregate(cbind(precip,wateryld,irr,et)~unit,data=hru_agrc4, FUN=sum)

#salida
precip_3 = cbind(precip_3,mgt_04_1y6=hru_agrc3$precip)
wateryld_3 = cbind(wateryld_3,mgt_04_1y6=hru_agrc3$wateryld)
irr_3 = cbind(irr_3,mgt_04_1y6=hru_agrc3$irr)
et_3 = cbind(et_3,mgt_04_1y6=hru_agrc3$et)

precip_4 = cbind(precip_4,mgt_04_1y6=hru_agrc4$precip)
wateryld_4 = cbind(wateryld_4,mgt_04_1y6=hru_agrc4$wateryld)
irr_4 = cbind(irr_4,mgt_04_1y6=hru_agrc4$irr)
et_4 = cbind(et_4,mgt_04_1y6=hru_agrc4$et)




##############################################
setwd("C:/demo_plus/augusto3/mgt_04_6")

# lectura de hru_wb (cantidad de agua)
ff = "hru_wb_mon.txt"
tt = unlist(read.table(ff, skip = 1, nrows = 1))
hru = read.table(ff, skip = 3, col.names = tt)
hru = hru[,c("yr","mon","day","unit","precip","wateryld", "irr", "et")]
#seleccion por rotacion
hru_agrc3 = hru[hru$unit%in%id.agrc3_rot,]
hru_agrc4 = hru[hru$unit%in%id.agrc4_rot,]
#agregacion por cada hru
hru_agrc3 = aggregate(cbind(precip,wateryld,irr,et)~unit,data=hru_agrc3, FUN=sum)
hru_agrc4 = aggregate(cbind(precip,wateryld,irr,et)~unit,data=hru_agrc4, FUN=sum)

#salida
precip_3 = cbind(precip_3,mgt_04_6=hru_agrc3$precip)
wateryld_3 = cbind(wateryld_3,mgt_04_6=hru_agrc3$wateryld)
irr_3 = cbind(irr_3,mgt_04_6=hru_agrc3$irr)
et_3 = cbind(et_3,mgt_04_6=hru_agrc3$et)

precip_4 = cbind(precip_4,mgt_04_6=hru_agrc4$precip)
wateryld_4 = cbind(wateryld_4,mgt_04_6=hru_agrc4$wateryld)
irr_4 = cbind(irr_4,mgt_04_6=hru_agrc4$irr)
et_4 = cbind(et_4,mgt_04_6=hru_agrc4$et)





##############################################
setwd("C:/demo_plus/augusto3/mgt_05_01")

# lectura de hru_wb (cantidad de agua)
ff = "hru_wb_mon.txt"
tt = unlist(read.table(ff, skip = 1, nrows = 1))
hru = read.table(ff, skip = 3, col.names = tt)
hru = hru[,c("yr","mon","day","unit","precip","wateryld", "irr", "et")]
#seleccion por rotacion
hru_agrc3 = hru[hru$unit%in%id.agrc3_rot,]
hru_agrc4 = hru[hru$unit%in%id.agrc4_rot,]
#agregacion por cada hru
hru_agrc3 = aggregate(cbind(precip,wateryld,irr,et)~unit,data=hru_agrc3, FUN=sum)
hru_agrc4 = aggregate(cbind(precip,wateryld,irr,et)~unit,data=hru_agrc4, FUN=sum)

#salida
precip_3 = cbind(precip_3,mgt_05_01=hru_agrc3$precip)
wateryld_3 = cbind(wateryld_3,mgt_05_01=hru_agrc3$wateryld)
irr_3 = cbind(irr_3,mgt_05_01=hru_agrc3$irr)
et_3 = cbind(et_3,mgt_05_01=hru_agrc3$et)

precip_4 = cbind(precip_4,mgt_05_01=hru_agrc4$precip)
wateryld_4 = cbind(wateryld_4,mgt_05_01=hru_agrc4$wateryld)
irr_4 = cbind(irr_4,mgt_05_01=hru_agrc4$irr)
et_4 = cbind(et_4,mgt_05_01=hru_agrc4$et)



##############################################
setwd("C:/demo_plus/augusto3/mgt_05_1y6")

# lectura de hru_wb (cantidad de agua)
ff = "hru_wb_mon.txt"
tt = unlist(read.table(ff, skip = 1, nrows = 1))
hru = read.table(ff, skip = 3, col.names = tt)
hru = hru[,c("yr","mon","day","unit","precip","wateryld", "irr", "et")]
#seleccion por rotacion
hru_agrc3 = hru[hru$unit%in%id.agrc3_rot,]
hru_agrc4 = hru[hru$unit%in%id.agrc4_rot,]
#agregacion por cada hru
hru_agrc3 = aggregate(cbind(precip,wateryld,irr,et)~unit,data=hru_agrc3, FUN=sum)
hru_agrc4 = aggregate(cbind(precip,wateryld,irr,et)~unit,data=hru_agrc4, FUN=sum)

#salida
precip_3 = cbind(precip_3,mgt_05_1y6=hru_agrc3$precip)
wateryld_3 = cbind(wateryld_3,mgt_05_1y6=hru_agrc3$wateryld)
irr_3 = cbind(irr_3,mgt_05_1y6=hru_agrc3$irr)
et_3 = cbind(et_3,mgt_05_1y6=hru_agrc3$et)

precip_4 = cbind(precip_4,mgt_05_1y6=hru_agrc4$precip)
wateryld_4 = cbind(wateryld_4,mgt_05_1y6=hru_agrc4$wateryld)
irr_4 = cbind(irr_4,mgt_05_1y6=hru_agrc4$irr)
et_4 = cbind(et_4,mgt_05_1y6=hru_agrc4$et)


##############################################
setwd("C:/demo_plus/augusto3/mgt_05_6")

# lectura de hru_wb (cantidad de agua)
ff = "hru_wb_mon.txt"
tt = unlist(read.table(ff, skip = 1, nrows = 1))
hru = read.table(ff, skip = 3, col.names = tt)
hru = hru[,c("yr","mon","day","unit","precip","wateryld", "irr", "et")]
#seleccion por rotacion
hru_agrc3 = hru[hru$unit%in%id.agrc3_rot,]
hru_agrc4 = hru[hru$unit%in%id.agrc4_rot,]
#agregacion por cada hru
hru_agrc3 = aggregate(cbind(precip,wateryld,irr,et)~unit,data=hru_agrc3, FUN=sum)
hru_agrc4 = aggregate(cbind(precip,wateryld,irr,et)~unit,data=hru_agrc4, FUN=sum)

#salida
precip_3 = cbind(precip_3,mgt_05_6=hru_agrc3$precip)
wateryld_3 = cbind(wateryld_3,mgt_05_6=hru_agrc3$wateryld)
irr_3 = cbind(irr_3,mgt_05_6=hru_agrc3$irr)
et_3 = cbind(et_3,mgt_05_6=hru_agrc3$et)

precip_4 = cbind(precip_4,mgt_05_6=hru_agrc4$precip)
wateryld_4 = cbind(wateryld_4,mgt_05_6=hru_agrc4$wateryld)
irr_4 = cbind(irr_4,mgt_05_6=hru_agrc4$irr)
et_4 = cbind(et_4,mgt_05_6=hru_agrc4$et)



save(list = c("precip_3", "wateryld_3", "irr_3", "et_3",
              "precip_4", "wateryld_4", "irr_4", "et_4"),
     file = "C:/Users/Rafael Navas/Documents/R_projects/DAIS_SS/utilidades/hru_wb_2000_2005.RDATA")









# #promedio ponderado por area
# qt_agrc3 = weighted.mean(hru_agrc3$wateryld, w=w.agrc3)/nyear
# qt_agrc4 = weighted.mean(hru_agrc4$wateryld, w=w.agrc4)/nyear
# irr_agrc3 = weighted.mean(hru_agrc3$irr, w=w.agrc3)/nyear
# irr_agrc4 = weighted.mean(hru_agrc4$irr, w=w.agrc4)/nyear
# p_agrc3 = weighted.mean(hru_agrc3$precip, w=w.agrc3)/nyear
# p_agrc4 = weighted.mean(hru_agrc4$precip, w=w.agrc4)/nyear
# et_agrc3 = weighted.mean(hru_agrc3$et, w=w.agrc3)/nyear
# et_agrc4 = weighted.mean(hru_agrc4$et, w=w.agrc4)/nyear
# 
# # lectura de hru_pw (rendimeinto del cultivo)








# 
# 
# summary(hru_agrc3)
# 
# 
# length(hru_agrc3$wateryld)
# length(w.agrc3)
# 
# et_base = sum(hru_agrc4$et)
# 
# 
# 
# 
# 
# setwd("C:/demo_plus/augusto3/mgt_03_1")
# 
# # lectura de hru_wb
# ff = "hru_wb_mon.txt"
# tt = unlist(read.table(ff, skip = 1, nrows = 1))
# hru = read.table(ff, skip = 3, col.names = tt)
# hru = hru[,c("yr","mon","day","unit","precip","wateryld", "irr", "et")]
# 
# hru_info = readRDS("~/R_projects/DAIS_SS/utilidades/hru_info.RDS")
# id.irr = hru_info$hru[hru_info$rot%in%c("agrc3_rot", "agrc4_rot")]
# 
# hru_mgt_03_01 = hru[hru$unit%in%id.irr,]
# qt_mgt_03_01 = sum(hru_mgt_03_01$wateryld)
# et_mgt_03_01 = sum(hru_mgt_03_01$et)
# 
# 
# 
# 
# 
# 
# 
# 
# 
# # lectura de caudal
# ff = "channel_sd_day.txt"
# tt = unlist(read.table(ff, skip = 1, nrows = 1))
# qsim = read.table(ff, skip = 3, col.names = tt)
# qsim = qsim[qsim$unit==2,c("yr","mon","day","flo_out")]
# qsim = data.frame(Rdate = as.Date(paste(qsim$yr,qsim$mon,qsim$day,sep="-")),
#                   flow = qsim$flo_out)
# 
# 
# summary(qsim)
# 
# 
# 
# 
# 
# 
# 
# head(hru)
# 

# #lectura mgt_out
# ff = "mgt_out.txt"
# irr = read.fwf(ff, widths = c(13,44,8), skip = 3, colClasses=c("numeric","NULL","character"),
#               col.names = c("hru","NULL","is.irr"))
# irr = irr[irr$is.irr=="IRRIGATE",]
# irr = unique(irr$hru)
# length(irr)
# 
# 
# 
# getwd()
