##getwd()
##setwd("C:/Users/Koen/Documents/GitHub/datasciencecoursera/Wk3 getdata/CourseProject - Getting and CLeaning Data")


## 0- Preperations (download and unzip/load plyr package)

library(plyr)
downloadfile<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipfile<-"Dataset.zip"

#Download if not already available
if(!file.exists(zipfile))
{
  download.file(downloadfile, zipfile)
}

# Unzip if necessary
if (!file.exists("UCI HAR Dataset")) { 
  unzip(zipfile) 
}

## 1- Merge the training and the test sets to create one data set.
## 2- Extract only the measurements on the mean and standard deviation for each measurement

# Only measurements (mean/std)
features <- read.table("UCI HAR Dataset/features.txt")
measurements_needed <- grep(".*mean.*|.*std.*", features[,2])
measurements_needed.names <- features[measurements_needed,2]

# Cleaner columnnames
measurements_needed.names<-gsub("fBody","FreqBody", measurements_needed.names)
measurements_needed.names<-gsub("tBody","TimeBody", measurements_needed.names)
measurements_needed.names<-gsub("tGravity","TimeGravity", measurements_needed.names)
measurements_needed.names<-gsub("-mean","Mean", measurements_needed.names)
measurements_needed.names<-gsub("-std","Std", measurements_needed.names)
measurements_needed.names<-gsub("[()-]","", measurements_needed.names)

# Read datasets
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")[measurements_needed]
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

x_test <- read.table("UCI HAR Dataset/test/X_test.txt")[measurements_needed]
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

#Merge the datasets
x<- rbind(x_train,x_test)
y<- rbind(y_train,y_test)
subject<-rbind(subject_train,subject_test)

## 3-Use descriptive activity names to name the activities in the data set
names(x)<-measurements_needed.names

activities <- read.table("UCI HAR Dataset/activity_labels.txt")

y[, 1] <- activities[y[, 1], 2]
names(y) <- "activity"


## 4_Appropriately label the data set with descriptive variable names
###############################################################################

# correct column name
names(subject) <- "subject"

# bind the data in a single data set
complete <- cbind(x, y, subject)

# Step 5
# Create a second, independent tidy data set with the average of each variable
# for each activity and each subject
###############################################################################

# 66 <- 68 columns but last two (activity & subject)
averages_data <- ddply(complete, .(subject, activity), function(x) colMeans(x[, 1:66]))

write.table(averages_data, "averages_data.txt", row.name=FALSE)
?write.table
