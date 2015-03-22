
##Human Activity Recognition Using Smartphones Dataset 
##for Coursera Data Cleaning project


Detailed description can be found in the run_analysis.R file. The R script called run_analysis.R works as follows: 

    1. Merges the training and the test sets to create one data set.
    Given that the data for the task is set in 6 files the script at first reads:
        train and test datasets as well as test and train activities vectors and 
        test and train subject vectors.
        Then it merges then in one dataset.
        
    2. Extracts only the measurements on the mean and standard deviation for each 
        measurement. 
        Using the grepl function the code searches for those column names which have 
        mean or standard deviations in their names (and also subject and activity). A
        vector is created indicating which columns to keep.
        As this fragment of code returns also results as "meanFreq" which are not 
        necessary another vector is created which allows to remove the unnecessary
        columns from the dataset.
        
    3. Uses descriptive activity names to name the activities in the data set
        using activity_labels.txt file the labels are read into R and applied to the dataset.
    
    4. Appropriately labels the data set with descriptive variable names. 
        The code creates a set of new column names from the old one using Camel notation.
    
    5. From the data set in step 4, creates a second, independent tidy data set 
        with the average of each variable for each activity and each subject.
        Using dplyr package the data is grouped by Subject and Activities variables and 
        then summarized. The output is written into txt file.