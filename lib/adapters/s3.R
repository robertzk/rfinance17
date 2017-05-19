read <- function(name) {
  s3mpi::s3read(name)
}

write <- function(object, name) {
  s3mpi::s3store(object, name) 
}


