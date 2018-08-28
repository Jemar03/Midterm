install.packages("imager")

library(imager)
file <- system.file('extdata/parrots.jng' ,package = 'imager')
jemar <-load.image("C:/Users/RM A-225/Documents/R/win-library/3.5/imager/extdata/parrots.png")
plot(jemar)

#Resize Image
library(imager)
file <- system.file('extdata/parrots.jnj' ,package = 'imager')
jemar <- load.image(parrots.jng)
jemar <- resize(jemar, 250, 250)
plot(jemar,main = "Resized")

#ReadImageThuWeb
install.packages("magick")

library(magick)
Jemar <- image_read('http://wallpapers4u.net/w/8/savannah-baby-animal-wildlife-elephant-hd-393c11.jpg')
print(Jemar)

#grayscale
layout(t(1:2))
plot(jemar,rescale=FALSE)
plot(jemar/2,rescale=FALSE)
cscale <- function(r,g,b) rgb(g,r,b)
plot(jemar,colourscale=cscale,rescale=FALSE)
cscale <- function(v) rgb(0,0,v)
grayscale(jemar) %>% plot(colourscale=cscale,rescale=FALSE)

#Invert Image
library(imager)
fpath <- system.file('exdata/parrots.png' , package = 'imager')
im <- load.image("C:/Users/RM A-225/Documents/R/win-library/3.5/imager/extdata/parrots.png")
imrotate(jemar,270) %>% plot(main = "Rotating")


  
