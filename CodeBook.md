# **Code Book for Getting and Cleaning Data Course Project**

This code book describes the [data](#data), the [variables](#variables) and any [transformations](#transformations) that have been performed to clean up the data.


## **Data**

The `tidy_data.txt` file is a space-separated table that contains the subject, activity and name of the variables in the first row (described in the [Variables](#variables) section), and the values of all of theses variables in the following rows.


## **Variables**

Every row contains the subject and activity identifiers, along with 79 averaged signal variables.

### **Identifiers**

- `Subject`: Subject ID (ranges from 1-30)
- `Activity`: Activity ID, with six possible values
  - `WALKING` 
  - `WALKIN_UPSTAIRS`
  - `WALKING DOWNSTAIRS`
  - `SITTING`
  - `STANDING`
  - `LAYING`

### **Averaged Signal Variables**

- `timeDomainBodyAccelerometer-mean()-X`
- `timeDomainBodyAccelerometer-mean()-Y`
- `timeDomainBodyAccelerometer-mean()-Z`
- `timeDomainBodyAccelerometer-std()-X`
- `timeDomainBodyAccelerometer-std()-Y`
- `timeDomainBodyAccelerometer-std()-Z`
- `timeDomainGravityAccelerometer-mean()-X`
- `timeDomainGravityAccelerometer-mean()-Y`
- `timeDomainGravityAccelerometer-mean()-Z`
- `timeDomainGravityAccelerometer-std()-X`
- `timeDomainGravityAccelerometer-std()-Y`
- `timeDomainGravityAccelerometer-std()-Z`
- `timeDomainBodyAccelerometerJerkSignal-mean()-X`
- `timeDomainBodyAccelerometerJerkSignal-mean()-Y`
- `timeDomainBodyAccelerometerJerkSignal-mean()-Z`
- `timeDomainBodyAccelerometerJerkSignal-std()-X`
- `timeDomainBodyAccelerometerJerkSignal-std()-Y`
- `timeDomainBodyAccelerometerJerkSignal-std()-Z`
- `timeDomainBodyGyroscope-mean()-X`
- `timeDomainBodyGyroscope-mean()-Y`
- `timeDomainBodyGyroscope-mean()-Z`
- `timeDomainBodyGyroscope-std()-X`
- `timeDomainBodyGyroscope-std()-Y`
- `timeDomainBodyGyroscope-std()-Z`
- `timeDomainBodyGyroscopeJerkSignal-mean()-X`
- `timeDomainBodyGyroscopeJerkSignal-mean()-Y`
- `timeDomainBodyGyroscopeJerkSignal-mean()-Z`
- `timeDomainBodyGyroscopeJerkSignal-std()-X`
- `timeDomainBodyGyroscopeJerkSignal-std()-Y`
- `timeDomainBodyGyroscopeJerkSignal-std()-Z`
- `timeDomainBodyAccelerometerMagnitude-mean()`
- `timeDomainBodyAccelerometerMagnitude-std()`
- `timeDomainGravityAccelerometerMagnitude-mean()`
- `timeDomainGravityAccelerometerMagnitude-std()`
- `timeDomainBodyAccelerometerJerkSignalMagnitude-mean()`
- `timeDomainBodyAccelerometerJerkSignalMagnitude-std()`
- `timeDomainBodyGyroscopeMagnitude-mean()`
- `timeDomainBodyGyroscopeMagnitude-std()`
- `timeDomainBodyGyroscopeJerkSignalMagnitude-mean()`
- `timeDomainBodyGyroscopeJerkSignalMagnitude-std()`
- `frequencyDomainBodyAccelerometer-mean()-X`
- `frequencyDomainBodyAccelerometer-mean()-Y`
- `frequencyDomainBodyAccelerometer-mean()-Z`
- `frequencyDomainBodyAccelerometer-std()-X`
- `frequencyDomainBodyAccelerometer-std()-Y`
- `frequencyDomainBodyAccelerometer-std()-Z`
- `frequencyDomainBodyAccelerometer-meanFreq()-X`
- `frequencyDomainBodyAccelerometer-meanFreq()-Y`
- `frequencyDomainBodyAccelerometer-meanFreq()-Z`
- `frequencyDomainBodyAccelerometerJerkSignal-mean()-X`
- `frequencyDomainBodyAccelerometerJerkSignal-mean()-Y`
- `frequencyDomainBodyAccelerometerJerkSignal-mean()-Z`
- `frequencyDomainBodyAccelerometerJerkSignal-std()-X`
- `frequencyDomainBodyAccelerometerJerkSignal-std()-Y`
- `frequencyDomainBodyAccelerometerJerkSignal-std()-Z`
- `frequencyDomainBodyAccelerometerJerkSignal-meanFreq()-X`
- `frequencyDomainBodyAccelerometerJerkSignal-meanFreq()-Y`
- `frequencyDomainBodyAccelerometerJerkSignal-meanFreq()-Z`
- `frequencyDomainBodyGyroscope-mean()-X`
- `frequencyDomainBodyGyroscope-mean()-Y`
- `frequencyDomainBodyGyroscope-mean()-Z`
- `frequencyDomainBodyGyroscope-std()-X`
- `frequencyDomainBodyGyroscope-std()-Y`
- `frequencyDomainBodyGyroscope-std()-Z`
- `frequencyDomainBodyGyroscope-meanFreq()-X`
- `frequencyDomainBodyGyroscope-meanFreq()-Y`
- `frequencyDomainBodyGyroscope-meanFreq()-Z`
- `frequencyDomainBodyAccelerometerMagnitude-mean()`
- `frequencyDomainBodyAccelerometerMagnitude-std()`
- `frequencyDomainBodyAccelerometerMagnitude-meanFreq() 
- `frequencyDomainBodyBodyAccelerometerJerkSignalMagnitude-mean()`
- `frequencyDomainBodyBodyAccelerometerJerkSignalMagnitude-std()`
- `frequencyDomainBodyBodyAccelerometerJerkSignalMagnitude-meanFreq()` 
- `frequencyDomainBodyBodyGyroscopeMagnitude-mean()`
- `frequencyDomainBodyBodyGyroscopeMagnitude-std()`
- `frequencyDomainBodyBodyGyroscopeMagnitude-meanFreq()`
- `frequencyDomainBodyBodyGyroscopeJerkSignalMagnitude-mean()`
- `frequencyDomainBodyBodyGyroscopeJerkSignalMagnitude-std()`
- `frequencyDomainBodyBodyGyroscopeJerkSignalMagnitude-meanFreq()`


## **Transformations**

The original file containing the source data could be found at [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

The source data was transformed with the following steps:

1. The training and the test sets were merged to create one data set.
2. Only the measurements on the mean and standard deviation were extracted for each measurement.
3. Descriptive activity names were used to name the activities in the data set
4. Te data set was appropiately labelled with descriptive variable names.
5. From the data set in step 4, a second, independent tidy data set was created with the average of each variable for each activity and each subject.

The source data and the transformations were done by the `run_analysis.R` R script.

