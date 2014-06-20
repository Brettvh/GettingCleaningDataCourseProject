# run_analysis.R
# Created 6/19/14 by Brett V. for a Coursera project assignment

#Script does the following:

#Merges the training and the test sets to create one data set.
#Extracts only the measurements on the mean and standard deviation for each measurement. 
#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive variable names. 
#Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

# Set working directory and create a "data" subdirectory if it doesn't exist.

setwd("~/My Documents/Education/Coursera - Getting and Cleaning Data/Course Project")

if(!file.exists("./data")){dir.create("./data")}

# Uncomment these two lines if you want to re-download the data.  The data will need to be manually uncompressed.

#fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#download.file(fileUrl,destfile="./data/UCI_HAR.zip", mode="wb")

# Load files into tables for analysis

x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
s_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
features <- read.table("./data/UCI HAR Dataset/features.txt")

x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
s_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

# Rename activity columns

colnames(y_test) <- c("Activity_Cd")
colnames(y_train) <- c("Activity_Cd")
colnames(activity_labels) <- c("Activity_Cd", "Activity_Desc")

# Get feature names and remove troublesome symbols "(" and ")" and replace "-" with "_"

feature_names <- gsub("\\(\\)", "", as.character(features[,2]))
feature_names <- gsub("-", "_", feature_names)

# Rename feature columns to have meaningful names

colnames(x_test) <- feature_names
colnames(x_train) <- feature_names

# Rename subject id column

colnames(s_test) <- c("Subject_Id")
colnames(s_train) <- c("Subject_Id")

# Create a column to identify if data was from Test sample or Training sample

test_const <- data.frame(Record_Source_Cd="Test")
train_const <- data.frame(Record_Source_Cd="Train")

# Combine test data together and training data together 

test_data <- cbind(s_test, y_test, test_const, x_test)
train_data <- cbind(s_train, y_train, train_const, x_train)

# Combine test and training data into a single table

HAR_data <- rbind(train_data, test_data)

# Merge activity labels to get better descriptions

HAR_data <- merge(activity_labels, HAR_data, by.x="Activity_Cd", by.y="Activity_Cd", all=TRUE)


# Create a tidy data set with only the columns of interest to us

HAR_data_short <- HAR_data[, c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 45, 46, 47, 48, 49, 50, 85, 86, 87, 88, 89,
                               90, 125, 126, 127, 128, 129, 130, 165, 166, 167, 168, 169, 170,
                               205, 206, 218, 219, 231, 232, 244, 245, 257, 258, 270, 271, 272,
                               273, 274, 275, 349, 350, 351, 352, 353, 354, 428, 429, 430, 431,
                               432, 433, 507, 508, 520, 521, 533, 534, 546, 547)]

# Create a second tidy data set summarizing the first.  Calculate average for each variable in the short data set.

library(plyr)

