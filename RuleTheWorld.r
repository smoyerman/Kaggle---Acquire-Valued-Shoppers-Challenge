# Function to load the data into a dataframe
loaddata <- function(extension, testfile){
  filename <- paste(extension, testfile, sep="")  
  df = read.csv(filename, header = TRUE)
  return(df)
}

# Function to output the data in a submittable format
writedata <- function(extension, testfile, mm){
  filename <- paste(extension, testfile, sep="")  
  write.table(mm, file = filename, sep = ",", row.names=FALSE, na="", col.names=c("id","repeatProbability"))}

# Extension for where everything is stored on your computer
extension <- "C:/Users/smoyerma/Documents/Kaggle - Acquire Valued Shoppers Challenge/"

# The test set filename
testfile <- "testHistory.csv"

# Load the data
df_test <- loaddata(extension, testfile)

# A matrix for storing the predicted results, col1 is the test set id, col2 is the prediction
mm <- matrix(0, dim(df_test)[1], 2)
mm[,1] = df_test$id

# The output filename, give it something that actually matters
outfile <- "All_Zeros.csv"

# Write the rsult out to the outfile in the extension folder
writedata(extension, testfile, mm)
