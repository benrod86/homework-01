m <- matrix(data = c(1,2,3,4),nrow=2,ncol=2)
m
m <- matrix(data = c(1,2,3,4,5,6), nrow = 2, ncol = 3, byrow = F)
m
m <- matrix(data = c(1,2,3,4,5,6), nrow = 2, ncol = 3, byrow = T)
m
v1 <- c(1,2,3,4)
v2 <- c(6,7,8,9)
m1 <- rbind(v1, v2)
m1
m2 <- cbind(v1,v2)
m2
class(m1)
class(m2)
dim(m1)
dim(m2)
colnames(m1)
rownames(m1)
colnames(m2)
rownames(m2)
str(m1)
str(m2)
attributes(m1)
attr(m1, which = "dim")
attr(m1, which = "dimnames")[[1]]
attr(m1, which = "dimnames")[[2]]
a <- array(data = 1:90, dim = c(5,6,3))
a
v <- 1:100
v
v[1:15]
v[c(2,4,6,8,10)]
v <- 101:200
v[seq(from = 1, to = 100, by = 2)]
v <-100:1
v[seq(from = 100, to = 1, by = -2)]

# CHALLENGE 1 

# create vector of the first line of gettysburg address 
gettysburg <- "Four score and seven years ago our fathers brought forth on this continent a new nation, cinceived in Liberty, and dedicated to the proposition that all men are created equal."

# split into 1 word strings
library(stringr)
gettysburgsplit <- str_split(gettysburg, " ", simplify = T)
gettysburgsplit

# extract every third element 
gettysburgsplit[seq(from = 1, to = 30, by = 3)]

# create vector that is every third element of gettysburg address first line 
gettysburgsplit3rd <- gettysburgsplit[seq(from = 1, to = 30, by = 3)]
gettysburgsplit3rd

# Remove punctuation from same vector 
gettysburg3rdnopunctuation <- gsub("[[:punct:]]","",gettysburgsplit[seq(from = 1, to = 30, by = 3)])
gettysburg3rdnopunctuation













# CHALLENGE 2 
# Part 1  - extract columns 2, 3, and 6 from matrix
m <- matrix(data = 1:80, nrow = 8, ncol = 10, byrow = F)
x <- m[,c(2,3,6)]
x
# Part 2 - extract rows 6 through 8 from matrix
m <- matrix(data = 1:80, nrow = 8, ncol = 10, byrow = F)
x <- m[c(6:8),]
x
# Part 3  - extract rows 2 through 6 of columns 2 through 9 from matrix
m <- matrix(data = 1:80, nrow = 8, ncol = 10, byrow = F)
x <- m[c(2:6),c(2:9)]
x



# CHALLENGE 3 #
a <- array(400:1, dim = c(5,5,4,4))
a[1,1,1,2]
# This pulls out the value in the first row and first column of the first layer of the fourth block
a[2,3,2,]

#This pulls out the the values in the second row and third column of the second layer of the each block

a[1:5,1:5,3,3]
# This pulls out the values in the firstst to fifth row, and the first to fifth column,
# from the third layer of the third block. In other words the entire third layer of the third block





# OVERWRITING #

m <- matrix(data = 1:80, nrow = 8, ncol = 10, byrow = F)
m[7,1] <- 564
m

m <- matrix(data = 1:80, nrow = 8, ncol = 10, byrow = F)
m[,8] <- 2
m

m <- matrix(data = 1:80, nrow = 8, ncol = 10, byrow = F)
m[2:5,4:8] <- 1
m

m <- matrix(data = 1:80, nrow = 8, ncol = 10, byrow = F)
m[2:5,4:8] <- c(20,19,18,17)
m

m <- matrix(data = 1:80, nrow = 8, ncol = 10, byrow = F)
m[2:5,4:8] <- matrix(data = c(20:1), nrow = 4, ncol = 5, byrow = T)
m

m <- matrix(data = 1:80, nrow = 8, ncol = 10, byrow = F)
m[, 8] <- c("a", "b")
m

# LISTS AND DATA FRAMES #

s <- c("this", "is", "a", "vector", "of", "strings") 
m <- matrix(data = 1:40, nrow = 5, ncol = 8) 
b <- FALSE
l <- list(s,m,b)
l

# SUBSETTING #

l[[3]]
l[[2]][2,6]
l[[2]][2,]
l[[2]][,6]
l[2:3]
l[c(1,3)]
class(l)
str(l)
names(l) <- c("string", "matrix", "logical")
names(l)
l$string
l[[1]]
l[["string"]]





Lemuroidea <-list("cheirogaleidae", "Lepilemuridae", "Indriidae", "Lemuridae", "Daubentoniidae")
names(Lemuroidea) <-c("Strepsirhini")
Lorisoidea <- list("Lorisidae", "Galagidae")
names(Lorisoidea) <- c("Strepsirhini")
Strepsirhini <- list(Lemuroidea, Lorisoidea)
names(Strepsirhini) <- c("Primates")
Catarrhini <- list("Cercopithecidae", "Hylobatidae", "Hominidae")
names(Catarrhini)<-c("Anthropoidea")
Platyrrhini <- list("Cebidae", "Atelidae", "Pitheciidae")
names(Platyrrhini) <- C("Anthropoidea")
Tarsioidea <- list("Tarsiidae")
names(Tarsioidea) <- c("Anthropoidea")
Anthropoidea <- list(Platyrrhini,Catarrhini)
Haplorhini <- list(Anthropoidea,Tarsioidea)
Primates <- list(Strepsirhini,Haplorhini)

