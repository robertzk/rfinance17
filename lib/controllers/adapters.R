function(input) {
  adapter_class <- function(r, w) {
    list(read = r, write = w)
  }

  # Construct the adapter object.  
  adapter_class(
   input$read, input$write)
}

