How the script works and how each step is connected for the given task of Week 4 Getting and Cleaning Data Course Project peer-graded assignment.
****************************************************************************************


The script does the following 5 steps in order.
	1.	Merges the training and the test sets to create one data set.
	2.	Extracts only the measurements on the mean and standard deviation for each measurement. 
	3.	Uses descriptive activity names to name the activities in the data set
	4.	Appropriately labels the data set with descriptive variable names. 
	5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


First two lines of the script imports two libraries that this script uses - data.table and dplyr.

From the line 4 to the line 37, the script conducts the first step: Merges the training and the test sets to create one data set.

From the line 41 to the line 48, the script conducts the second step: Extracts only the measurements on the mean and standard deviation for each measurement.

From the line 51 to the line 69, the script conducts the third step: Uses descriptive activity names to name the activities in the data set

From the line 72 to the line 78, the script conducts the fourth step: Appropriately labels the data set with descriptive variable names. 

From the line 81 to the line 83, the script conducts the last step: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The object “X2” is the data frame requested between the step 1 and the step 4, and “independent_X” is the independent data set requested in the last 5th step.

