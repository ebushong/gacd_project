---
title: "CodeBook.md"
author: "EBushong"
date: "September 19, 2014"
output: html_document
---

This codebook describes the variables found in the tidyDataset.txt file created by the
run_analysis.R script.  A description of the run_analysis script and how it works
can be found in the README.md file.   

The experiment involved 30 subjects engaging in 6 activities while accelerometer and gyroscope data was collected from a smartphone.  Each row of the tidyDataset.txt file contains average values for either the mean or standard deviation of 66 various signals calculated from the raw accelerometer and gyroscope data collected during a given subject/activity combination.  

All values are normalized and are therefore non-dimensional. Normalized values 
extend within a range of [-1, 1].  All 66 measurement variables are of class 'numeric'.

**1. subject**

+ class 'factor'
+ 30 levels (labeled 1 through 30) corresponding to 30 subjects involved in study


**2. activity**

+ class 'factor'
+ 6 levels corresponding to 6 activities monitored during study
 
        1. WALKING
        2. WALKING_UPSTAIRS
        3. WALKING_DOWNSTAIRS
        4. SITTING
        5. STANDING
        6. LAYING
        
        
**3. mean_time_BodyAcc_mean_X**

Average Mean of Time Domain Body Acceleration Signal - X Direction

**4. mean_time_BodyAcc_mean_Y**

Average Mean of Time Domain Body Acceleration Signal - Y Direction

**5. mean_time_BodyAcc_mean_Z**

Average Mean of Time Domain Body Acceleration Signal - Z Direction

**6. mean_time_BodyAcc_std_X**

Average Standard Deviation of Time Domain Body Acceleration Signal - X Direction

**7. mean_time_BodyAcc_std_Y**

Average Standard Deviation of Time Domain Body Acceleration Signal - Y Direction

**8. mean_time_BodyAcc_std_Z**

Average Standard Deviation of Time Domain Body Acceleration Signal - Z Direction

**9. mean_time_GravityAcc_mean_X**

Average Mean of Time Domain Gravity Acceleration Signal - X Direction

**10. mean_time_GravityAcc_mean_Y**

Average Mean of Time Domain Gravity Acceleration Signal - Y Direction

**11. mean_time_GravityAcc_mean_Z**

Average Mean of Time Domain Gravity Acceleration Signal - Z Direction

**12. mean_time_GravityAcc_std_X**

Average Standard Deviation of Time Domain Gravity Acceleration Signal - X Direction

**13. mean_time_GravityAcc_std_Y**

Average Standard Deviation of Time Domain Gravity Acceleration Signal - Y Direction

**14. mean_time_GravityAcc_std_Z**

Average Standard Deviation of Time Domain Gravity Acceleration Signal - Z Direction

**15. mean_time_BodyAccJerk_mean_X**

Average Mean of Time Domain Body Acceleration Jerk Signal - X Direction

**16. mean_time_BodyAccJerk_mean_Y**

Average Mean of Time Domain Body Acceleration Jerk Signal - Y Direction

**17. mean_time_BodyAccJerk_mean_Z**

Average Mean of Time Domain Body Acceleration Jerk Signal - Z Direction

**18. mean_time_BodyAccJerk_std_X**

Average Standard Deviation of Time Domain Body Acceleration Jerk Signal - X Direction

**19. mean_time_BodyAccJerk_std_Y**

Average Standard Deviation of Time Domain Body Acceleration Jerk Signal - X Direction

**20. mean_time_BodyAccJerk_std_Z**

Average Standard Deviation of Time Domain Body Acceleration Jerk Signal - X Direction

**21. mean_time_BodyGyro_mean_X**

Average Mean of Time Domain Body Gyroscopic Signal - X Direction

**22. mean_time_BodyGyro_mean_Y**

Average Mean of Time Domain Body Gyroscopic Signal - Y Direction

**23. mean_time_BodyGyro_mean_Z**

Average Mean of Time Domain Body Gyroscopic Signal - Z Direction

**24. mean_time_BodyGyro_std_X**

Average Standard Deviation of Time Domain Body Gyroscopic Signal - X Direction

**25. mean_time_BodyGyro_std_Y**

Average Standard Deviation of Time Domain Body Gyroscopic Signal - Y Direction

**26. mean_time_BodyGyro_std_Z**

Average Standard Deviation of Time Domain Body Gyroscopic Signal - Z Direction

**27. mean_time_BodyGyroJerk_mean_X**

Average Mean of Time Domain Body Gyroscopic Jerk Signal - X Direction

**28. mean_time_BodyGyroJerk_mean_Y**

Average Mean of Time Domain Body Gyroscopic Jerk Signal - Y Direction

**29. mean_time_BodyGyroJerk_mean_Z**

Average Mean of Time Domain Body Gyroscopic Jerk Signal - Z Direction

**30. mean_time_BodyGyroJerk_std_X**

Average Standard Deviation of Time Domain Body Gyroscopic Jerk Signal - X Direction

**31. mean_time_BodyGyroJerk_std_Y**

Average Standard Deviation of Time Domain Body Gyroscopic Jerk Signal - Y Direction

