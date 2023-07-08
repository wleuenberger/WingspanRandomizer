FirstPlayer <- function(colors = c('teal', 'red', 'blue', 'green', 'yellow', 'purple')){
  Order = sample(colors)
  return(Order)
}

FirstPlayer()

BaseGoals <- data.frame(
  FirstSide = c("Total birds", 
                "Platform nest birds with eggs",
                "Cup nest birds with eggs", 
                "Cavity nest birds with eggs",
                "Ground nest birds with eggs", 
                "Birds in forest", 
                "Birds in grassland",
                "Birds in wetland"),
  SecondSide = c("Sets of eggs",
                 "Eggs in platform nests", 
                 "Eggs in cup nests",
                 "Eggs in cavity nests",
                 "Eggs in ground nests", 
                 "Eggs in forest",
                 "Eggs in grassland",
                 "Eggs in wetland"))
EuropeGoals <- data.frame(
  FirstSide = c("Birds worth more than four points",
                "Birds with tucked cards", 
                "Food in personal supply", 
                "White and no powers", 
                "Birds in one row"),
  SecondSide = c("Birds with no eggs",
                 "Food cost of played birds",
                 "Cards in hand",
                 "Brown powers",
                 "Filled columns"))
OceaniaGoals <- data.frame(
  FirstSide = c("Beak pointing left",
                'Inverts in food cost of your birds',
                'Cubes on "play a bird"',
                'No goal'),
  SecondSide = c('Beak pointing right',
                 'Berries and wheat in food cost of your birds',
                 'Birds worth <= 3 points',
                 'Rats and fish in food cost of your birds'))

NorthAmericaEuropeOceania <- 
  rbind(BaseGoals, EuropeGoals, OceaniaGoals)
  
NorthAmericaEurope <- 
  rbind(BaseGoals, EuropeGoals)

NorthAmerica <- 
  BaseGoals

EuropeOceana <- 
  rbind(EuropeGoals, OceaniaGoals)
  
EndofRoundGoals <- function(Goals = NorthAmericaEuropeOceania){
  Token <- sample(1:nrow(Goals), 4)
  Side <- sample(1:2, 4, replace = TRUE)
  print(paste0("First goal: ", Goals[Token[1], Side[1]]))
  print(paste0("Second goal: ", Goals[Token[2], Side[2]]))
  print(paste0("Third goal: ", Goals[Token[3], Side[3]]))
  print(paste0("Fourth goal: ", Goals[Token[4], Side[4]]))
}  

EndofRoundGoals()  
        