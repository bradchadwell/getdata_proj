# Getting and Cleaning Data Course Project Code Book

## Summary

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The data for the project was downloaded from 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Code Book

The tidy data set contains the following variables

### Activity

Each row of data was collected while one of six activities was being performed. The string Activity name includes the following:

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING.

### Subject

Each row of data was collected from a subject performing an activity. There were 30 study subjects. The subject variable denotes the subject ID with integer values between 1 and 30.

### Feature Means

The feature variables are described in the following excerpt from the original study documentation:

>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz.  
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.  
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).  
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).  
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.  

All feature variables are normalized and bounded within [-1,1] (i.e., no units.).

For this course project, the mean of each feature variable pertaining to mean or standard deviation was calculated, grouped by Activity and Subject. This is indicated by the variable names beginning with "Mean". The variables are as follows:

* Time domain body acceleration mean in X, Y, and Z directions:
     + MeanTimeBodyAccMeanX
     + MeanTimeBodyAccMeanY
     + MeanTimeBodyAccMeanZ 
* Time domain body acceleration standard deviation in X, Y, and Z directions:
     + MeanTimeBodyAccStdDevX 
     + MeanTimeBodyAccStdDevY
     + MeanTimeBodyAccStdDevZ
* Time domain gravity acceleration mean in X, Y, and Z directions:
     + MeanTimeGravityAccMeanX
     + MeanTimeGravityAccMeanY
     + MeanTimeGravityAccMeanZ
* Time domain gravity acceleration standard deviation in X, Y, and Z directions:
     + MeanTimeGravityAccStdDevX
     + MeanTimeGravityAccStdDevY
     + MeanTimeGravityAccStdDevZ
* Time domain body linear acceleration jerk mean in X, Y, and Z directions:
     + MeanTimeBodyAccJerkMeanX
     + MeanTimeBodyAccJerkMeanY
     + MeanTimeBodyAccJerkMeanZ
* Time domain body linear acceleration jerk standard deviation in X, Y, and Z directions:
     + MeanTimeBodyAccJerkStdDevX
     + MeanTimeBodyAccJerkStdDevY
     + MeanTimeBodyAccJerkStdDevZ
* Time domain body angular acceleration mean in X, Y, and Z directions:
     + MeanTimeBodyGyroMeanX
     + MeanTimeBodyGyroMeanY
     + MeanTimeBodyGyroMeanZ
* Time domain body angular acceleration standard deviation in X, Y, and Z directions:
     + MeanTimeBodyGyroStdDevX
     + MeanTimeBodyGyroStdDevY
     + MeanTimeBodyGyroStdDevZ
* Time domain body angular acceleration jerk mean in X, Y, and Z directions:
     + MeanTimeBodyGyroJerkMeanX
     + MeanTimeBodyGyroJerkMeanY
     + MeanTimeBodyGyroJerkMeanZ
* Time domain body angular acceleration jerk standard deviation in X, Y, and Z directions:
     + MeanTimeBodyGyroJerkStdDevX
     + MeanTimeBodyGyroJerkStdDevY
     + MeanTimeBodyGyroJerkStdDevZ
* Time domain body linear acceleration magnitude mean:
     + MeanTimeBodyAccMagMean
* Time domain body linear acceleration magnitude standard deviation:
     + MeanTimeBodyAccMagStdDev
* Time domain gravity linear acceleration magnitude mean:
     + MeanTimeGravityAccMagMean
* Time domain gravity linear acceleration magnitude standard deviation:
     + MeanTimeGravityAccMagStdDev
* Time domain body linear acceleration jerk magnitude mean:
     + MeanTimeBodyAccJerkMagMean
* Time domain body linear acceleration jerk magnitude standard deviation
     + MeanTimeBodyAccJerkMagStdDev
* Time domain body angular acceleration magnitude mean:
     + MeanTimeBodyGyroMagMean
* Time domain body angular acceleration magnitude standard deviation:
     + MeanTimeBodyGyroMagStdDev
* Time domain body angular acceleration jerk magnitude mean:     
     + MeanTimeBodyGyroJerkMagMean
* Time domain body angular acceleration jerk magnitude standard deviation:
     + MeanTimeBodyGyroJerkMagStdDev
* Frequency domain body acceleration mean in X, Y, and Z directions:
     + MeanFrequencyBodyAccMeanX
     + MeanFrequencyBodyAccMeanY
     + MeanFrequencyBodyAccMeanZ
* Frequency domain body acceleration standard deviation in X, Y, and Z directions:
     + MeanFrequencyBodyAccStdDevX
     + MeanFrequencyBodyAccStdDevY
     + MeanFrequencyBodyAccStdDevZ
* Frequency domain body linear acceleration jerk mean in X, Y, and Z directions:
     + MeanFrequencyBodyAccJerkMeanX
     + MeanFrequencyBodyAccJerkMeanY
     + MeanFrequencyBodyAccJerkMeanZ
* Frequency domain body linear acceleration jerk standard deviation in X, Y, and Z directions:
     + MeanFrequencyBodyAccJerkStdDevX
     + MeanFrequencyBodyAccJerkStdDevY
     + MeanFrequencyBodyAccJerkStdDevZ
* Frequency domain body angular acceleration mean in X, Y, and Z directions:
     + MeanFrequencyBodyGyroMeanX
     + MeanFrequencyBodyGyroMeanY
     + MeanFrequencyBodyGyroMeanZ
* Frequency domain body angular acceleration standard deviation in X, Y, and Z directions:
     + MeanFrequencyBodyGyroStdDevX
     + MeanFrequencyBodyGyroStdDevY
     + MeanFrequencyBodyGyroStdDevZ
* Frequency domain body linear acceleration magnitude mean:
     + MeanFrequencyBodyAccMagMean
* Frequency domain body linear acceleration magnitude standard deviation:
     + MeanFrequencyBodyAccMagStdDev
* Frequency domain body linear acceleration jerk magnitude mean:
     + MeanFrequencyBodyAccJerkMagMean
* Frequency domain body linear acceleration jerk magnitude standard deviation:
     + MeanFrequencyBodyAccJerkMagStdDev
* Frequency domain body angular acceleration magnitude mean:
     + MeanFrequencyBodyGyroMagMean
* Frequency domain body angular acceleration magnitude standard deviation:
     + MeanFrequencyBodyGyroMagStdDev
* Frequency domain body angular acceleration jerk magnitude mean:          
     + MeanFrequencyBodyGyroJerkMagMean
* Frequency domain body angular acceleration jerk magnitude standard deviation:
     + MeanFrequencyBodyGyroJerkMagStdDev
     
     









