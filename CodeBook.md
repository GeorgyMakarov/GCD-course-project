# GCD course project  

## JHU Getting and Cleaning Data course project

### Data modifications

Raw train and test datasets were merged into one dataset. Only measurements of the mean and standard deviation for each measurement were extracted from the dataset. Descripton of activity was used as factor variable to name the activity in the dataset. Columns of measurements were named with discriptive names. Independant dataset was created with mean of each variable for each activity and each subject.

### Description

Identifiers:  
- **Subject** - the id of the test subject;  
- **Activity** - the type of activity during measurements.

Activity labels:  
- *WALKING* subject was walking during the measurement;  
- *WALKING_UPSTAIRS* subject was walking upstairs during the measurement;  
- *WALKING_DOWNSTAIRS* subject was walking downstairs during the measurement;  
- *SITTING* subject was sitting during the measurement;  
- *STANDING* subject was standing during the measurement;  
- *LAYING* subject was laying during the measurement.

Measurements:  
tBodyAccMeanX, tBodyAccMeanY, tBodyAccMeanZ, tBodyAccStdX, tBodyAccStdY, tBodyAccStdZ, tGravityAccMeanX, tGravityAccMeanY, tGravityAccMeanZ, tGravityAccStdX, tGravityAccStdY, tGravityAccStdZ, tBodyAccJerkMeanX, tBodyAccJerkMeanY, tBodyAccJerkMeanZ, tBodyAccJerkStdX, tBodyAccJerkStdY, tBodyAccJerkStdZ, tBodyGyroMeanX, tBodyGyroMeanY, tBodyGyroMeanZ, tBodyGyroStdX, tBodyGyroStdY, tBodyGyroStdZ, tBodyGyroJerkMeanX, tBodyGyroJerkMeanY, tBodyGyroJerkMeanZ, tBodyGyroJerkStdX, tBodyGyroJerkStdY, tBodyGyroJerkStdZ, tBodyAccMagMean, tBodyAccMagStd, tGravityAccMagMean, tGravityAccMagStd, tBodyAccJerkMagMean, tBodyAccJerkMagStd, tBodyGyroMagMean, tBodyGyroMagStd, tBodyGyroJerkMagMean, tBodyGyroJerkMagStd, fBodyAccMeanX, fBodyAccMeanY, fBodyAccMeanZ, fBodyAccStdX, fBodyAccStdY, fBodyAccStdZ, fBodyAccMeanFreqX, fBodyAccMeanFreqY, fBodyAccMeanFreqZ, fBodyAccJerkMeanX, fBodyAccJerkMeanY, fBodyAccJerkMeanZ, fBodyAccJerkStdX, fBodyAccJerkStdY, fBodyAccJerkStdZ, fBodyAccJerkMeanFreqX, fBodyAccJerkMeanFreqY, fBodyAccJerkMeanFreqZ, fBodyGyroMeanX, fBodyGyroMeanY, fBodyGyroMeanZ, fBodyGyroStdX, fBodyGyroStdY, fBodyGyroStdZ, fBodyGyroMeanFreqX, fBodyGyroMeanFreqY, fBodyGyroMeanFreqZ, fBodyAccMagMean, fBodyAccMagStd, fBodyAccMagMeanFreq, fBodyBodyAccJerkMagMean, fBodyBodyAccJerkMagStd, fBodyBodyAccJerkMagMeanFreq, fBodyBodyGyroMagMean, fBodyBodyGyroMagStd, fBodyBodyGyroMagMeanFreq, fBodyBodyGyroJerkMagMean, fBodyBodyGyroJerkMagStd, fBodyBodyGyroJerkMagMeanFreq



