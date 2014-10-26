# Getting and Cleaning Data (3rd Course in specialization)
# Course Project

# Reading all the required data files
# Reading training data set
xTrain <- read.table("./data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
yTrain <- read.table("./data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")
subjectTrain <- read.table("./data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")

# Reading testing data set
xTest <- read.table("./data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
yTest <- read.table("./data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")
subjectTest <- read.table("./data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")

# Reading features & activity labels data set
feature <- read.table("./data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt")
activityLabels <- read.table("./data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt")

## Step 1, Merges the training and the test sets to create one data set
x = rbind(xTrain,xTest); dim(x)
y = rbind(yTrain,yTest); dim(y)

# Creating subject data set from training & testing data sets
subject = rbind(subjectTrain,subjectTest); dim(subject)

## STEP 2, Extracts only the measurements on the mean and standard deviation for each measurements

# Subsetting mean measurements from feature data set
fmean <- grep(c("mean"), feature$V2,ignore.case=FALSE)
featureMean = feature[(feature$V1 %in% fmean),]; featureMean

# Subsetting standard deviation measurements from feature data set
fStd <- grep(c("std"), feature$V2)
featureStd = feature[(feature$V1 %in% fStd),]; featureStd

# Creating new feature data set containing mean & standard deviation features
featureMeanStd = rbind(featureMean,featureStd)

# Subsetting mean & standard deviation measurements from original data set
xMeanStd = x[,featureMeanStd$V1]

## Step 3, Use descriptive activity names to name the activities in the data set
# Merging y data to subject data
ySubject = cbind(subject,y)
names(ySubject) = c("Subject","Activity")
table(ySubject)

# Merging ySubject with activity labels 
activityLabels;
yNew <- merge(ySubject,activityLabels,by.x="Activity",by.y="V1",sort=FALSE,all=FALSE)
yNew$Activity = NULL; names(yNew) = c("Subject","Activity.Labels")
table(yNew)

# Step 4, Appropriately labels the data set with descriptive variable names
b = featureMeanStd

# Labelling the data set with variable names as described in CODEBOOK (created by me)
b$V2 = gsub("Body", "Body", b$V2)
b$V2 = gsub("BodyBody", "Body", b$V2)
b$V2 = gsub("Gyro", "Gyro", b$V2)
b$V2 = gsub("Jerk", "Jerk", b$V2)
b$V2 = gsub("-", "", b$V2)
b$V2 = gsub("()", "", b$V2, fixed =T)
b$V2 = paste( ifelse(grepl("mean",b$V2), "MEAN_", "STD_"), b$V2, sep="")
b$V2 = gsub("std", "", b$V2)
b$V2 = gsub("mean", "", b$V2)
b$V2 = gsub("Freq", "Frequency", b$V2)

b$V2 = paste( ifelse(grepl("f",b$V2), "FreqDomain_", "TimeDomain_"), b$V2, sep="")
b$V2 = gsub("f", "", b$V2)
b$V2 = gsub("t", "", b$V2)
b$V2 = gsub("Acc", "Accleration", b$V2)
b$V2 = gsub("Graviy", "Gravity", b$V2)
b$V2 = gsub("Mag", "_Magnitude", b$V2)
b$V2 = gsub("X", "_Xdirection", b$V2)
b$V2 = gsub("Y", "_Ydirection", b$V2)
b$V2 = gsub("Z", "_Zdirection", b$V2)

newfeatureMeanStd = b;
newfeatureMeanStd; dim(newfeatureMeanStd)

# Subsetting mean & standard deviation measurements from the original data set
xNew = x[, newfeatureMeanStd$V1]
names(xNew) = newfeatureMeanStd$V2

# Step 5, From the data set in step 4, creates a second, independent tidy data set with 
# the average of each variable for each activity and each subject

dim(yNew); dim(xNew)
table(yNew)

# Creating new IDs using Subject and Activity Labels in yNew
# An Ids represents each activity and each subject
yNew$IDs <- paste(yNew$Subject,yNew$Activity.Labels,sep =".")

# Combining xNew & yNew to make one final data set
xy <- cbind(yNew, xNew)

# Making skiny data set
# Melting the data set
library(reshape2)
xyMelt <- melt(xy, id = c("Subject", "Activity.Labels","IDs"), measure.vars= c(4:82))
dim(xyMelt);head(xyMelt)
tail(xMelt)

# Casting the data to calculate average of each variable for each IDs
output <- dcast(xyMelt, IDs ~ variable, mean )
head(output); dim(output)

write.table(output, "./data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/output.txt", row.name=FALSE)

