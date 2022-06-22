# Funciones propias ppp
graph_ppp <- function(ppp_object, sigma, main = "") {
  ds <- density.ppp(ppp_object, sigma = sigma)
  plot(ds, main = paste0(main, ", ancho de banda: ", sigma))
}

ncuadrantes <- function(bd){
  grid <- expand.grid(x = 1:10, y = 1:10)
  optimo <- 0
  
  for(i in 1:dim(grid)[1]){
    conteo <- quadratcount(X = bd, nx = grid[i,1], ny = grid[i,2])
    if(!any(conteo == 0) & grid[i,1]*grid[i,2] > optimo){
      optimo <- i
    }
  }
  
  return(grid[optimo,])
}