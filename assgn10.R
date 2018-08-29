Assignment 10
 (1)
forecasturl = paste('https://archive.ics.uci.edu/ml/datasets/Air+quality', 
                    'AirQualityUCI.zip', sep='')

td = tempdir()

tf = tempfile(tmpdir=td, fileext=".zip")

download.file(forecasturl, tf)


fname = unzip(tf, list=TRUE)$Name[1]
fname

unzip(tf, files=fname, exdir=td, overwrite=TRUE)


fpath = file.path(td, fname)
fpath
d = read.csv(fpath,sep = ";")
View(d)

(2)

summary(airquality)
describe (airquality)


(3)

summary(airquality)
ozone and solar.r has missing values

(4)
str(airquality)

library(mice)
md.pattern(airquality)


(5)

library(psych)
pairs.panels( airquality[,c(1,2,3,4,5,6)],
              method = "pearson",
              hist.col = "red",
              density = TRUE,  
              ellipses = TRUE, 
              lm=TRUE,
              main ="Bivariate Scatter plots with Pearson Correlation & Histogram"
)


(6)

str(airquality)

t.test(x=airquality$Ozone, y=airquality$Solar.R ,alternative = "two.sided",mu=0 ,paired = TRUE)
t.test(x=airquality$Temp, y=airquality$Wind ,alternative = "two.sided",mu=0 ,paired = TRUE)
t.test(x=airquality$Ozone, y=airquality$Temp ,alternative = "two.sided",mu=0 ,paired = TRUE)
t.test(x=airquality$Day, y=airquality$Solar.R ,alternative = "two.sided",mu=0 ,paired = TRUE)

(7)

library(gmodels)
CrossTable(x,y)


(8)
table(data$a,data$b)
plot.ts(datasetname)
souvenir_decomp=decompose(souvenir_ts)
plot(souvenir_decomp)

(9)

univariateTable()


library(devtools)


library(Publish)

univariateTable(~date,time,data(airqu))



