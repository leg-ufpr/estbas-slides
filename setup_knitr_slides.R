knitr::opts_chunk$set(comment = "#",
                      echo = FALSE,
                      ## cache = TRUE,
                      tidy = FALSE,
                      fig.align = "center",
                      out.width = "60%",
                      fig.width = 6,
                      fig.height = 4,
                      fig.path = "figures/",
                      size = "scriptsize")
options(width = 80)
def.chunk.hook  <- knitr::knit_hooks$get("chunk")
## Por padrão a opção size acima só funciona em arquivos Rnw e não em
## Rmd. Por isso, esse comando abaixo força a conversão do tamanho da
## fonte nos chunks.
## https://stackoverflow.com/questions/25646333/code-chunk-font-size-in-rmarkdown-with-knitr-and-latex
knitr::knit_hooks$set(chunk = function(x, options){
                      x <- def.chunk.hook(x, options)
                      ifelse(options$size != "normalsize",
                             paste0("\\", options$size,"\n\n", x,
                                    "\n\n \\normalsize"), x)
                  })
