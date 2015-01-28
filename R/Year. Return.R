JT.Year.Return <- function(yyyy) {
    data <- Select.Data(yyyy, 01)
    month_tab <- NULL
    return_table <- NULL
    for (i in 1:12) {
        mm <- i
        for (pro in 1:6) {
            a <- JT.6.6.Return(yyyy,mm,pro,data)
            month_tab <- rbind(month_tab, a)
        }
        return_table <- rbind(return_table, 
                              c(mean(month_tab[,1]),mean(month_tab[,2])))
        month_tab <- NULL
    }
    return(return_table)
}

JT.Year.Return2 <- function(yyyy) {
    data <- Select.Data(yyyy, 01)
    month_tab <- NULL
    return_table <- NULL
    for (i in 1:12) {
        mm <- i
        for (pro in 1:6) {
            a <- JT.6.12.Return(yyyy,mm,pro,data)
            month_tab <- rbind(month_tab, a)
        }
        return_table <- rbind(return_table, 
                              c(mean(month_tab[,1]),mean(month_tab[,2])))
        month_tab <- NULL
    }
    return(return_table)
}

MG.Year.Return <- function(yyyy) {
    data <- Select.Data(yyyy, 01)
    month_tab <- NULL
    return_table <- NULL
    for (i in 1:12) {
        mm <- i
        for (pro in 1:6) {
            a <- MG.6.6.Return(yyyy,mm,pro,data)
            month_tab <- rbind(month_tab, a)
        }
        return_table <- rbind(return_table, 
                              c(mean(month_tab[,1]),mean(month_tab[,2])))
        month_tab <- NULL
    }
    return(return_table)
}

MG.Year.Return2 <- function(yyyy) {
    data <- Select.Data(yyyy, 01)
    month_tab <- NULL
    return_table <- NULL
    for (i in 1:12) {
        mm <- i
        for (pro in 1:6) {
            a <- MG.6.12.Return(yyyy,mm,pro,data)
            month_tab <- rbind(month_tab, a)
        }
        return_table <- rbind(return_table, 
                              c(mean(month_tab[,1]),mean(month_tab[,2])))
        month_tab <- NULL
    }
    return(return_table)
}

GH.Year.Return <- function(yyyy) {
    data <- Select.Data(yyyy, 01)
    month_tab <- NULL
    return_table <- NULL
    for (i in 1:12) {
        mm <- i
        for (pro in 1:6) {
            a <- GH.Return(yyyy,mm,pro,data)
            month_tab <- rbind(month_tab, a)
        }
        return_table <- rbind(return_table, 
                              c(mean(month_tab[,1]),mean(month_tab[,2])))
        month_tab <- NULL
    }
    return(return_table)
}