HAR_data_smry <- ddply(HAR_data_short, c("Subject_Id", "Activity_Desc"), summarize,
                       tBodyAcc_mean_X_mean=mean(    tBodyAcc_mean_X	),
                       tBodyAcc_mean_Y_mean=mean(	tBodyAcc_mean_Y	 ),
                       tBodyAcc_mean_Z_mean=mean(	tBodyAcc_mean_Z	 ),
                       tBodyAcc_std_X_mean=mean(	tBodyAcc_std_X ),
                       tBodyAcc_std_Y_mean=mean(	tBodyAcc_std_Y ),
                       tBodyAcc_std_Z_mean=mean(	tBodyAcc_std_Z ),
                       tGravityAcc_mean_X_mean=mean(	tGravityAcc_mean_X ),
                       tGravityAcc_mean_Y_mean=mean(	tGravityAcc_mean_Y ),
                       tGravityAcc_mean_Z_mean=mean(	tGravityAcc_mean_Z ),
                       tGravityAcc_std_X_mean=mean(	tGravityAcc_std_X ),
                       tGravityAcc_std_Y_mean=mean(	tGravityAcc_std_Y ),
                       tGravityAcc_std_Z_mean=mean(	tGravityAcc_std_Z ),
                       tBodyAccJerk_mean_X_mean=mean(	tBodyAccJerk_mean_X ),
                       tBodyAccJerk_mean_Y_mean=mean(	tBodyAccJerk_mean_Y ),
                       tBodyAccJerk_mean_Z_mean=mean(	tBodyAccJerk_mean_Z ),
                       tBodyAccJerk_std_X_mean=mean(	tBodyAccJerk_std_X ),
                       tBodyAccJerk_std_Y_mean=mean(	tBodyAccJerk_std_Y ),
                       tBodyAccJerk_std_Z_mean=mean(	tBodyAccJerk_std_Z ),
                       tBodyGyro_mean_X_mean=mean(	tBodyGyro_mean_X ),
                       tBodyGyro_mean_Y_mean=mean(         	tBodyGyro_mean_Y ),        
                       tBodyGyro_mean_Z_mean=mean(	tBodyGyro_mean_Z ),
                       tBodyGyro_std_X_mean=mean(	tBodyGyro_std_X	),
                       tBodyGyro_std_Y_mean=mean(	tBodyGyro_std_Y	),
                       tBodyGyro_std_Z_mean=mean(          	tBodyGyro_std_Z ),         
                       tBodyGyroJerk_mean_X_mean=mean(	tBodyGyroJerk_mean_X ),
                       tBodyGyroJerk_mean_Y_mean=mean(	tBodyGyroJerk_mean_Y ),
                       tBodyGyroJerk_mean_Z_mean=mean(	tBodyGyroJerk_mean_Z ),
                       tBodyGyroJerk_std_X_mean=mean(	tBodyGyroJerk_std_X ),
                       tBodyGyroJerk_std_Y_mean=mean(	tBodyGyroJerk_std_Y ),
                       tBodyGyroJerk_std_Z_mean=mean(	tBodyGyroJerk_std_Z ),
                       tBodyAccMag_mean_mean=mean(	tBodyAccMag_mean ),
                       tBodyAccMag_std_mean=mean(	tBodyAccMag_std	) ,
                       tGravityAccMag_mean_mean=mean(	tGravityAccMag_mean ),
                       tGravityAccMag_std_mean=mean(	tGravityAccMag_std ),
                       tBodyAccJerkMag_mean_mean=mean(	tBodyAccJerkMag_mean ),
                       tBodyAccJerkMag_std_mean=mean(	tBodyAccJerkMag_std ),
                       tBodyGyroMag_mean_mean=mean(	tBodyGyroMag_mean ),
                       tBodyGyroMag_std_mean=mean(	tBodyGyroMag_std ),
                       tBodyGyroJerkMag_mean_mean=mean(	tBodyGyroJerkMag_mean ),
                       tBodyGyroJerkMag_std_mean=mean(	tBodyGyroJerkMag_std ),
                       fBodyAcc_mean_X_mean=mean( 	fBodyAcc_mean_X ),
                       fBodyAcc_mean_Y_mean=mean(	fBodyAcc_mean_Y	),
                       fBodyAcc_mean_Z_mean=mean(	fBodyAcc_mean_Z	),
                       fBodyAcc_std_X_mean=mean( fBodyAcc_std_X ),          
                       fBodyAcc_std_Y_mean=mean( fBodyAcc_std_Y ),
                       fBodyAcc_std_Z_mean=mean( fBodyAcc_std_Z ),
                       fBodyAccJerk_mean_X_mean=mean( fBodyAccJerk_mean_X ),
                       fBodyAccJerk_mean_Y_mean=mean( fBodyAccJerk_mean_Y ),     
                       fBodyAccJerk_mean_Z_mean=mean( fBodyAccJerk_mean_Z ),
                       fBodyAccJerk_std_X_mean=mean( fBodyAccJerk_std_X ),
                       fBodyAccJerk_std_Y_mean=mean( fBodyAccJerk_std_Y ),
                       fBodyAccJerk_std_Z_mean=mean( fBodyAccJerk_std_Z ),      
                       fBodyGyro_mean_X_mean=mean( 	fBodyGyro_mean_X ),
                       fBodyGyro_mean_Y_mean=mean( 	fBodyGyro_mean_Y ),
                       fBodyGyro_mean_Z_mean=mean(	fBodyGyro_mean_Z ),
                       fBodyGyro_std_X_mean=mean(          	fBodyGyro_std_X ),         
                       fBodyGyro_std_Y_mean=mean( 	fBodyGyro_std_Y ),
                       fBodyGyro_std_Z_mean=mean(  	fBodyGyro_std_Z ), 
                       fBodyAccMag_mean_mean=mean(	fBodyAccMag_mean ),
                       fBodyAccMag_std_mean=mean(	fBodyAccMag_std	),
                       fBodyBodyAccJerkMag_mean_mean=mean( fBodyBodyAccJerkMag_mean ),
                       fBodyBodyAccJerkMag_std_mean=mean( fBodyBodyAccJerkMag_std	),
                       fBodyBodyGyroMag_mean_mean=mean( fBodyBodyGyroMag_mean ),
                       fBodyBodyGyroMag_std_mean=mean( fBodyBodyGyroMag_std ),
                       fBodyBodyGyroJerkMag_mean_mean=mean(	fBodyBodyGyroJerkMag_mean ),
                       fBodyBodyGyroJerkMag_std_mean=mean( fBodyBodyGyroJerkMag_std )
                )

# Create output file

write.table(HAR_data_smry, "./data/HAR_data_smry.txt", row.names=FALSE)





