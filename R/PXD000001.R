px1files <- function(...) {
    d <- system.file("extdata", package = "PXD000001")
    fls <- list.files(d, ...)
    tmterw <- "TMT_Erwinia_1uLSike_Top10HCD_isol2_45stepped_60min_01-20141210"
    fls <- append(fls,
                   c(msdata::proteomics(pattern = tmterw, ...),
                     msdata::ident(pattern = tmterw, ...)))
    return(fls)
}

px1get <- function(f, ...) {
    if (length(f) == 1 & f == "all") {
        f <- px1files(full.names = TRUE)
    } else {
        fls <- px1files()
        i <- match(f, fls)
        k <- is.na(i)
        if (any(k))
            stop(f[k], " not found. See px1files() for available files.")
        fls <- px1files(full.names = TRUE)
        f <- fls[i]
    }
    res <- file.copy(f, getwd(), ...)
    message("Copied ", sum(res), " file(s).")
    if (any(!res))
        warning("Files that could not be copied: ",
                paste(f[!res], collapse = ", "))
}
