CourseProject
=============

Course Project of Getting &amp; Cleaning Data
# Getting and Cleaning Data (3rd Course in specialization)
# Course Project

# Reading all the required data files
# Reading training data set
xTrain, yTrain, subjectTrain

# Reading testing data set
xTest, yTest, subjectTest

# Reading features & activity labels data set
feature, activityLabels

## Step 1, Merges the training and the test sets to create one data set
x = rbind(xTrain,xTest); dim(x)
y = rbind(yTrain,yTest); dim(y)

# Creating subject data set from training & testing data sets
subject = rbind(subjectTrain,subjectTest); dim(subject)

## STEP 2, Extracts only the measurements on the mean and standard deviation for each measurements

# Subsetting mean measurements from feature data set and creating featureMean
# Subsetting standard deviation measurements from feature data set and creating featureStd

# Creating new feature data set containing mean & standard deviation features
featureMeanStd = rbind(featureMean,featureStd)

# Subsetting mean & standard deviation measurements from original data set
xMeanStd = x[,featureMeanStd$V1]

## Step 3, Use descriptive activity names to name the activities in the data set
# Merging y data to subject data
ySubject = cbind(subject,y)

# Merging ySubject with activity labels 

# Step 4, Appropriately labels the data set with descriptive variable names

# Labelling the data set with variable names as described in CODEBOOK (created by me)

newfeatureMeanStd contains new names of variables

# Subsetting mean & standard deviation measurements from the original data set

# Step 5, From the data set in step 4, creates a second, independent tidy data set with 
# the average of each variable for each activity and each subject

# Creating new IDs using Subject and Activity Labels in yNew
# An Ids represents each activity and each subject
# Combining xNew & yNew to make one final data set

# Making skiny data set
# Melting the data set
xyMelt <- melt(xy, id = c("Subject", "Activity.Labels","IDs"), measure.vars= c(4:82))

# Casting the data to calculate average of each variable for each IDs
output <- dcast(xyMelt, IDs ~ variable, mean )

# Writing the output to a text file
write.table(output, "./data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/output.txt", row.name=FALSE)

