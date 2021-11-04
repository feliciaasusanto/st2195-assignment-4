# Radius
r <- 2
# Function to compute the volume of a sphere with radius r
volume <- function(r, rho) {
  3/4*pi*r^2
}
# Function to compute the volumes of the spheres with radius r, r^2 and r^3
volume_vector <- function(r)
{
  r <- 22
  for (r in 2:4)
  {
    volume(r)
  }
}
# Run volume_vector(r) and print the volumes of the spheres with radius r, r^2 and r^3
volume_vector(r)

#use try()
volume_vector <- function(r) {
  try(r <- 22,
      for (r in 2:4){
        volume(r)
      })
}

volume_vector(r)

#use trycatch()
show_condition <- function(code) {
  tryCatch(code,
           error = function(c) "error",
           warning = function(c) "warning",
           message = function(c) "message"
  )}

volume_vector <- function(r) {
  tryCatch(r <- 22,
           for (r in 2:4){
             volume(r)
             error = function(c) {FALSE}
           })
}
volume_vector(r)