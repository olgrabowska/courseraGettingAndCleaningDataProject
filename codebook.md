Codebook for Coursera Getting and Cleaning Data project

The variables selected for this database show mean and standard deviations (suffixes mean and std respectively). They come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 'time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAcceleration-XYZ and timeGravityAcceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerationJerk-XYZ and timeBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerationMagnitude, timeGravityAccelerationMagnitude, timeBodyAccelerationJerkMagnitude, timeBodyGyroMagnitude, timeBodyGyroJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAcceleration-XYZ, frequencyBodyAccelerationJerk-XYZ, frequencyBodyGyro-XYZ, frequencyBodyAccelerationJerkMagnitude, frequencyBodyGyroMagnitude, frequencyBodyGyroJerkMagnitude. (Note the 'frequency' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Variables are normalized and bounded within [-1,1].

 [1] "Subject"     
        An identifier of the subject who carried out the experiment
        values: 1:30
 [2] "Activities"                                       
         1 Walking
         2 Walking_upstairs
         3 Walking downstairs
         4 Sitting
         5 Standing
         6 Laying
 [3] "timeBodyAcceleration.mean.X"                    
        Values normalised to range [-1,1]
 [4] "timeBodyAcceleration.mean.Y"       
        Values normalised to range [-1,1] 
 [5] "timeBodyAcceleration.mean.Z"       
        Values normalised to range [-1,1] 
 [6] "timeBodyAcceleration.std.X"        
        Values normalised to range [-1,1] 
 [7] "timeBodyAcceleration.std.Y"        
        Values normalised to range [-1,1] 
 [8] "timeBodyAcceleration.std.Z"        
        Values normalised to range [-1,1] 
 [9] "timeGravityAcceleration.mean.X"    
        Values normalised to range [-1,1] 
[10] "timeGravityAcceleration.mean.Y"    
        Values normalised to range [-1,1]             
[11] "timeGravityAcceleration.mean.Z"    
        Values normalised to range [-1,1]        
[12] "timeGravityAcceleration.std.X"     
        Values normalised to range [-1,1]             
[13] "timeGravityAcceleration.std.Y"     
        Values normalised to range [-1,1]             
[14] "timeGravityAcceleration.std.Z"     
        Values normalised to range [-1,1]             
[15] "timeBodyAccelerationJerk.mean.X"   
        Values normalised to range [-1,1]             
[16] "timeBodyAccelerationJerk.mean.Y"   
        Values normalised to range [-1,1]             
[17] "timeBodyAccelerationJerk.mean.Z"   
        Values normalised to range [-1,1]             
[18] "timeBodyAccelerationJerk.std.X"    
        Values normalised to range [-1,1]             
[19] "timeBodyAccelerationJerk.std.Y"    
        Values normalised to range [-1,1]             
[20] "timeBodyAccelerationJerk.std.Z"    
        Values normalised to range [-1,1]             
[21] "timeBodyGyro.mean.X"               
        Values normalised to range [-1,1]             
[22] "timeBodyGyro.mean.Y"               
        Values normalised to range [-1,1]             
[23] "timeBodyGyro.mean.Z"               
        Values normalised to range [-1,1]             
[24] "timeBodyGyro.std.X"                
        Values normalised to range [-1,1]             
[25] "timeBodyGyro.std.Y"                
        Values normalised to range [-1,1]             
[26] "timeBodyGyro.std.Z"                
        Values normalised to range [-1,1]             
[27] "timeBodyGyroJerk.mean.X"           
        Values normalised to range [-1,1]             
[28] "timeBodyGyroJerk.mean.Y"           
        Values normalised to range [-1,1]             
[29] "timeBodyGyroJerk.mean.Z"           
        Values normalised to range [-1,1]             
[30] "timeBodyGyroJerk.std.X"            
        Values normalised to range [-1,1]             
[31] "timeBodyGyroJerk.std.Y"            
        Values normalised to range [-1,1]             
