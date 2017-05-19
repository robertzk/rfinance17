train <- function(dataframe, col) {
  input$col  <- col
  input$mean <- mean(dataframe[[col]], na.rm = TRUE)
  dataframe[is.na(dataframe[[col]]), col] <-
    input$mean
  dataframe
}
predict <- function(dataframe, ...) {
  col <- input$col
  dataframe[is.na(dataframe[[col]]), col] <-
    input$mean
  dataframe
}

