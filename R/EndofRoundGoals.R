#' @export
EndofRoundGoals <- function(Goals = NorthAmericaEuropeOceania){
  Token <- sample(1:nrow(Goals), 4)
  Side <- sample(1:2, 4, replace = TRUE)
  print(paste0("First goal: ", Goals[Token[1], Side[1]]))
  print(paste0("Second goal: ", Goals[Token[2], Side[2]]))
  print(paste0("Third goal: ", Goals[Token[3], Side[3]]))
  print(paste0("Fourth goal: ", Goals[Token[4], Side[4]]))
} 
