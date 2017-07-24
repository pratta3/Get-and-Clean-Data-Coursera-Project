

# This R script performs the following functions:
# 1. Merges the test and train datasets
# 2. Extracts the mean and standard deviation of each measurement
# 3. Adds descriptive activity names to the dataset
# 4. Labels the dataset with descriptive variable names
# 5. Creates a tidy dataset with the mean of each of the variables of the dataset
#    created in step (2), grouped by subject and activity




# First download the zip file containing all the datasets to your current working directory.
# This script assumes that the "UCI HAR Dataset" directory is in your working directory and
# that all the files contained in it are in their original locations.

# The datasets below are as follows:

# - 'features' contains a list of all the measurment names
# - 'activities' contains a list of the six different activities that subjects performed
# - 'train' is the training dataset
# - 'trainSubjects' identifies the subjects that correspond to the 'train' measurments
# - 'trainlabs' identifies the activities corresponding to the 'train' measurments
# - 'test', 'testSubjects', and 'testlabs' are analogous to 'train', 'trainSubjects', and 'trainlabs'


features <- read.table(file = "./UCI HAR Dataset/features.txt")
activities <- read.table(file = "./UCI HAR Dataset/activity_labels.txt")
train <- read.table(file = "./UCI HAR Dataset/train/X_train.txt")
trainSubjects <- read.table(file = "./UCI HAR Dataset/train/subject_train.txt")
trainlabs <- read.table(file = "./UCI HAR Dataset/train/y_train.txt")
test <- read.table("./UCI HAR Dataset/test/X_test.txt")
testSubjects <- read.table("./UCI HAR Dataset/test/subject_test.txt")
testlabs <- read.table("./UCI HAR Dataset/test/y_test.txt")




# Add descriptive variable names to all of the datasets. The variables in the 
# 'train' and 'test' datasets are given the names of the features contained in 
# the 'features' dataset.


names(activities) <- c("activityID", "activity")
names(features) <- c("featureID", "feature")
names(train) <- features$feature
names(trainSubjects) <- "subject"
names(trainlabs) <- "activityID"
names(test) <- features$feature
names(testSubjects) <- "subject"
names(testlabs) <- "activityID"




# The following code combines the subject and activity labels into the 'train' and 'test'
# datasets and then combines the 'train' and 'test' datasets into one final dataset called
# 'completeData'.


library(tidyverse)
library(stringr)

trainkey <- trainSubjects %>% 
        cbind(trainlabs) %>% 
        left_join(activities, by = "activityID") %>% 
        select(-activityID)
train <- trainkey %>% 
        cbind(train)

testkey <- testSubjects %>% 
        cbind(testlabs) %>% 
        left_join(activities, by = "activityID") %>% 
        select(-activityID)
test <- testkey %>% 
        cbind(test)

completeData <- rbind(train, test)
# View(completeData)




# 'meansd' is a list of all the variables in the 'completeData' dataset that are either
# mean values or standard deviations of a particular measurement. It is then used to create
# the 'meansdData' dataset, a subset of completeData that only contains the mean values and
# standard deviations of each measurement.


meansd <- names(completeData)[str_detect(names(completeData), "mean")|str_detect(names(completeData), "std")]

meansdData <- completeData[,c("subject", "activity",meansd)]
# View(meansdData)




# The final piece of code creates a tidy dataset that contains the average of each mean and
# standard deviation variable in 'meansdData' grouped by subject and activity.


averages <- meansdData %>% 
        group_by(subject, activity) %>% 
        summarize_all(mean)
View(averages)




# Write out a .txt file containing the 'averages' data.

# write.table(averages, file = "./averages.txt", row.name = FALSE)















