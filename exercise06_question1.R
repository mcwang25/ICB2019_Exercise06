# Equivalent of head command in Linux for .csv files specifically.
# Usage: headcsv("<CSV_FILE_NAME>",NUMBER_OF_LINES>)
# Example: headcsv("iris.csv",25)
# Be sure to put quotes around the fle name!
# Dr. Jones said it was acceptable for this to only work for one type of file.
headcsv <- function(x,y){
  csvfile <- read.csv(file=x)
  number.of.lines <- as.integer(y)
  print(csvfile[1:number.of.lines,])
}