iris <- read.csv(file="iris.csv")
dim(iris)
# Output: 150 rows and 5 columns
# print the last 2 rows of last 2 columns of iris.csv to terminal
print("iris.csv entries in last 2 rows and columns")
print(iris[149:150,4:5])
# number of observations for each species
setosadata <- iris[iris$Species=="setosa",]
versicolordata <- iris[iris$Species=="versicolor",]
virginicadata <- iris[iris$Species=="virginica",]
print(paste0("Number of setosa observations: ", nrow(setosadata)))
print(paste0("Number of versicolor observations: ", nrow(versicolordata)))
print(paste0("Number of virginica observations: ", nrow(virginicadata)))
# isolate rows with sepal width greater than 3.5
sepalwidth3.5 <- iris[iris$Sepal.Width>3.5,]
print(sepalwidth3.5)
# write csv file containing setosa data
write.csv(setosadata, file="setosa_data.csv")
# mean, minimum, maximum of virginica petal lengths
virginicapetallength <- virginicadata$Petal.Length
print(paste0("Mean of virginica petal lengths: ", mean(virginicapetallength)))
print(paste0("Minimum of virginica petal lengths: ", min(virginicapetallength)))
print(paste0("Maximum of virginica petal lengths: ", max(virginicapetallength)))