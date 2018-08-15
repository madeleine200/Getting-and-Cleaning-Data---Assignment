# Analysis Procedure

The script run_analysis.R does the following:
1. Loads data files for training and test sets and merges them into a single data frame 
2. Assigns column headings based on the features.txt file
3. Identifies variables containing mean and standard deviation measurements and extracts only those columns
4. The activity codes are replaced with descriptions of the activity undertaken from the activity_labels.txt file
5. The column headings are replaced with more descriptive names and extra symbols are removed (eg '()'), and names containing the typo 'BodyBody" is replaced with 'Body'
6. The data set is grouped by the subject and the activity and the mean of every  column is calculated
7. A tidy data set is written to the file tidy_data_analysis.txt

# Output Data Variables
The output file tidy_data_analysis.txt contains data with in the following columns:
* Subject - ID of the test subject 
* Activity - activity undertaken by test subject 

## Measurement Variables
* TimeBodyAcc-mean-X
* TimeBodyAcc-mean-Y
* TimeBodyAcc-mean-Z
* TimeBodyAcc-std-X
* TimeBodyAcc-std-Y
* TimeBodyAcc-std-Z
* TimeGravityAcc-mean-X
* TimeGravityAcc-mean-Y
* TimeGravityAcc-mean-Z
* TimeGravityAcc-std-X	
* TimeGravityAcc-std-Y	
* TimeGravityAcc-std-Z	
* TimeBodyAccJerk-mean-X	
* TimeBodyAccJerk-mean-Y	
* TimeBodyAccJerk-mean-Z	
* TimeBodyAccJerk-std-X	
* TimeBodyAccJerk-std-Y	
* TimeBodyAccJerk-std-Z	
* TimeBodyGyro-mean-X	
* TimeBodyGyro-mean-Y	
* TimeBodyGyro-mean-Z	
* TimeBodyGyro-std-X	
* TimeBodyGyro-std-Y	
* TimeBodyGyro-std-Z	
* TimeBodyGyroJerk-mean-X	
* TimeBodyGyroJerk-mean-Y	
* TimeBodyGyroJerk-mean-Z	
* TimeBodyGyroJerk-std-X	
* TimeBodyGyroJerk-std-Y	
* TimeBodyGyroJerk-std-Z	
* TimeBodyAccMag-mean	
* TimeBodyAccMag-std	
* TimeGravityAccMag-mean	
* TimeGravityAccMag-std	
* TimeBodyAccJerkMag-mean	
* TimeBodyAccJerkMag-std	
* TimeBodyGyroMag-mean	
* TimeBodyGyroMag-std	
* TimeBodyGyroJerkMag-mean	
* TimeBodyGyroJerkMag-std	
* FreqBodyAcc-mean-X	
* FreqBodyAcc-mean-Y	
* FreqBodyAcc-mean-Z	
* FreqBodyAcc-std-X	
* FreqBodyAcc-std-Y	
* FreqBodyAcc-std-Z	
* FreqBodyAcc-meanFreq-X	
* FreqBodyAcc-meanFreq-Y	
* FreqBodyAcc-meanFreq-Z	
* FreqBodyAccJerk-mean-X	
* FreqBodyAccJerk-mean-Y	
* FreqBodyAccJerk-mean-Z	
* FreqBodyAccJerk-std-X	
* FreqBodyAccJerk-std-Y	
* FreqBodyAccJerk-std-Z	
* FreqBodyAccJerk-meanFreq-X	
* FreqBodyAccJerk-meanFreq-Y	
* FreqBodyAccJerk-meanFreq-Z	
* FreqBodyGyro-mean-X	
* FreqBodyGyro-mean-Y	
* FreqBodyGyro-mean-Z	
* FreqBodyGyro-std-X	
* FreqBodyGyro-std-Y	
* FreqBodyGyro-std-Z	
* FreqBodyGyro-meanFreq-X	
* FreqBodyGyro-meanFreq-Y	
* FreqBodyGyro-meanFreq-Z	
* FreqBodyAccMag-mean	
* FreqBodyAccMag-std	
* FreqBodyAccMag-meanFreq	
* FreqBodyAccJerkMag-mean	
* FreqBodyAccJerkMag-std	
* FreqBodyAccJerkMag-meanFreq	
* FreqBodyGyroMag-mean	
* FreqBodyGyroMag-std	
* FreqBodyGyroMag-meanFreq	
* FreqBodyGyroJerkMag-mean	
* FreqBodyGyroJerkMag-std	
* FreqBodyGyroJerkMag-meanFreq	
* angle(TimeBodyAccMean,gravity)	
* angle(TimeBodyAccJerkMean),gravityMean)	
* angle(TimeBodyGyroMean,gravityMean)	
* angle(TimeBodyGyroJerkMean,gravityMean)	
* angle(X,gravityMean)	
* angle(Y,gravityMean)	
* angle(Z,gravityMean)



# Explanation of files
features.txt: Names of the 561 measurements columns.

activity_labels.txt: Names and activity code for each of the 6 activities.

X_train.txt: 7352 observations of the 561 features..

subject_train.txt: A vector of 7352 integers, denoting the ID of the volunteer related to each of the observations in X_train.txt.

y_train.txt: A vector of 7352 integers, denoting the ID of the activity related to each of the observations in X_train.txt.

X_test.txt: 2947 observations of the 561 features.

subject_test.txt: A vector of 2947 integers, denoting the ID of the volunteer related to each of the observations in X_test.txt.

y_test.txt: A vector of 2947 integers, denoting the ID of the activity related to each of the observations in X_test.txt.

More information about the files is available in README.txt. More information about the features is available in features_info.txt.
