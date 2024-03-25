#' @export
FirstPlayer <- function(
    colors = c('teal', 'red', 'blue', 'green', 'yellow', 'purple',
               'black', 'white')
    ){
  Order = sample(colors)
  return(Order)
}