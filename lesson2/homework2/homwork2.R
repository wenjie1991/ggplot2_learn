library(ggplot2)
library(base)
head(diamonds) 
## this homework use varables of 'cut' and 'clarity'
p1 <- ggplot(diamonds, aes(clarity))
## plot bar with position adjustment of fill
p2 <- p1 + geom_bar(aes(y=..count.., fill=cut), binwidth=0.1, position='fill')
## plot bar with position adjustment of stack
p3 <- p1 + geom_bar(aes(y=..count.., fill=cut), binwidth=0.1, position='stack') +
	scale_y_continuous(breaks=seq(0, 14000, 2000))
## plot bar with position of adjustment dodge
p4 <- p1 + geom_bar(aes(y=..count.., fill=cut), binwidth=0.1, position='dodge')

p3
p2
p4
