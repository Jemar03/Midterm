#Seatwork No. 5 Midterm
#Navarro, Ma. Hannah G.

install.packages("imager")

library(imager)
file <- system.file('extdata/coins.jng' ,package = 'imager')
img <-load.image("C:/Users/RM A-225/Documents/R/win-library/3.5/imager/extdata/coins.png")
plot(img)

#Resizing the image
library(imager)
file <- system.file('extdata/coins.jnj' ,package = 'imager')
img <- load.image(coins.jng)
img <- resize(jemar, 245, 267)
plot(img,main = "Resized Image")


#Reading Image thru web
install.packages("magick")

library(magick)
img <- image_read('https://www.ghirardelli.com/wcsstore/GhirardelliCatalogAssetStore//Images/images/recipe-full-size/1123-frappe-mocha.jpg')
print(img)


#Grayscale
file <- system.file('extdata/parrots.jng' ,package = 'imager')
img <-load.image("C:/Users/RM A-225/Documents/R/win-library/3.5/imager/extdata/parrots.png")
plot(img)

layout(t(1:2))
plot(img,rescale=FALSE)
plot(img/2,rescale=FALSE)
cscale() <- function(r,g,b) rgb(g,r,b)
plot(img,grayscale()=cscale,rescale=FALSE)
cscale <- function(v) rgb(0,0,v)
grayscale(img) %>% plot(grayscale=cscale,rescale=FALSE)


#Rotating the image

library(imager)
fpath <- system.file('exdata/parrots.png' , package = 'imager')
im <- load.image("C:/Users/RM A-225/Documents/R/win-library/3.5/imager/extdata/parrots.png")
imrotate(jemar,270) %>% plot(main = "Rotating")


  
