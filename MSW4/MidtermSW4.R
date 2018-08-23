install.packages("imager")

library(imager)
file <- system.file('extdata/hams.jpg' ,package = 'imager')
jemar <-load.image(file)
plot(jemar)

#ReadImageThruLocal
library(imager)
file <- system.file('extdata/hams.jpj' ,package = 'imager')
jemar <- load.image(file)
jemar <- resize(jemar, 250, 250)
plot(jemar,main = "Resized")

#ReadImageThuWeb
install.packages("magick")
library(magick)
jemar <- image_read('https://www.newsportal.ph/wp-content/uploads/2018/08/Duterte-fist.jpg')
print(jemar)
