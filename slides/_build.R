build <- function(ignore.path = "docs", quiet = FALSE){
    fls <- dir(pattern = "*.rmd$", recursive = TRUE, ignore.case = TRUE)
    if(length(fls) == 0){ stop("No .Rmd file found") }
    fls <- grep(ignore.path, fls, value = TRUE, invert = TRUE)
    fls <- normalizePath(fls)
    fls.out <- gsub("\\.[Rr]md$", ".pdf", fls)
    for(i in 1:length(fls)){
        rmarkdown::render(input = fls[i],
                          output_file = fls.out[i],
                          quiet = quiet)
    }
}

build()
