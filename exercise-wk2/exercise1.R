## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# sum does not work on vectors, it must have discrete numbers

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# str_length is not the correct function name to find character count. You should use nchar().

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# initial is called when the string is named initials.


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be

vector.one <- c(1,2,3)
print(typeof(vector.one))

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v.1, v.2) {
  return(paste("The difference in lengths is", abs(length(v.1)-length(v.2))))
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength(c(1,2,3),c(5,6,7,8,9))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(v.1, v.2) {
  if(length(v.1)>length(v.2)) {
    return(paste("Your first vector is longer by", (length(v.1)-length(v.2)), "elements")) 
  } else {
    return(paste("Your second vector is longer by", (length(v.2)-length(v.1)), "elements")) 
  }
}
# Pass two vectors to your `DescribeDifference` function
DescribeDifference(c(1,2,3),c(5,6,7,8,9))

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(v.1, v.2, v.3) {
  return (c(v.1,v.2,v.3))
}
# Send 3 vectors to your function to test it.
print(CombineVectors(c(1,2,3),c(1,2,3,4,5),c(1,2,3,4,5,6)))
# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function(names) {
  v.length <- length(names)
  return(tolower(names[1:v.length]))
}
print(CapsTime(c("Mary", "James", "Clover")))

