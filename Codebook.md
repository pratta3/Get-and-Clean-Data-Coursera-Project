# Codebook

The 'averages' dataset that is output by the run_analysis.R script contains the average of the following variables
taken from the 'completeData' dataset. XYZ indicates three separate variable corresponding to triaxial 
acceleration (Acc) and triaxial angular velocity (Gyro). Variables containing the word "Jerk" indicate Jerk 
signals derived from acceleration and angular velocity. Variables containing the word "Mag" indicate the 
magnitude of these signals, calculated using the Euclidean norm. Variables with a "t" prefix are time domain 
signals whereas variables with an "f" prefix are frequency domain signals, produced by applying a Fast Fourier 
Transform. Units of acceleration are standard gravity units "g" and angular velocity units are radians/second.

- tBodyAcc-mean()-XYZ
- tBodyAcc-std()-XYZ
- tGravityAcc-mean()-XYZ
- tGravityAcc-std()-XYZ
- tBodyAccJerk-mean()-XYZ
- tBodyAccJerk-std()-XYZ
- tBodyGyro-mean()-XYZ
- tBodyGyro-std()-XYZ
- tBodyGyroJerk-mean()-XYZ
- tBodyGyroJerk-std()-XYZ
- tBodyAccMag-mean()
- tBodyAccMag-std()
- tGravityAccMag-mean()
- tGravityAccMag-std()
- tBodyAccJerkMag-mean()
- tBodyAccJerkMag-std()
- tBodyGyroMag-mean()
- tBodyGyroMag-std()
- tBodyGyroJerkMag-mean()
- tBodyGyroJerkMag-std()
- fBodyAcc-mean()-XYZ
- fBodyAcc-std()-XYZ
- fBodyAcc-meanFreq()-XYZ
- fBodyAccJerk-mean()-XYZ
- fBodyAccJerk-std()-XYZ
- fBodyAccJerk-meanFreq()-XYZ
- fBodyGyro-mean()-XYZ
- fBodyGyro-std()-XYZ
- fBodyGyro-meanFreq()-XYZ
- fBodyAccMag-mean()
- fBodyAccMag-std()
- fBodyAccMag-meanFreq()
- fBodyBodyAccJerkMag-mean()
- fBodyBodyAccJerkMag-std()
- fBodyBodyAccJerkMag-meanFreq()
- fBodyBodyGyroMag-mean()
- fBodyBodyGyroMag-std()
- fBodyBodyGyroMag-meanFreq()
- fBodyBodyGyroMag-mean()
- fBodyBodyGyroMag-std()
- fBodyBodyGyroJerkMag-meanFreq()


In addition, the subject and activity corresponding to each of the measurements are included in the dataset.

More information about the data can be found in the "official.txt" and the "features.txt" documents in the
repository.

          
