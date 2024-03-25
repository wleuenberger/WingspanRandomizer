#' @export
FirstPlayer <- function(colors = c('teal', 'red', 'blue', 'green', 'yellow', 'purple')){
  Order = sample(colors)
  return(Order)
}