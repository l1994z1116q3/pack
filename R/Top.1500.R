Top.1500 <- function(yyyy,mm,pro,data) {
    avail <- NULL
    
    yeartime <- year(ymd(paste(yyyy,mm,01,sep="-")) %m+% months(-pro))
    
    avail <- filter(yearly, year==yeartime, top.1500)
    
    stock_list <- unique(avail$id)
    
    data <- filter(data, id %in% stock_list, tret<2, tret>-2)
    
    data <- mutate(data, month = month(v.date), year = year(v.date))
    
    invisible(data)
}