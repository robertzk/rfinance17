function(input) {
  if (isTRUE(input$column_transformation)) {
    mungebits2::mungebit$new(
      mungebits2::column_transformation(input$train),
      mungebits2::column_transformation(input$predict))
  } else {
    mungebits2::mungebit$new(input$train, input$predict)
  }
}


