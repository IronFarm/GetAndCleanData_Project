# Code Book

## Introduction

This data is taken from the Samsung Human Activity Recognition dataset (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The analysis is described in README.md and the step by step process taken can be found at the bottom of this file.

The output dataset contains the mean of a number of variables, for each combination of test subject and activity. The subject ID and activity name form the first two columns in the output dataset. The meaning of the remaining variables is described below. Remember, in each case the stored value is actually the mean across all measurements for each combination of subject and activity.

## Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ  
tGravityAcc-XYZ  
tBodyAccJerk-XYZ  
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ  
tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag  
fBodyAcc-XYZ  
fBodyAccJerk-XYZ  
fBodyGyro-XYZ  
fBodyAccMag  
fBodyAccJerkMag  
fBodyGyroMag  
fBodyGyroJerkMag  

The set of variables that were estimated from these signals are: 

mean(): Mean value  
std(): Standard deviation  

## Details

Lines 1-4: The variable and activity names are loaded  
Lines 5-13: The training data is loaded. The columns are named using the variable names previously loaded. The subject IDs and activity labels are also loaded. These two variables are then merged into the training dataset.  
Lines 14-22: The same process is repeated for the testing data.  
Lines 23-25: The training and testing datasets are merged.  
Lines 26-32: Columns relating to the mean and standard deviation of each variable are located. The two additional variables (subject and [activity] label) are also located. The rest of the columns are discarded.  
Lines 33-35: The activity label indices are replaced with the previously loaded activity names.  
Lines 36-41: The mean of each variable is calculated for each combination of subject and activity. This data is then ordered and written to the file tidy_data.txt.  

