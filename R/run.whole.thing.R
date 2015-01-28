Run1 <- function() {
    year_ret <- NULL
    total_ret <- NULL
    for (yy in 2000:2007) {
        year_ret <- JT.Year.Return(yy)
        total_ret <- rbind(total_ret, year_ret)
    }
    return(total_ret)
}

Run2 <- function() {
    year_ret <- NULL
    total_ret <- NULL
    for (yy in 2000:2007) {
        year_ret <- JT.Year.Return2(yy)
        total_ret <- rbind(total_ret, year_ret)
    }
    return(total_ret)
}
Run3 <- function() {
    year_ret <- NULL
    total_ret <- NULL
    for (yy in 2000:2007) {
        year_ret <- MG.Year.Return(yy)
        total_ret <- rbind(total_ret, year_ret)
    }
    return(total_ret)
}
Run4 <- function() {
    year_ret <- NULL
    total_ret <- NULL
    for (yy in 2000:2007) {
        year_ret <- MG.Year.Return2(yy)
        total_ret <- rbind(total_ret, year_ret)
    }
    return(total_ret)
}
Run5 <- function() {
    year_ret <- NULL
    total_ret <- NULL
    for (yy in 2000:2007) {
        year_ret <- GH.Year.Return(yy)
        total_ret <- rbind(total_ret, year_ret)
    }
    return(total_ret)
}