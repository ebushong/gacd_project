---
title: "README.md"
author: "EBushong"
date: "September 19, 2014"
output: html_document
---


##Introduction
This markdown file describes the workflow used in the run_analysis.R script.  This
script generates a tidy dataset containing average values for all mean and std variables
for each subject / activity combination resulting from the Samsung experiment
found in the UCI "Human Activity Using Smartphones Dataset" [1].  

This script presumes that it is run when the current working directory is set to 
the 'UCI HAR Dataset' folder downloaded from this site:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The run_analysis script extracts and combines mean and standard deviation
variables from the original X_train and X_test tables provided by UCI.  A description 
of variable names is found in the CodeBook.md file.

##Workflow
**1. Original tables from 'UCI HAR Dataset' folder read into R**

The following datasets are read into R using the `read.table()` function:

1. activity_labels.txt
    + *Activity code column set to class 'integer'*
    + *Activity name column set to class 'character'*
2. features.txt
    + *Row number column set to class 'integer'*
    + *Feature name column set to class 'character'*
3. y_test.txt
    + *Column name set to "activity"*
4. y_train.txt
    + *Column name set to "activity"*
5. subject_test.txt
    + *Column name set to "subject"*
6. subject_train.txt
    + *Column name set to "subject"*
7. X_test.txt
    + *Columns all set to class 'numeric' to speed up loading of table*
8. X_train.txt
    + *Columns all set to class 'numeric' to speed up loading of table*

**2. Variable names containing 'mean' or 'std' extracted from features table using `grep()`**

```
mean_std_variables <- features[grep("mean[^F]|std", features$Measurement), ]
```
* This will exclude variable names containing 'meanFreq'

**3. Mean- and std-containing variable names tidied using `gsub()` function**

* All '-' replaced with '_'
* All '()' removed
* All leading 't' replaced with 'time_' (for time domain)
* All leading 'f' replaced with 'frequency_' (for frequency domain)
* Some of the original variable names from UCI features.txt table contain a typo with 'BodyBody' instead of 'Body'. These are fixed.

**4. Mean and std measurements extracted from X_train and X_test tables using `select()`**

* Correct columns are selected using the row numbers in mean_std_variables table. These correspond to the proper column numbers in the X_train and X_test tables.

**5. Test to verify that no NA values are present in extracted measurements**

* If NAs were present, the console would display "NAs present"

**6. Complete test and train tables are formed**

* `cbind()` is used to combine subject, activity, and Measurement-MeanStd tables for test and train data

**7. Completed test and train tables are combined and wrapped in a data frame `tbl`**

* rbind() is used to concatenate completed test and train tables

**8. 'Subject' and 'activity' variables are converted to 'factor' class**

* Labels for activity factor levels are taken fron the original activity_labels.txt table

**9. Complete dataset is now fully constructed and is grouped by 'subject' and 'activity' variables**

* Resulting data frame is called "completeDataset_grouped"

**10. Tidy summary dataset is created with dplyr, where each row contains average of each feature measurement for each subject-activity combination**

* Tidy table created using dplyr `summarise_each()` function to apply the `mean()`
function to all columns except for the grouped columns 'subject' and 'activity'
* Column names for all measurement variables prefixed with "mean_",  to indicate that
these values represent the mean value of each signal feature for each subject/activity
combination

**11. Tidy dataset saved as "tidyDataset.txt"**

* `write.table()` function used with row.names = FALSE


[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012