## Getting and Cleaning Data, Course Project
## Brad Chadwell, October 16, 2015

## Merge training and test data sets, subset only mean and std dev variables;
## Tidy data, and summarize data by activity and subject

# Download and unzip data files
# setwd("~/Coursera/getdata/getdata_proj")
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipfileName <- "./getdat-projectfiles-UCI HAR Dataset.zip"
download.file(fileUrl, destfile = zipfileName, method = "curl")
unzip(zipFileName, exdir = ".")

# 1. Merge the training and the test sets to create one data set.
XTrain <- read.csv("UCI HAR Dataset/train/X_train.txt", sep="", header=FALSE)
XTest <- read.csv("UCI HAR Dataset/test/X_test.txt", sep="", header=FALSE)
Xmerged <- rbind(XTrain, XTest)

SubjectTrain <- read.csv("UCI HAR Dataset/train/subject_train.txt", sep="", header=FALSE)
SubjectTest <- read.csv("UCI HAR Dataset/test/subject_test.txt", sep="", header=FALSE)
Subjectmerged <-rbind(SubjectTrain,SubjectTest)
names(Subjectmerged) <- "Subject"

# 2. Extract only the measurements on the mean and standard deviation for each
# measurement.
features <- read.csv("UCI HAR Dataset/features.txt", sep="", header=FALSE)
names(Xmerged) <- features[,2] #apply column names to data set
cols2keep <- grep("(mean|std)\\(\\)", names(Xmerged))
Xmerged <- Xmerged[,cols2keep]

# 3. Use descriptive activity names to name the activities in the data set
YTrain <- read.csv("UCI HAR Dataset/train/y_train.txt", sep="", header=FALSE)
YTest <- read.csv("UCI HAR Dataset/test/y_test.txt", sep="", header=FALSE)
Ymerged <- rbind(YTrain, YTest)

activityLabels <- read.csv("UCI HAR Dataset/activity_labels.txt", sep="", header=FALSE)
Activities <- activityLabels[Ymerged$V1,2]

# 4. Appropriately label the data set with descriptive variable names.

# replace "mean()" with "Mean", "std()" with "StdDev"
# replace "t" with "Time" and "f" with "Frequency"
# remove "-" and repeated "BodyBody"
names(Xmerged) <- gsub("-mean\\(\\)", "Mean", names(Xmerged))
names(Xmerged) <- gsub("-std\\(\\)", "StdDev", names(Xmerged))
names(Xmerged) <- gsub("^t", "Time", names(Xmerged))
names(Xmerged) <- gsub("^f", "Frequency", names(Xmerged))
names(Xmerged) <- gsub("-", "", names(Xmerged))
names(Xmerged) <- gsub("BodyBody", "Body", names(Xmerged))

tidy <- cbind(Activity = Activities, Subject = Subjectmerged, Xmerged)

# 5. From the data set in step 4, create a second, independent tidy data set with the
# average of each variable for each activity and each subject.

# use ddply to split, apply, merge; apply colMeans to every col except first two
library(plyr)
tidy.means <- ddply(tidy, .(Activity, Subject),
                    function(x) { colMeans(x[,-c(1,2)]) })
#prepend "Mean" to variable names (except Subject and Activity)
names(tidy.means)[-c(1,2)] <- paste0("Mean",names(tidy.means)[-c(1,2)])

# write table to file
write.table(tidy.means, "tidy-means.txt", row.names = FALSE)

# return tidy.means table
tidy.means


