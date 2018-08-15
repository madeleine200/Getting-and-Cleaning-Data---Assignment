

  # import data for test set
  test_data <- read.table("./UCI HAR Dataset/test/X_test.txt")
  test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
  test_labels <- read.table("./UCI HAR Dataset/test/y_test.txt")
  
  #import data for training set
  train_data <- read.table("./UCI HAR Dataset/train/X_train.txt")
  train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
  train_labels <- read.table("./UCI HAR Dataset/train/y_train.txt")
  
  # merge all data together - cbind test data (test_data,test_subject,test_labels) 
  #and training data (train_data,train_subject,train_labels) then rbind both data sets together as data frame
 
  datamerge <- as.data.frame(rbind(cbind(test_subject,test_labels,test_data),cbind(train_subject,train_labels,train_data)))
  
  #import features.txt
  features <- read.table("./UCI HAR Dataset/features.txt")
  #convert features (factors) to characters 
  features <- as.character(levels(features$V2))[features$V2]
  #insert features as column names in datamerge c
  
  #find measurements containing mean and std
  feat_index <- grep("[Mm]ean|[Ss]td",features)
  
  #select columns in datamerge data frame corresponding to mean and std measurements
  column_index <- feat_index+2  # creates index of columns to select (accounts for extra columns inserted for subject and labels)
  dataselect <-datamerge[,c(1,2,column_index)]
  #creates vector of column names based on features file
  column_names <- features[feat_index]
  
  #Replace column containing activity numbers with descriptions
  #create vector of activities
  activity_vector <- c("walking","walking_upstairs","walking_downstairs","sitting","standing","laying")
  dataselect[,2] <- activity_vector[dataselect[,2]]
  
  
  #create descriptive column names based on features names
  colnames(dataselect) <- c("Subject","Activity",column_names)
  colnames(dataselect) <- sub("^f","Freq",colnames(dataselect))
  colnames(dataselect) <- sub("^t","Time",colnames(dataselect))
  colnames(dataselect) <- sub("[:(:][:):]","",colnames(dataselect))
  colnames(dataselect) <- sub("[:(:]t","(Time",colnames(dataselect))
  colnames(dataselect) <- sub("BodyBody","Body",colnames(dataselect))
  
  #group data by subject and activity 
   group_data <- group_by(dataselect,Subject,Activity)
   #calculate the mean of each variable
  finaldata <- summarise_all(group_data,funs(mean))
  finaldata <- as.data.frame(finaldata)
  print(finaldata)
 
  #output data frame to text file 'tidy_data_analysis.txt'
  write.table(finaldata,"tidy_data_analysis.txt",sep="/t",row.names=FALSE)
  
 
  