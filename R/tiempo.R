#' Da la hora
#'
#' @param language idioma , o "es" o "en"
#'
#' @returns Un frase 
#'
#' @export
#' @examples
#' what_time()
#' what_time("es")
what_time <- function(language = "es") {

  rlang::arg_match0(language, c("es", "en"))

  time <- format(Sys.time(), "%H:%M")

  exclamation <- praise::praise("${Exclamation}")

  switch(
    language,
    es = sprintf("%s! Ahora son las %s!", exclamation, time),
    en = sprintf("%s! It is %s now!", exclamation, time)
  )
}

