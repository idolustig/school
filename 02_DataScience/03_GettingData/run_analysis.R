library(plyr)

## Step 1 -  Merge the training and the test sets
################################################################################

setwd("C:/Users/Ido/Documents/GitHub/school/02_DataScience/03_GettingData/")

# read tables
xTrain <- read.table("UCI HAR Dataset/train/X_train.txt")
yTrain <- read.table("UCI HAR Dataset/train/y_train.txt")
xTest <- read.table("UCI HAR Dataset/test/X_test.txt")
yTest <- read.table("UCI HAR Dataset/test/y_test.txt")

# create one dataset
xData <- rbind(xTrain, xTest)
yData <- rbind(yTrain, yTest)

## Step 2 -  Extract only the measurements on the mean and standard deviation
################################################################################

features <- read.table("UCI HAR Dataset/features.txt")

# clean the features table
features[,2] = gsub('-std', 'std', features[,2])
features[,2] = gsub('-mean', 'mean', features[,2])
features[,2] = gsub('[-()]', '', features[,2])

# subset only columns with mean or std in their names
relevantFeatures <- grep(".*mean.*|.*std.*", features[,2])
xData <- xData[,relevantFeatures]

## Step 3 -  Use descriptive activity names to name activities in the data set
################################################################################

activities <- read.table("UCI HAR Dataset/activity_labels.txt")

# correct column names (xData)
names(xData) <- features[relevantFeatures,2]

# update values with correct activity names (yData)
yData[,1] <- activities[yData[, 1], 2]
names(yData) <- "activity"

allData <- cbind(yData, xData)

## Step 4 -  Label the data set with descriptive variable name
################################################################################
subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt")
subjectData <- rbind(subjectTrain, subjectTest)
names(subjectData) <- "subject"

# bind all the data in a single data set
allData <- cbind(xData, yData, subjectData)

## Step 5 -  Create a tidy data set with the average of each variable
##           for each activity and each subject
################################################################################
# calc mean for all columns but last two (activity & subject)
averagesData <- ddply(allData, .(subject, activity), function(x) colMeans(x[,1:66]))

write.table(averagesData, "averages_data.txt", row.name=FALSE)