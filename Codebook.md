Getting and Cleaning Data CodeBook
===================================

The Data
-----------------
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Process
---------------
The data with similar column names were mereged using the rbind() function.  Then the data was sorted and filtered to remove the colunms 
that did not have mean or std in the column names.  Lastly, a new dataset with all the average measures for each subject
and activity type (30 subjects * 6 activities = 180 rows) was generated. The output file is called averages.txt, and uploaded to this repository.

Variables
--------
###Data Files Variables
features, activity_lables, x_train, y_train, subject_train, x_test, y_test, subject_test 


###Mereged Data Set Variables
xdata = x_train, x_test

ydata = y_train, y_test

subjectdata = subject_train, subject_test

finaldata xdata, ydata, subjectdata

###Variables to filter the column names
features_desired 

###Create of Averages

averages using the finaldata dataset and the subject and activity variables taking the column mean