Primates


Primates <- list(c("Haplorhini", "Strepsirhini"))





aaaaaa


# CHALLENGE 4 #

Lemuroidea <- list("Cheirogaleidae", "Lepilemuridae", "Indriidae", "Lemuridae", "Daubentoniidae")
Lorisoidea <- list("Lorisidae", "Galagidae")
Tarsioidea <- list("Tarsiidae")
Catarrhini <- list("Cercopithecidae", "Hylobatidae", "Hominidae")
Platyrrhini <- list("Cebidae", "Atelidae", "Pitheciidae")
Anthropoidea <- list(Platyrrhini,Catarrhini)
Strepsirhini <- list(Lemuroidea, Lorisoidea)
Haplorhini <- list(Anthropoidea, Tarsioidea)
Primates <- list(Haplorhini,Strepsirhini)
names(Lemuroidea) <- c("Strepsirhini")
names(Lorisoidea) <- c("Strepsirhini")
names(Strepsirhini) <- c("Primates")
names(Catarrhini)<- c("Anthropoidea")
names(Platyrrhini) <- c("Anthropoidea")
names(Tarsioidea) <- c("Anthropoidea")
Primates



df <- data.frame(firstName = c("Rick", "Steve", "Jimbo", "Cleetus", "Bubba"), community = c("Alexandria", "Saviors", "Hilltop", "Saviors", "Hilltop"),
                 sex = c("M", "M", "F", "F", "F"), age = c(42, 40, 33, 28, 31))
df

df[, 3]
str(df[,3])
df[["name.last"]]
df <- cbind(df, id = c(1:20))
df <- cbind(df, school = c("UT", "UT", "A&M", "A&M", "UT", "Rice", "Texas Tech",
                           "UT", "UT", "Texas Tech", "A&M", "UT", "Rice", "UT", "A&M", "Texas Tech",
                           "A&M", "UT", "Texas Tech", "A&M"))
head(df)
str(df)

new_df <- df[df$school == "UT", ]
new_df
df$school == "UT"
new_df <- df[df$school == "UT" & df$gender == "female", ]
new_df

new_df <- df[df$school == "UT" | df$gender == "female", ]
new_df

new_df <- df[df$school == "UT", c("name.last", "name.first", "school") ]
new_df

new_df <- df[, c("name.last", "name.first", "school") ]
new_df

new_df <- df[, c(1, 4, 3) ]
new_df

new_df <- df[, -c(1, 2, 5:18) ]
new_df



## CHALLENGE 5 ##

c5 <- matrix(data = c(3,0,1,23,1,2,33,1,1,42,0,1,41,0,2), nrow = 5, ncol = 3, byrow = TRUE)
c5 <- as.data.frame(c5)
c5$V2 <- as.logical(c5$V2)                    
c5$V3 <- as.factor(c5$V3)                    
str(c5)

## CHALLENGE 5 COMPLETE ##


library(data.table)
dt <- data.table(firstName = c("Rick", "Negan", "Dwight", "Maggie", "Michonne"),
                 community = c("Alexandria", "Saviors", "Saviors", "Hiltop", "Alexandria"), 
                 sex = c("M", "M", "M", "F", "F"), age = c(42, 40, 33, 28, 31))
dt                 
str(dt)                 

df <- data.frame(firstName = c("Rick", "Negan", "Dwight", "Maggie", "Michonne"),
                 community = c("Alexandria", "Saviors", "Saviors", "Hiltop", "Alexandria"), 
                 sex = c("M", "M", "M", "F", "F"), age = c(42, 40, 33, 28, 31))
df
str(df)

dt[sex == "M"]
df[df$sex == "M",]
dt[1:2]
df[1:2,]
dt[, sex]
str(dt[, sex])
df[, c("sex")]
str(df[, c("sex")])

library(tibble)
t <- tibble(firstName = c("Rick", "Negan", "Dwight", "Maggie", "Michonne"),
            community = c("Alexandria", "Saviors", "Saviors", "Hiltop", "Alexandria"), 
            sex = c("M", "M", "M", "F", "F"), age = c(42, 40, 33, 28, 31))
t
t[, "age"]
class(t[, "age"])


a <- read.table(file = "C:/Users/cradl/Desktop/ANT388/Country-Data-2016.csv", sep = ",", header = T, stringsAsFactors = F)


 

f <- "C:/Users/cradl/Desktop/ANT388/CPDS-1960-2014-reduced.csv"
d <-  read.table(f, header = T, sep = ",", stringsAsFactors = F)
head(d, 3)
e <- read.csv(f, header = T, stringsAsFactors = F)
head(e)