**32. mean_time_BodyGyroJerk_std_Z**

Average Standard Deviation of Time Domain Body Gyroscopic Jerk Signal - Z Direction

**33. mean_time_BodyAccMag_mean**

Average Mean of Time Domain Body Acceleration Magnitude

**34. mean_time_BodyAccMag_std**

Average Standard Deviation of Time Domain Body Acceleration Magnitude

**35. mean_time_GravityAccMag_mean**

Average Mean of Time Domain Gravity Acceleration Magnitude

**36. mean_time_GravityAccMag_std**

Average Standard Deviation of Time Domain Gravity Acceleration Magnitude

**37. mean_time_BodyAccJerkMag_mean**

Average Mean of Time Domain Body Acceleration Jerk Magnitude

**38. mean_time_BodyAccJerkMag_std**

Average Standard Deviation of Time Domain Body Acceleration Jerk Magnitude

**39. mean_time_BodyGyroMag_mean**

Average Mean of Time Domain Body Gyroscopic Magnitude

**40. mean_time_BodyGyroMag_std**

Average Standard Deviation of Time Domain Body Gyroscopic Magnitude

**41. mean_time_BodyGyroJerkMag_mean**

Average Mean of Time Domain Body Gyroscopic Jerk Magnitude

**42. mean_time_BodyGyroJerkMag_std**

Average Standard Deviation of Time Domain Body Gyroscopic Jerk Magnitude

**43. mean_frequency_BodyAcc_mean_X**

Average Mean of Frequency Domain Body Acceleration Signal - X Direction

**44. mean_frequency_BodyAcc_mean_Y**

Average Mean of Frequency Domain Body Acceleration Signal - Y Direction

**45. mean_frequency_BodyAcc_mean_Z**

Average Mean of Frequency Domain Body Acceleration Signal - Z Direction

**46. mean_frequency_BodyAcc_std_X**

Average Standard Deviation of Frequency Domain Body Acceleration Signal - X Direction

**47. mean_frequency_BodyAcc_std_Y**

Average Standard Deviation of Frequency Domain Body Acceleration Signal - Y Direction

**48. mean_frequency_BodyAcc_std_Z**

Average Standard Deviation of Frequency Domain Body Acceleration Signal - Z Direction

**49. mean_frequency_BodyAccJerk_mean_X**

Average Mean of Frequency Domain Body Acceleration Jerk Signal - X Direction

**50. mean_frequency_BodyAccJerk_mean_Y**

Average Mean of Frequency Domain Body Acceleration Jerk Signal - Y Direction

**51. mean_frequency_BodyAccJerk_mean_Z**

Average Mean of Frequency Domain Body Acceleration Jerk Signal - Z Direction

**52. mean_frequency_BodyAccJerk_std_X**

Average Standard Deviation of Frequency Domain Body Acceleration Jerk Signal - X Direction

**53. mean_frequency_BodyAccJerk_std_Y**

Average Standard Deviation of Frequency Domain Body Acceleration Jerk Signal - Y Direction

**54. mean_frequency_BodyAccJerk_std_Z**

Average Standard Deviation of Frequency Domain Body Acceleration Jerk Signal - Z Direction

**55. mean_frequency_BodyGyro_mean_X**

Average Mean of Frequency Domain Body Gyroscopic Signal - X Direction

**56. mean_frequency_BodyGyro_mean_Y**

Average Mean of Frequency Domain Body Gyroscopic Signal - Y Direction

**57. mean_frequency_BodyGyro_mean_Z**

Average Mean of Frequency Domain Body Gyroscopic Signal - Z Direction

**58. mean_frequency_BodyGyro_std_X**

Average Standard Deviation of Frequency Domain Body Gyroscopic Signal - X Direction

**59. mean_frequency_BodyGyro_std_Y**

Average Standard Deviation of Frequency Domain Body Gyroscopic Signal - Y Direction

**60. mean_frequency_BodyGyro_std_Z**

Average Standard Deviation of Frequency Domain Body Gyroscopic Signal - Z Direction

**61. mean_frequency_BodyAccMag_mean**

Average Mean of Frequency Domain Body Acceleration Magnitude

**62. mean_frequency_BodyAccMag_std**

Average Standard Deviation of Frequency Domain Body Acceleration Magnitude

**63. mean_frequency_BodyAccJerkMag_mean**

Average Mean of Frequency Domain Body Acceleration Jerk Magnitude

**64. mean_frequency_BodyAccJerkMag_std**

Average Standard Deviation of Frequency Domain Body Acceleration Jerk Magnitude

**65. mean_frequency_BodyGyroMag_mean**

Average Mean of Frequency Domain Body Gyroscopic Magnitude

**66. mean_frequency_BodyGyroMag_std**

Average Standard Deviation of Frequency Domain Body Gyroscopic Magnitude

**67. mean_frequency_BodyGyroJerkMag_mean**

Average Mean of Frequency Domain Body Gyroscopic Jerk Magnitude

**68. mean_frequency_BodyGyroJerkMag_std**

Average Standard Devaiation of Frequency Domain Body Gyroscopic Jerk Magnitude