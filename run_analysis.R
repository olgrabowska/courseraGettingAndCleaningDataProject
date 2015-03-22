'Course project'
'Instructions:'
'You should create one R script called run_analysis.R that does the following. 

    1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each 
        measurement. 
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive variable names. 
    5. From the data set in step 4, creates a second, independent tidy data set 
        with the average of each variable for each activity and each subject.
'

###########################################   Step 1

#Merges the training and the test sets to create one data set.

#The code creates Train and Test datasets separately and binds them using rbind.
#setwd("C:/Users/Ola/Desktop/Coursera/Getting_and_Cleaning_Data/Excercises/Course_project")

#Read the variable names vector.
colNamesFile<-read.table('UCI HAR Dataset/features.txt',stringsAsFactors =F)
columnNames<-colNamesFile[,2]

#Read the test and train datasets.
rawDataTest<-read.table('UCI HAR Dataset/test/X_test.txt',sep="",
                        col.names=columnNames)
rawDataTrain<-read.table('UCI HAR Dataset/train/X_train.txt',sep="", 
                         col.names=columnNames)

#Change the row names in test dataset so that in merging two datasets there is no error.
rowNames<-paste("Test",1:nrow(rawDataTest) , sep = "")
rownames(rawDataTest)= make.names(rowNames, unique=TRUE)

#Read the activities data for test and train datasets.
activitiesTest<-read.table('UCI HAR Dataset/test/Y_test.txt',sep="", 
                           col.names="ActivitiesLabels")
activitiesTrain<-read.table('UCI HAR Dataset/train/Y_train.txt',sep="", 
                            col.names="ActivitiesLabels")

#Read the subject data for test and train datasets.
subjectTest<-read.table('UCI HAR Dataset/test/subject_test.txt',sep="", 
                        col.names="Subject")
subjectTrain<-read.table('UCI HAR Dataset/train/subject_train.txt',sep="", 
                         col.names="Subject")

#Change the activities and subjects vectors to numeric (so that later on the 
#data can be merged using rbind) and adding them to test and train datasets.
rawDataTest$Activities<-as.numeric(unlist(abs(activitiesTest)))
rawDataTrain$Activities<-as.numeric(unlist(abs(activitiesTrain)))
rawDataTrain$Subject<-as.numeric(unlist(abs(subjectTrain)))
rawDataTest$Subject<-as.numeric(unlist(abs(subjectTest)))

#Merging the Test and Train datasets together.
rawData<-rbind(rawDataTest,rawDataTrain)

rm(rawDataTest, rawDataTrain, activitiesTest, activitiesTrain, subjectTest, 
   subjectTrain, columnType, columnWidth, colNamesFile, rowNames)


###########################################   Step 2

#Extracts only the measurements on the mean and standard deviation for each measurement.

#The code finds variables with words "mean", "std" and "ActivitiesLables" and "Subject" and 
#leaves just those variables in the data. Then it removes those variables with gravityMean 
#and freqMean. That is why the process of choosing the right columns is two stepped.
#Finally, removes unnecessary objects.
columnNamesPlusActivitiesAndSubject<-c(columnNames,"ActivitiesLabels", "Subject")
vectorMeanAndstd<-grepl("mean|std|Subject|ActivitiesLabels",
                        columnNamesPlusActivitiesAndSubject,ignore.case=T)
rawDataShorter<-rawData[,vectorMeanAndstd]
freqOrGravityMean<-grepl("meanFreq|gravityMean|AccelerationMean",colnames(rawDataShorter))
finalColumnsVector<-rep(1,88)-freqOrGravityMean
rawDataShort<-rawDataShorter[,as.logical(finalColumnsVector)]

rm(columnNames,columnNamesPlusActivitiesAndSubject,vectorMeanAndstd, rawData, 
   rawDataShorter,freqOrGravityMean,finalColumnsVector)

#####################################   Step 3

#Uses descriptive activity names to name the activities in the data set

#Read the activities labels from the file and assign those labels to the data. 
#Then remove unnecessary objects.
activitiesLabels<-read.table('UCI HAR Dataset/activity_labels.txt',sep="", 
                             col.names=c("id","Activity"))
rawDataShort$Activities <- factor(rawDataShort$Activities,
                    levels = activitiesLabels[,1],
                    labels = activitiesLabels[,2])
rm(activitiesLabels)

####################################   Step 4

# Appropriately labels the data set with descriptive variable names.

#The code creates a set of new column names from the old one using Camel notation.
newColNames<-colnames(rawDataShort)
newColNames<-gsub("tBody","timeBody",newColNames)
newColNames<-gsub("tGravity","timeGravity",newColNames)
newColNames<-gsub("Acc","Acceleration",newColNames)
newColNames<-gsub("fBody","frequencyBody",newColNames)
newColNames<-gsub("Mag","Magnitude",newColNames)
newColNames<-gsub("std..","std",newColNames, fixed=T)
newColNames<-gsub("mean..","mean",newColNames, fixed=T)

colnames(rawDataShort)<-newColNames
###################################   Step 5

#From the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject.
#Using dplyr package the data is grouped by Subject and Activities variables and then summarized.
#The output is written into csv and print on screen.

library(dplyr)
data<-tbl_df(rawDataShort)
rm("rawDataShort")
groupedBySubjectActivities<-group_by(data, Subject, Activities)
dataSummarized <- summarise_each(groupedBySubjectActivities,
                      funs(mean)
                      )

rm(data, groupedBySubjectActivities, newColNames)
write.table(dataSummarized, file="dataSummarized.txt",row.names=F)
colnames(dataSummarized)
