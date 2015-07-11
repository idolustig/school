#CodeBook for tidy.txt dataset  

##Data source
This dataset is derived from the ["Human Activity Recognition Using Smartphones Data Set"](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

##Identifiers
  * **subject**  - one of 1:30, the test subject (person)  
  * **activity** - one of {LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS} - the activity performed during the test   
 
##Feature Selection 
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'(X,Y,Z)' is used to denote 3-axial signals in the X, Y and Z directions.

  * tBodyAccMean (X,Y,Z)  
  * tBodyAccStd (X,Y,Z)  
  * tGravityAccMean (X,Y,Z)  
  * tGravityAccStd (X,Y,Z)  
  * tBodyAccJerkMean (X,Y,Z)  
  * tBodyAccJerkStd (X,Y,Z)  
  * tBodyGyroMean (X,Y,Z)  
  * tBodyGyroStd (X,Y,Z)  
  * tBodyGyroJerkMean (X,Y,Z)  
  * tBodyGyroJerkStd (X,Y,Z)  
  * tBodyAccMagMean  
  * tBodyAccMagStd  
  * tGravityAccMagMean  
  * tGravityAccMagStd  
  * tBodyAccJerkMagMean  
  * tBodyAccJerkMagStd  
  * tBodyGyroMagMean  
  * tBodyGyroMagStd  
  * tBodyGyroJerkMagMean  
  * tBodyGyroJerkMagStd  
  * fBodyAccMean (X,Y,Z)  
  * fBodyAccStd (X,Y,Z)  
  * fBodyAccMeanFreq (X,Y,Z)  
  * fBodyAccJerkMean (X,Y,Z)  
  * fBodyAccJerkStd (X,Y,Z)  
  * fBodyAccJerkMeanFreq (X,Y,Z)  
  * fBodyGyroMean (X,Y,Z)  
  * fBodyGyroStd (X,Y,Z)  
  * fBodyGyroMeanFreq (X,Y,Z)  
  * fBodyAccMagMean  
  * fBodyAccMagStd  
  * fBodyAccMagMeanFreq  
  * fBodyBodyAccJerkMagMean  
  * fBodyBodyAccJerkMagStd  
  * fBodyBodyAccJerkMagMeanFreq  
  * fBodyBodyGyroMagMean  
  * fBodyBodyGyroMagStd  
  * fBodyBodyGyroMagMeanFreq  
  * fBodyBodyGyroJerkMagMean  
  * fBodyBodyGyroJerkMagStd  
  * fBodyBodyGyroJerkMagMeanFreq  
  * angletBodyAccMeanGravity  
  * angletBodyAccJerkMeanGravityMean  
  * angletBodyGyroMeanGravityMean  
  * angletBodyGyroJerkMeanGravityMean  
  * angleXGravityMean  
  * angleYGravityMean  
  * angleZGravityMean  

###The set of variables that were estimated from these signals are:   
mean(): Mean value  
std(): Standard deviation  
