############################
## SCRIPT: run_analysis.R ##
############################



## 0.1-GET AND READ DATA:
##############

# Download zip file

url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zfile<-file.path(getwd(),"UCI HAR dataset.zip")

if(!file.exists(zfile)){
	download.file(url, destfile=zfile, method="curl")
}

# Unzip file

file<-file.path(getwd(),"UCI HAR dataset")
if(!file.exists(file)){
	unzip(zfile)
}

# Read activity labels and features shared by train/test sets

activity.labels<-read.table("UCI HAR dataset/activity_labels.txt")
features<-read.table("UCI HAR dataset/features.txt",as.is=TRUE)

# Read train/test data sets, subjects and activities

train.subject<-read.table("UCI HAR dataset/train/subject_train.txt")
test.subject<-read.table("UCI HAR dataset/test/subject_test.txt")

train.activity<-read.table("UCI HAR dataset/train/y_train.txt")
test.activity<-read.table("UCI HAR dataset/test/y_test.txt")

train.set<-read.table("UCI HAR dataset/train/X_train.txt",col.names=features[,2])
test.set<-read.table("UCI HAR dataset/test/X_test.txt",col.names=features[,2])





## 1-MERGES THE TRAINING AND THE TEST SETS TO CREATE ONE DATA SET:
##################################################################

# Combine train/test data sets

all.data.set<-rbind(cbind(train.subject,train.activity,train.set), cbind(test.subject,test.activity,test.set))


# Add column names

colnames(all.data.set)<-c("Subject","Activity",features[,2])





## 2-EXTRACTS ONLY THE MEASUREMENTS ON THE MEAN AND STANDARD DEVIATION FOR EACH MEASUREMENT:
############################################################################################

#Extract positions of the columns of interest

wanted.features<-grep("Subject|Activity|mean|std",names(all.data.set))

#Extract wanted columns of the data set

data.set<-all.data.set[,wanted.features]





## 3-USES DESCRIPTIVE ACTIVITY NAMES TO NAME THE ACTIVITIES IN THE DATA SET:
############################################################################

data.set$Activity<-factor(data.set$Activity, levels=activity.labels[,1], labels=activity.labels[,2])





## 4-APPROPIATELY LABELS THE DATA SET WITH DESCRIPTIVE VARIABLE NAMES:
######################################################################

names(data.set)<-gsub("^t","timeDomain",names(data.set))
names(data.set)<-gsub("^f","frequencyDomain",names(data.set))
names(data.set)<-gsub("Acc", "Accelerometer",names(data.set))
names(data.set)<-gsub("Gyro", "Gyroscope",names(data.set))
names(data.set)<-gsub("Jerk", "JerkSignal", names(data.set))
names(data.set)<-gsub("Mag", "Magnitude", names(data.set))



## 5-CREATES A SECOND, INDEPENDET TIDY SET WITH THE AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY AND EACH SUBJECT:
################################################################################################################

#Loading dplyr package

library(dplyr)

#Each variable grouped by activity and subject

data.set2<-data.set %>% group_by(Activity,Subject) %>% summarize_each(funs(mean))


#Output of the 2nd independent data set

write.table(data.set2, "tydy_data_set.txt", quote=FALSE, row.names=FALSE)


