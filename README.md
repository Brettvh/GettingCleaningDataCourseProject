### README.md for Class Project for Coursera's Getting and Cleaning Data class ###

There are three files:
- README.md (This file)
- CodeBook.md - The CodeBook that describes the layout of the output file HAL_data_smry.txt and it's source files
- run_analysis.R - The R script that takes the source data and creates a tidy data set HAL_data_smry.txt

### Overview ###

This process takes the UC Irvine Machine Learning Repository data for Human Activity Recognition Using Smartphones Data Set, performs some analysis and creates a Tidy Data Set with the average of each variable for each activity and each subject in the study.

The analysis pulls from the following soure files:
- 'activity_labels.txt': Links the class labels with their activity name.
- 'features.txt': List of all features.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

Columns are renamed to be decriptive and consistent, with measurement data names pulled from the features data and special symbolds removed/replaced to make columns easier to work in the R environment.  Parenthesis are removed and dashes are changed to underscores.

Subject data is renamed to Subject_Id and Activity data adds the descriptive activity text to the Activity_Desc column and uses Activity_Id to name the raw activity data.

A column named Record_Source_Cd is added to the larger data set to identify if the record was sourced from the Test data or the Training data.  This column is not included in the final tidy data set.

The data columns are then reduced to include only the mean and standard deviation variables from the source data.  These variables were estimated from the sensor signals prior to this analysis.

The remaning mean and standard deviation data are then summarized and averaged by column for each subject/activity combination.  More information is available in the CodeBook.md file.

The final data is then written to a file named HAR_data_smry.txt

## How to run script ##

The R script requires the following to run:

- plyr package installed
- source data downloaded and uncompressed to ./data/UCI HAR Dataset

Lines may be uncommented to download the source data in the script but it will still need to be manually uncompressed.

Execute the run_analysus.R script in the R environment.


