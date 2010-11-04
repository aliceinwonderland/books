#! /usr/bin/Rscript --vanilla
############################################
### File:	user-age.R
### Author:	Blanca A. Vargas-Govea
### Email:	blanca.vg@gmail.com
### Date:	03-Nov-2010
### Data:	BX-Users.csv
############################################
library(ggplot2)
library(proto)

# Previously replaced unknown age with -1
books <- read.csv(file = "/home/blanca/cenidpd/datanalysis/books/data/BX-Users.csv", header = TRUE, sep = ";")
set.seed(1410) # Make the sample reproducible
dsmall <- books[sample(nrow(books), 100), ]

# masjoven <- min(dsmall$Age)
# masjoven
# [1] 1
# masviejo <- max(dsmall$Age)
# masviejo
# 71
# size <- length(dsmall$User.ID)
# size


# bar
qplot(Age, data = subset(dsmall, Age > 1), geom = "bar", xlim = c(0,75))
ggsave(file = "../figures/bar.png")

# histogram
qplot(Age, data = subset(dsmall, Age > 1), geom = "histogram", xlim = c(0,75))
ggsave(file = "../figures/histo.png")


dev.off()
q(status=1)
