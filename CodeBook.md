# Code Book for Course Project #

This file describes the variables, the data, and the data sources used in the Course Project.

## Source of the Data ##

This data was originally sourced from the UC Irvine Machine Learning Repository - Human Activity Recognition Using Smartphones Data Set

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data was downloaded from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The files included (taken from the README.txt file):

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

The following files were used in this analysis:
- X_test.txt
- y_test.txt
- subject_test.txt
- X_train.txt
- y_train.txt
- subject_train.txt
- activity_labels.txt
- features.txt

The README.md file also contains information on how data was transformed in this project.

## Data Layouts ##

HAR_data_smry

<table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0 width=769
 style='width:577.0pt;margin-left:4.65pt;border-collapse:collapse'>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  background:#D8D8D8;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><b><span style='color:black'>Column Name</span></b></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border:solid windowtext 1.0pt;
  border-left:none;background:#D8D8D8;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><b><span style='color:black'>Data Type</span></b></p>
  </td>
  <td width=427 valign=top style='width:320.0pt;border:solid windowtext 1.0pt;
  border-left:none;background:#D8D8D8;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><b><span style='color:black'>Description</span></b></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Subject_Id</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Integer</span></p>
  </td>
  <td width=427 valign=top style='width:320.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Unique identifier of the subject used to
  collect data</span></p>
  </td>
 </tr>
 <tr style='height:44.25pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:44.25pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Activity_Desc</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:44.25pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Character</span></p>
  </td>
  <td width=427 valign=top style='width:320.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:44.25pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Description of the activity during data
  colletion.  Will be one of the following: WALKING, WALKING_UPSTAIRS,
  WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyAcc_mean_X_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 valign=top style='width:320.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyACC_mean_X</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyAcc_mean_Y_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 valign=top style='width:320.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyACC_mean_Y</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyAcc_mean_Z_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 valign=top style='width:320.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyACC_mean_Z</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyAcc_std_X_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyAcc_std_X</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyAcc_std_Y_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyAcc_std_Y</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyAcc_std_Z_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyAcc_std_Z</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tGravityAcc_mean_X_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  GravityAcc_mean_X</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tGravityAcc_mean_Y_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  GravityAcc_mean_Y</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tGravityAcc_mean__meanZ</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  GravityAcc_mean_Z</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tGravityAcc_std_X_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  GravityAcc_std_X</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tGravityAcc_std_Y_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  GravityAcc_std_Y</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tGravityAcc_std_Z_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  GravityAcc_std_Z</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyAccJerk_mean_X_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  tBodyAccJerk_mean_X</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyAccJerk_mean_Y_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyAccJerk_mean_Y</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyAccJerk_mean_Z_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyAccJerk_mean_Z</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyAccJerk_std_X_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyAccJerk_std_X</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyAccJerk_std_Y_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyAccJerk_std_Y</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyAccJerk_std_Z_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyAccJerk_std_Z</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyGyro_mean_X_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyGyro_mean_X</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyGyro_mean_Y_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyGyro_mean_Y</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyGyro_mean_Z_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyGyro_mean_Z</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyGyro_std_X_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyGyro_std_X</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyGyro_std_Y_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyGyro_std_Y</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyGyro_std_Z_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyGyro_std_Z</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyGyroJerk_mean_X_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyGyroJerk_mean_X</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyGyroJerk_mean_Y_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyGyroJerk_mean_Y</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyGyroJerk_mean_Z_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyGyroJerk_mean_Z</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyGyroJerk_std_X_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyGyroJerk_std_X</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyGyroJerk_std_Y_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyGyroJerk_std_Y</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyGyroJerk_std_Z_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyGyroJerk_std_Z</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyAccMag_mean_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyAccMag_mean</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyAccMag_std_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyAccMag_std</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tGravityAccMag_mean_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  GravityAccMag_mean</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tGravityAccMag_std_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'> Mean of time domain signal for
  GravityAccMag_std</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyAccJerkMag_mean_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyAccJerkMag_mean</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyAccJerkMag_std_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyAccJerkMag_std</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyGyroMag_mean_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyGyroMag_mean</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyGyroMag_std_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyGyroMag_std</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyGyroJerkMag_mean_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyGyroJerkMag_mean</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>tBodyGyroJerkMag_std_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of time domain signal for
  BodyGyroJerkMag_std</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>fBodyAcc_mean_X_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of frequency domain signal for
  BodyAcc_mean_X</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>fBodyAcc_mean_Y_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of frequency domain signal for
  BodyAcc_mean_Y</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>fBodyAcc_mean_Z_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of frequency domain signal for
  BodyAcc_mean_Z</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>fBodyAcc_std_X_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of frequency domain signal for
  BodyAcc_std_X</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>fBodyAcc_std_Y_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of frequency domain signal for
  BodyAcc_std_Y</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>fBodyAcc_std_Z_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of frequency domain signal for
  BodyAcc_std_Z</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>fBodyAccJerk_mean_X_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of frequency domain signal for
  BodyAccJerk_mean_X</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>fBodyAccJerk_mean_Y_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of frequency domain signal for
  BodyAccJerk_mean_Y</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>fBodyAccJerk_mean_Z_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of frequency domain signal for
  BodyAccJerk_mean_Z</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>fBodyAccJerk_std_X_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of frequency domain signal for
  BodyAccJerk_std_X</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>fBodyAccJerk_std_Y_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of frequency domain signal for
  BodyAccJerk_std_Y</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>fBodyAccJerk_std_Z_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of frequency domain signal for
  BodyAccJerk_std_Z</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>fBodyGyro_mean_X_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of frequency domain signal for
  BodyGyro_mean_X</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>fBodyGyro_mean_Y_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of frequency domain signal for
  BodyGyro_mean_Y</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>fBodyGyro_mean_Z_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of frequency domain signal for
  BodyGyro_mean_Z</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>fBodyGyro_std_X_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of frequency domain signal for
  BodyGyro_std_X</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>fBodyGyro_std_Y_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of frequency domain signal for
  BodyGyro_std_Y</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>fBodyGyro_std_Z_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of frequency domain signal for
  BodyGyro_std_Z</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>fBodyAccMag_mean_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of frequency domain signal for
  BodyAccMag_mean</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>fBodyAccMag_std_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of frequency domain signal for
  BodyAccMag_std</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>fBodyBodyAccJerkMag_mean_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of frequency domain signal for
  BodyBodyAccJerkMag_mean</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>fBodyBodyAccJerkMag_std_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of frequency domain signal for
  BodyBodyAccJerkMag_std</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>fBodyBodyGyroMag_mean_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of frequency domain signal for
  BodyBodyGyroMag_mean</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>fBodyBodyGyroMag_std_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of frequency domain signal for
  BodyBodyGyroMag_std</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>fBodyBodyGyroJerkMag_mean_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of frequency domain signal for
  BodyBodyGyroJerkMag_mean</span></p>
  </td>
 </tr>
 <tr style='height:15.0pt'>
  <td width=244 nowrap valign=top style='width:183.0pt;border:solid windowtext 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>fBodyBodyGyroJerkMag_std_mean</span></p>
  </td>
  <td width=99 nowrap valign=top style='width:74.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Numeric</span></p>
  </td>
  <td width=427 nowrap valign=top style='width:320.0pt;border-top:none;
  border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0in 5.4pt 0in 5.4pt;height:15.0pt'>
  <p class=MsoNormal style='margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal'><span style='color:black'>Mean of frequency domain signal for
  BodyBodyGyroJerkMag_std</span></p>
  </td>
 </tr>
</table>




