Select.Data <- function(yyyy, mm) {
    name <- paste("daily", yyyy, sep=".")
    name2 <- paste("daily", yyyy-1, sep=".")
    name3 <- paste("daily", yyyy-2, sep=".")
    if (mm %in% c(7,8,9,10,11,12)) {
        data <- rbind(eval(parse(text = name)),eval(parse(text = name2)))
    } else {
        data <- rbind(eval(parse(text = name)),
                      eval(parse(text = name2)),
                      eval(parse(text = name3)))
    }
    data <- left_join(select(data,id,symbol,v.date,price,tret), 
                      select(secref,id,m.ind), by=c("id"))
    data <- left_join(mutate(data,year=year(v.date)),
                      select(yearly,id,top.1500, year), 
                      by=c("year","id"))
    data <- tbl_df(data)
    invisible(data)
}