f <- "C:/Users/cradl/Desktop/ANT388/CPDS-1960-2014-reduced.txt"
d <- read.table(f, header = T, sep = "\t", stringsAsFactors = F, fill = T)
head(d)

library(readr)
f <- "C:/Users/cradl/Desktop/ANT388/CPDS-1960-2014-reduced.txt"
d <- read_tsv(f, col_names = T)
head(d)
class(d)

f <- "C:/Users/cradl/Desktop/ANT388/CPDS-1960-2014-reduced.txt"
read_delim(f, delim ="\t", col_names = T)

f <- "C:/Users/cradl/Desktop/ANT388/CPDS-1960-2014-reduced.csv"
read_csv(f, delim = ",", col_names = T)
head(d)

library(readxl)
f <- "C:/Users/cradl/Desktop/ANT388/CPDS-1960-2014-reduced.xlsx"
d <- read_excel(f, sheet = 1, col_names = T)
head(d)
str(d)

library(XLConnect)
library(XLConnectJars)
library(rJava)
f <- "C:/Users/cradl/Desktop/ANT388/CPDS-1960-2014-reduced.xlsx"
d <- readWorksheetFromFile(f, sheet = 1, header = T)

library(gdata)
f <- "C:/Users/cradl/Desktop/ANT388/CPDS-1960-2014-reduced.xlsx"
d <- read.xls(f, sheet = 1)


library(curl)
f <- curl("https://raw.githubusercontent.com/difiore/ADA-2019/master/CPDS-1960-2014-reduced.csv")
d <- read.csv(f, header = T, sep = ",", stringsAsFactors = F)
head(d)

f <- curl("https://raw.githubusercontent.com/difiore/ADA-2019/master/CPDS-1960-2014-reduced.txt")
d <- read.table(f, header = T, sep = "\t", stringsAsFactors = F)
head(d)

library(readr)
f <- "https://raw.githubusercontent.com/difiore/ADA-2019/master/CPDS-1960-2014-reduced.csv"
d <- read_csv(f, col_names = T)
head(d)

f <- "https://raw.githubusercontent.com/difiore/ADA-2019/master/CPDS-1960-2014-reduced.txt"
d <- read_tsv(f, col_names = T)
head(d)

library(googlesheets)
gs_auth()
gs_ls()
s <- gs_title("CPDS-1960-2014-reduced")
gs_ws_ls(s)
d <- gs_read(s)
head(d)
str(d)




df <- read.csv(file = "C:/Users/cradl/Desktop/ANT388/random-people.csv", sep = ",", header = T, stringsAsFactors = F)
head(df)
str(df)


head(df[10:11]) 
head(df[, c(1:4,10,11)]) # pull out the specified columns
str(df) 
df[,4] # single column, returns a vector
df[4,] # single row, returns a vector
str(df[,4])
df[[4]] # returns a vector essentially the same thing as aboove
str(df[[4]])
df$name.last
str(df$name.last) # this again returns the exact same vector as above
df[4] # this is fundamentally different as it is returning a data frame
str(df[4])
df["name.last"]
str(df["name.last"]) # this is also returning a data frame, not a vector
df <- cbind(df, id = 1:20)
str(df)
df <- cbind(df, school = c("UT", "UT", "A&M", "A&M", "UT", "Rice", "Texas Tech", 
                  "UT", "UT", "Texas State", "A&M", "UT", "Rice", "UT", "A&M", "Texas Tech", "A&M", "UT", "Texas State", "A&M"))          
str(df)
df$school <- as.character(df$school)
str(df)


new_df <- df[df$school == "UT", ] # selects all the rows where "UT" is in school column
new_df
new_df2 <- df[df$school == "UT" & df$gender == "female", ]  # extract multiple columns
new_df2
new_df3 <- df[df$school == "UT" & df$gender == "!female", ] # Extract but with ! = NOT INCLUDED
new_df3
new_df4 <- df[df$school == "UT" | df$gender == "female", ] # Extract with | = AND operator
new_df4
new_df5 <- df[df$school == "UT", -c(1,2,5:18)] # Extract but neglect certain columns
new_df5




c5 <- matrix(data = c(3,0,1,23,1,2,33,1,1,42,0,1,41,0,2), nrow = 5, ncol = 3, byrow = TRUE)
c5 <- as.data.frame(c5)
c5$V2 <- as.logical(c5$V2)
c5$V3 <- as.factor(c5$V3)
str(c5)



library(tibble)
t <- tibble(firstName = c("Rick", "Negan", "Dwight", "Maggie", "Michonne"), 
            community = c("Alexandria", "Saviors", "Saviors", "Hiltop", "Alexandria"), 
            sex = c("M", "M", "M", "F", "F"), age = c(42, 40, 33, 28, 31))
t


df <- read.csv(file = "C:/Users/cradl/Desktop/ANT388/random-people.csv", sep = ",", header = T, stringsAsFactors = F)
head(df)
str(df)

install.packages("readxl")
library(readxl)


f <- "C:/Users/cradl/Desktop/ANT388/CPDS-1960-2014-reduced.xlsx"
d <- read_excel(f, sheet = 1, col_names = T)
e <- read_excel(file.choose(), sheet = 1, col_manes = T)
