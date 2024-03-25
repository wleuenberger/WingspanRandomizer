#' @export
FirstPlayerDuet <- function(colors = c('teal', 'black', 'white')){
  Order = sample(colors)
  return(Order)
}