#' the way to configure y scale
#+ load library and data
library(ggplot2)
head(diamonds)
#+ plot 
p <- ggplot(diamonds, aes(x=carat, y=price)) + geom_point()
#png('forumplot1.png')
p
#dev.off()
#png('forumplot2.png')
p + scale_y_continuous(breaks=seq(0, 16000, 1000))
#dev.off()
