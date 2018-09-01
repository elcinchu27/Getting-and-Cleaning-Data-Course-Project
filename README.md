# Getting-and-Cleaning-Data-Course-Project

This is the repo for the Getting and Cleaning Data Course Project. 

The `run_analysis.R` R script does the following steps:

1. Gets and reads the data: Downloads the zip file, and reads subjects, activity labels and features shared by train and test data sest.

2. Merges the training and the test sets to create one data set: Combines train and test data sets, and adds column names.

3. Extracts only the measurements on the mean and standard deviation for each measurement: Extracts positions of the columns of interest of the data set.

4. Uses descriptive activity names to name the activities in the data set.

5. Appropiately labels the data set with descriptive variable names.

6. Creates a second, independet tidy set with the average of each variable for each activity and each subject: loads dplyr package, groups each variable by activity and subject, amd outputs the second independent data set in the file `tidy_data_set.txt`.


The `tidy_data_site.txt` in this repository was created by running the `run_analysis.R` R script using R version 3.5.0 on Sierra macOS 10.12.x.

This script requires the dplyr package.

