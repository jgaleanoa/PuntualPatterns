# Funciones propias ppp
graph_ppp <- function(ppp_object, sigma, main = "") {
  ds <- density.ppp(ppp_object, sigma = sigma)
  plot(ds, main = paste0(main, ", ancho de banda: ", sigma))
}