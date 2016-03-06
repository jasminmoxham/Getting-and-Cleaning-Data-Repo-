#Call necessary libararys

library(plyr)


# Clean up workspace
rm(list=ls())

#Set Working Director
setwd('/Users/jazz7/Documents/R/getdata-projectfiles-UCI HAR Dataset');

#Read Train Files
features = read.table('./features.txt', header=FALSE);
activity_lables  = read.table('./activity_labels.txt', header=FALSE);
x_train = read.table('./train/X_train.txt',header=FALSE);
y_train = read.table('./train/Y_train.txt',header=FALSE);
subject_train = read.table('./train/subject_train.txt',header=FALSE);

#Read Test files
x_test= read.table('./test/X_test.txt',header=FALSE);
y_test = read.table('./test/y_test.txt',header=FALSE);
subject_test = read.table('./test/subject_test.txt',header=FALSE);


#Bind the x data set;

xdata = rbind(x_train, x_test);

#Bind the y data set
ydata = rbind(y_train, y_test);

#Bind the Subject data set
subjectdata = rbind(subject_train, subject_test);

#filter out the desired columns only pull columns witgh mean or std in names
features_desired <-grep("-(mean|std)\\(\\)", features[, 2])

#use the features_desired vector to pull the desired subset from the x data
xdata <- xdata[, features_desired]

#Assign new names to the xdata set reflect the new data
names(xdata) <-features[features_desired,2]

#Assign activity names to the ydata set
ydata [,1] <-activity_lables[ydata[,1],2]

#Change the column name
names(ydata) <- "activity"

#Change the subject data column name
names(subjectdata) <- "subject"

#Bind
finaldata <- cbind(xdata, ydata, subjectdata)

#create averages 

averages <- ddply(finaldata, .(subject, activity), function(x) colMeans(x[, 1:66]))

write.table(averages, "averages.txt", row.name=FALSE)