[32] "timeBodyGyroJerk.std.Z"            
        Values normalised to range [-1,1]             
[33] "timeBodyAccelerationMagnitude.mean"
        Values normalised to range [-1,1]             
[34] "timeBodyAccelerationMagnitude.std"         
        Values normalised to range [-1,1]     
[35] "timeGravityAccelerationMagnitude.mean"          
        Values normalised to range [-1,1]
[36] "timeGravityAccelerationMagnitude.std"                   
        Values normalised to range [-1,1]
[37] "timeBodyAccelerationJerkMagnitude.mean" 
        Values normalised to range [-1,1]        
[38] "timeBodyAccelerationJerkMagnitude.std"          
        Values normalised to range [-1,1]
[39] "timeBodyGyroMagnitude.mean"        
        Values normalised to range [-1,1]             
[40] "timeBodyGyroMagnitude.std"         
        Values normalised to range [-1,1]             
[41] "timeBodyGyroJerkMagnitude.mean"    
        Values normalised to range [-1,1]             
[42] "timeBodyGyroJerkMagnitude.std"     
        Values normalised to range [-1,1]             
[43] "frequencyBodyAcceleration.mean.X"  
        Values normalised to range [-1,1]             
[44] "frequencyBodyAcceleration.mean.Y"  
        Values normalised to range [-1,1]             
[45] "frequencyBodyAcceleration.mean.Z"          
        Values normalised to range [-1,1]             
[46] "frequencyBodyAcceleration.std.X"                
        Values normalised to range [-1,1]
[47] "frequencyBodyAcceleration.std.Y"   
        Values normalised to range [-1,1]             
[48] "frequencyBodyAcceleration.std.Z"   
        Values normalised to range [-1,1]             
[49] "frequencyBodyAccelerationJerk.mean.X"           
        Values normalised to range [-1,1]
[50] "frequencyBodyAccelerationJerk.mean.Y"           
        Values normalised to range [-1,1]
[51] "frequencyBodyAccelerationJerk.mean.Z"           
        Values normalised to range [-1,1]
[52] "frequencyBodyAccelerationJerk.std.X"            
        Values normalised to range [-1,1]
[53] "frequencyBodyAccelerationJerk.std.Y"
        Values normalised to range [-1,1]            
[54] "frequencyBodyAccelerationJerk.std.Z"            
        Values normalised to range [-1,1]
[55] "frequencyBodyGyro.mean.X"          
        Values normalised to range [-1,1]             
[56] "frequencyBodyGyro.mean.Y"          
        Values normalised to range [-1,1]             
[57] "frequencyBodyGyro.mean.Z"          
        Values normalised to range [-1,1]             
[58] "frequencyBodyGyro.std.X"           
        Values normalised to range [-1,1]             
[59] "frequencyBodyGyro.std.Y"           
        Values normalised to range [-1,1]             
[60] "frequencyBodyGyro.std.Z"           
        Values normalised to range [-1,1]             
[61] "frequencyBodyAccelerationMagnitude.mean"        
        Values normalised to range [-1,1]
[62] "frequencyBodyAccelerationMagnitude.std"         
        Values normalised to range [-1,1]
[63] "frequencyBodyBodyAccelerationJerkMagnitude.mean"
        Values normalised to range [-1,1]
[64] "frequencyBodyBodyAccelerationJerkMagnitude.std" 
        Values normalised to range [-1,1]
[65] "frequencyBodyBodyGyroMagnitude.mean"
        Values normalised to range [-1,1]            
[66] "frequencyBodyBodyGyroMagnitude.std"
        Values normalised to range [-1,1]             
[67] "frequencyBodyBodyGyroJerkMagnitude.mean"        
        Values normalised to range [-1,1]
[68] "frequencyBodyBodyGyroJerkMagnitude.std"         
        Values normalised to range [-1,1]
[69] "angle.timeBodyAccelerationMean.gravity."
        Values normalised to range [-1,1]