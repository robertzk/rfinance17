train <- predict <- function(dataframe, col) {
  dataframe[order(dataframe[[col]]), ]
}

