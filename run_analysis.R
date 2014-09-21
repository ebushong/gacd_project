## run_analysis.R
## Getting and Cleaning Data - Project
## see README.md for complete description of script workflow
## script to be run with 'UCI HAR Dataset' directory set as working directory

library(dplyr)

## Reading in necessary data tables
activity_labels <- read.table("activity_labels.txt", 
                              colClasses = c("integer", "character"))

features <- read.table("features.txt", comment.char = "", nrows = 561, 
                       colClasses = c("integer", "character"), 
                       col.names = c("ColumnNumber", "Measurement"))

activities_test_data <- read.table("./test/y_test.txt", col.names = "activity")
activities_train_data <- read.table("./train/y_train.txt", col.names = "activity")

subjects_test_data <- read.table("test/subject_test.txt", col.names = "subject")
subjects_train_data <- read.table("train/subject_train.txt", col.names = "subject")

measurements_test_data <- read.table("test/X_test.txt", nrows = 2947, 
                                     colClasses = rep("numeric", 561))
measurements_train_data <- read.table("train/X_train.txt", nrows = 7352, 
                                      colClasses = rep("numeric", 561))

## Extracting relevant variable names
mean_std_variables <- features[grep("mean[^F]|std", features$Measurement), ]

## Creating tidy variable names for measurement variables
mean_std_variables$Measurement <- gsub("-", "_", mean_std_variables$Measurement)
mean_std_variables$Measurement <- gsub("\\(\\)", "", mean_std_variables$Measurement)
mean_std_variables$Measurement <- gsub("^t", "time_", mean_std_variables$Measurement)
mean_std_variables$Measurement <- gsub("^f", "frequency_", 
                                    mean_std_variables$Measurement)
mean_std_variables$Measurement <- gsub("BodyBody", "Body", 
                                       mean_std_variables$Measurement)

## Extracting mean and std measurements from measurement data tables
measurements_test_data_MeanStd <- select(measurements_test_data, 
                                         mean_std_variables$ColumnNumber)
measurements_train_data_MeanStd <- select(measurements_train_data, 
                                          mean_std_variables$ColumnNumber)

## Testing for NA values in mean and std measurement data
na_test <- is.na(measurements_test_data_MeanStd)
na_trial <- is.na(measurements_train_data_MeanStd)
if (sum(na_test) != 0 | sum(na_trial) != 0) {print("NAs present")}

## Combining subject and activity columns to measurement variable columns
train_data <- cbind(subjects_train_data, activities_train_data, 
                    measurements_train_data_MeanStd)
test_data <- cbind(subjects_test_data, activities_test_data, 
                   measurements_test_data_MeanStd)

## Combining training and test data and wrapping data frame with tbl
completeDataset <- tbl_df(rbind(train_data, test_data))
names(completeDataset)[3:68] <- mean_std_variables$Measurement

## Factorize subjects and activities
completeDataset$subject <- as.factor(completeDataset$subject)
completeDataset$activity <- as.factor(completeDataset$activity)

## Label activity factor levels
levels(completeDataset$activity) <- activity_labels$V2

## Use dplyr to create summary table
completeDataset_grouped <- group_by(completeDataset, subject, activity)

## Create summary table with mean of each measurement variable grouped by 
## subject/activity groups
tidyDataset <- summarise_each(completeDataset_grouped, funs(mean))
names(tidyDataset)[3:68] <- paste("mean_", names(tidyDataset)[3:68], sep = "")

## Write tidy dataset to .txt file
write.table(tidyDataset, file = "tidyDataset.txt", row.names = FALSE)