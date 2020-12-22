library(data.table)
library(dplyr)

### task 1: Merges the training and the test sets to create one data set. START.
training_x <- readLines('./UCI HAR Dataset/train/X_train.txt')
training_y <- readLines('./UCI HAR Dataset/train/y_train.txt')
test_x <- readLines('./UCI HAR Dataset/test/X_test.txt')
test_y <- readLines('./UCI HAR Dataset/test/y_test.txt')

training_y <- as.numeric(training_y)
test_y <- as.numeric(test_y)

subject_id_test     <- readLines('./UCI HAR Dataset/test/subject_test.txt')
subject_id_training <- readLines('./UCI HAR Dataset/train/subject_train.txt')

subject_id <- c(subject_id_training, subject_id_test)

line_by_line <- function(x) {
    brokendown <- strsplit(x, ' ')[1]
    filtered   <- brokendown[brokendown!='']
    filtered   <- unlist(filtered)
    filtered   <- filtered[filtered!='']
    filtered   <- as.numeric(filtered)
    filtered
}

training_x <- lapply(training_x, line_by_line)
test_x <- lapply(test_x, line_by_line)
X <- c(training_x, test_x)
y <- c(training_y, test_y)

X <- as.data.table(X)
X1 <- tibble::as_tibble(X)
X2 <- transpose(X1)
X2$subject_id <- subject_id
X2$activity_name <- y
### task 1: Merges the training and the test sets to create one data set. COMPLETE.



### task 2: Extracts only the measurements on the mean and standard deviation for each measurement. START
features <- readLines('./UCI HAR Dataset/features.txt')
mean_index <- grep("\\bmean()\\b", features) # \\b for word boundary
std_index <- grep('\\bstd()\\b', features)
colindex <- sort(c(mean_index, std_index))
colindex2 <- c(colindex, (ncol(X2)-1):ncol(X2))
X2 <- X2[,colindex2]
### task 2: Extracts only the measurements on the mean and standard deviation for each measurement. COMPLETE


### 3rd task: Uses descriptive activity names to name the activities in the data set. START
feature_selected <- features[colindex]
feature_selected <- gsub('.* ', '', feature_selected)
feature_selected <- gsub('^[t]', 'time_', feature_selected)
feature_selected <- gsub('^[f]', 'frequency_', feature_selected)
feature_selected <- gsub('([B][o][d][y])', 'body_', feature_selected)
feature_selected <- gsub('([G][r][a][v][i][t][y])', 'gravity_', feature_selected)
feature_selected <- gsub('([A][c][c])', 'accelerometer_', feature_selected)
feature_selected <- gsub('([G][y][r][o])', 'gyroscope_', feature_selected)
feature_selected <- gsub('([J][e][r][k])', 'jerk_', feature_selected)
feature_selected <- gsub('([M][a][g])', 'magnitude_', feature_selected)
feature_selected <- gsub('([-][m][e][a][n][(][)])', 'mean', feature_selected)
feature_selected <- gsub('([-][s][t][d][(][)])', 'standard_deviation', feature_selected)
feature_selected <- gsub('([-][X])', '_X_axis', feature_selected)
feature_selected <- gsub('([-][Y])', '_Y_axis', feature_selected)
feature_selected <- gsub('([-][Z])', '_Z_axis', feature_selected)
feature_selected <- c(feature_selected, "subject_id", "activity_name")
colnames(X2) <- feature_selected
### 3rd task: Uses descriptive activity names to name the activities in the data set. COMPLETE


### 4th task: Appropriately labels the data set with descriptive variable names. START
activities <- readLines('./UCI HAR Dataset/activity_labels.txt')
activities <- tolower(activities) 
activities <- gsub('[0-9] ', '', activities)
for(num in 1:length(activities))
{X2$activity_name[X2$activity_name == num] = activities[num]}
### 4th task: Appropriately labels the data set with descriptive variable names. COMPLETE


### 5th task: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. START
independent_X <- X2 %>% group_by(activity_name, subject_id) %>% summarise_all(mean)
### 5th task: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. COMPLETE