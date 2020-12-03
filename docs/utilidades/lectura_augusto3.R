rm(list = ls())

setwd("C:/demo_plus/augusto3/mgt_base")

# lectura de caudal
ff = "channel_sd_day.txt"
tt = unlist(read.table(ff, skip = 1, nrows = 1))
qsim = read.table(ff, skip = 3, col.names = tt)
qsim = qsim[qsim$unit==2,c("yr","mon","day","flo_out")]
qsim = data.frame(Rdate = as.Date(paste(qsim$yr,qsim$mon,qsim$day,sep="-")), 
                  flow = qsim$flo_out)

# lectura de hru_wb
ff = "hru_wb_mon.txt"
tt = unlist(read.table(ff, skip = 1, nrows = 1))
hru = read.table(ff, skip = 3, col.names = tt)
hru = hru[,c("yr","mon","day","unit","precip", "irr", "et")]

#lectura mgt_out
ff = "mgt_out.txt"
irr = read.fwf(ff, widths = c(13,44,8), skip = 3, colClasses=c("numeric","NULL","character"),
              col.names = c("hru","NULL","is.irr"))
irr = irr[irr$is.irr=="IRRIGATE",]
irr = unique(irr$hru)
length(irr)



getwd()
