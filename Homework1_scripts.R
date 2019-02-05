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



## CHALLENGE 1 ##
# create vector of the first line of gettysburg address #
gettysburg <- c("Four", "score", "and", "seven",
                "years", "ago", "our", "fathers",
                "brought", "forth", "on", "this",
                "continent,", "a", "new", "nation,",
                "conceived", "in", "Liberty,", "and",
                "dedicated", "to", "the", "proposition",
                "that", "all", "men", "are", "created",
                "equal.")
gettysburg
# extract every third element #
gettysburg[seq(from = 1, to = 30, by = 3)]

# create vector that is every third element of gettysburg address first line #
gettysburg3rd <- gettysburg[seq(from = 1, to = 30, by = 3)]
gettysburg3rd
# Remove punctuation from same vector #
gettysburg3rdnopunctuation <- gsub("[[:punct:]]","",gettysburg[seq(from = 1, to = 30, by = 3)])
gettysburg3rdnopunctuation

# Finish challenge 1 #

m <- matrix(data = 1:80, nrow = 8, ncol = 10, byrow = F)
m
x <- m[4,5]
x

# CHALLENGE 2 #
# Part 1 #
m <- matrix(data = 1:80, nrow = 8, ncol = 10, byrow = F)
x <- m[,c(2,3,6)]
x
# Part 2 #
m <- matrix(data = 1:80, nrow = 8, ncol = 10, byrow = F)
x <- m[c(6:8),]
x
# Part 3 #
m <- matrix(data = 1:80, nrow = 8, ncol = 10, byrow = F)
x <- m[c(2:6),c(2:9)]
x

# Finsh Cnallenge 2 #

# CHALLENGE 3 #
a <- array(400:1, dim = c(5,5,4,4))
a[1,1,1,2]
    # the value in the first row and first column
    # of the first layer of the fourth block
a[2,3,2,]
    # the values in the second row and third column
    # of the second layer of the each block

a[1:5,1:5,3,3]
    # the values in the firstst to fifth row,
    # and the first to fifth column,
    # from the third layer of the third block.
    # In other words the entire third layer of the third block

# Finish Challenge 3 #


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

s <- c("this", "is", "a", "vector", "of", "strings") # this is a vector of character strings
m <- matrix(data = 1:40, nrow = 5, ncol = 8) # this is a matrix
b <- FALSE # this is a boolean variable
l <- list(s,m,b)
l

# SUBSETTING #

l[[2]]
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


# CHALLENGE 4 #

Lemuroidea <- list("Cheirogaleidae", "Lepilemuridae", "Indriidae", "Lemuridae", "Daubentoniidae")
Lorisoidea <- list("Lorisidae", "Galagidae")
Tarsioidea <- list("Tarsiidae")
Catarrhini <- list("Cercopithecidae", "Hylobatidae", "Hominidae")
Platyrrhini <- list("Cebidae", "Atelidae", "Pitheciidae")
Anthropoidea <- list(Platyrrhini,Catarrhini)
Strepsirhini <- list(Lemuroidea,Lorisoidea)
Haplorhini <- list(Anthropoidea, Tarsioidea)
Primates <- list(Haplorhini,Strepsirhini)
Primates
