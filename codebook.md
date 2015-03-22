##Codebook for Coursera 
##Getting and Cleaning Data project

All the variables in the dataset are calculated as averages for each activity and subject!

=======================================================================================
The variables selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAccelerometer-XYZ and timeGyroscope-XYZ. These time domain signals (prefix 'time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAcccelerometer-XYZ and timeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerometerJerk-XYZ and timeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerometerMagnitude, timeGravityAccelerometerMagnitude, timeBodyAccelerometerJerkManitudeg, timeBodyGyroscopeMagnitude, timeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAccelerometer-XYZ, frequencyBodyAccelerometerJerk-XYZ, frequencyBodyGyroscope-XYZ, frequencyBodyAccelerometerJerkMagnitude, frequencyBodyGyroscopeMagnitude, frequencyBodyGyroscopeJerkMagnitude. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

=======================================================================================

 [1] "Subject"     
        An identifier of the subject who carried out the experiment (one of 30 people).
        values: 1:30
        
 [2] "Activities"                                       
         1 Walking
         2 Walking_upstairs
         3 Walking downstairs
         4 Sitting
         5 Standing
         6 Laying
         
 [3] "timeBodyAccelerometer.mean.X" 
        Mean of time of body Accelerometer signal; X direction.
        Values normalised to range [-1,1]
        
 [4] "timeBodyAccelerometer.mean.Y"  
        Mean of time of body Accelerometer signal; Y direction. 
        Values normalised to range [-1,1] 
        
 [5] "timeBodyAccelerometer.mean.Z"       
         Mean of time of body Accelerometer signal; Z direction. 
        Values normalised to range [-1,1] 
        
 [6] "timeBodyAccelerometer.std.X"        
        Standard deviation of time of body Accelerometer signal; X direction. 
        Values normalised to range [-1,1] 
        
 [7] "timeBodyAccelerometer.std.Y"        
        Standard deviation of time of body Accelerometer signal; Y direction.
        Values normalised to range [-1,1] 
        
 [8] "timeBodyAccelerometer.std.Z"        
         Standard deviation of time of body Accelerometer signal; Z direction.
        Values normalised to range [-1,1] 
        
 [9] "timeGravityAccelerometer.mean.X"    
        Mean of time of gravity Accelerometer signal; X direction.
        Values normalised to range [-1,1] 
        
[10] "timeGravityAccelerometer.mean.Y"    
        Mean of time of gravity Accelerometer signal;Ydirection.
        Values normalised to range [-1,1] 
        
[11] "timeGravityAccelerometer.mean.Z"    
        Mean of time of gravity Accelerometer signal; Z direction.
        Values normalised to range [-1,1]  
        
[12] "timeGravityAccelerometer.std.X"     
        Standard deviation of time of gravity Accelerometer signal; X direction.
        Values normalised to range [-1,1]
        
[13] "timeGravityAccelerometer.std.Y"     
        Standard deviation of time of gravity Accelerometer signal; Y direction.
        Values normalised to range [-1,1] 
        
[14] "timeGravityAccelerometer.std.Z"     
        Standard deviation of time of gravity Accelerometer signal; Z direction.
        Values normalised to range [-1,1]             
        
[15] "timeBodyAccelerometerJerk.mean.X"   
        Mean of time of body Accelerometer Jerk signal; X direction.
        Values normalised to range [-1,1]  
        
[16] "timeBodyAccelerometerJerk.mean.Y"   
        Mean of time of body Accelerometer Jerk signal; Y direction.
        Values normalised to range [-1,1]             
        
[17] "timeBodyAccelerometerJerk.mean.Z"   
        Mean of time of body Accelerometer Jerk signal; Z direction.
        Values normalised to range [-1,1]             
        
[18] "timeBodyAccelerometerJerk.std.X"    
        Standard deviation of time of body Accelerometer Jerk signal; X direction.
        Values normalised to range [-1,1]    
        
[19] "timeBodyAccelerometerJerk.std.Y"    
        Standard deviation of time of body Accelerometer Jerk signal; Y direction.
        Values normalised to range [-1,1]             
        
[20] "timeBodyAccelerometerJerk.std.Z"    
        Standard deviation of time of body Accelerometer Jerk signal; Z direction.
        Values normalised to range [-1,1]             
        
[21] "timeBodyGyroscope.mean.X"               
        Mean of time of body Gyroscope signal; X direction.
        Values normalised to range [-1,1]             
        
[22] "timeBodyGyroscope.mean.Y"   
        Mean of time of body Gyroscope signal; X direction.            
        Values normalised to range [-1,1]             
        
[23] "timeBodyGyroscope.mean.Z"               
        Mean of time of body Gyroscope signal; Z direction.
        Values normalised to range [-1,1]             
        
[24] "timeBodyGyroscope.std.X"                
        Standard deviation of time of body Gyroscope signal; X direction.
        Values normalised to range [-1,1]    
        
[25] "timeBodyGyroscope.std.Y"   
        Standard deviation of time of body Gyroscope signal; Y direction.          
        Values normalised to range [-1,1]             
        
[26] "timeBodyGyroscope.std.Z"                
        Standard deviation of time of body Gyroscope signal; Z direction.
        Values normalised to range [-1,1]      
        
[27] "timeBodyGyroscopeJerk.mean.X"     
        Mean of time of body Gyroscope Jerk signal; X direction.      
        Values normalised to range [-1,1]  
        
[28] "timeBodyGyroscopeJerk.mean.Y"   
        Mean of time of body Gyroscope Jerk signal; Y direction.        
        Values normalised to range [-1,1]
        
[29] "timeBodyGyroscopeJerk.mean.Z"           
        Mean of time of body Gyroscope Jerk signal; Z direction. 
        Values normalised to range [-1,1]             
        
[30] "timeBodyGyroscopeJerk.std.X"   
        Standard deviation of time of body Gyroscope Jerk signal; X direction.          
        Values normalised to range [-1,1]     
        
[31] "timeBodyGyroscopeJerk.std.Y"            
        Standard deviation of time of body Gyroscope Jerk signal; Y direction. 
        Values normalised to range [-1,1]             
        
[32] "timeBodyGyroscopeJerk.std.Z"            
        Standard deviation of time of body Gyroscope Jerk signal; Z direction. 
        Values normalised to range [-1,1]             
        
[33] "timeBodyAccelerometerMagnitude.mean"
        Mean of time of body Accelerometer magnitude. 
        Values normalised to range [-1,1]             
        
[34] "timeBodyAccelerometerMagnitude.std"         
        Standard deviation of time of body Accelerometer magnitude. 
        Values normalised to range [-1,1]  
        
[35] "timeGravityAccelerometerMagnitude.mean"  
        Mean of time of gravity Accelerometer magnitude.         
        Values normalised to range [-1,1]
        
[36] "timeGravityAccelerometerMagnitude.std"                   
        Standard deviation of time of gravity Accelerometer magnitude.
        Values normalised to range [-1,1]
        
[37] "timeBodyAccelerometerJerkMagnitude.mean" 
        Mean of time of body Accelerometer Jerk magnitude.
        Values normalised to range [-1,1]        
        
[38] "timeBodyAccelerometerJerkMagnitude.std"
        Standard deviation of time of body Accelerometer Jerk magnitude.       
        Values normalised to range [-1,1]
        
[39] "timeBodyGyroscopeMagnitude.mean"        
        Mean of time of body Gyroscope magnitude.
        Values normalised to range [-1,1] 
        
[40] "timeBodyGyroscopeMagnitude.std"         
        Standard deviation of time of body Gyroscope magnitude.
        Values normalised to range [-1,1]      
        
[41] "timeBodyGyroscopeJerkMagnitude.mean"    
        Mean of time of body Gyroscope Jerk magnitude.
        Values normalised to range [-1,1]   
        
[42] "timeBodyGyroscopeJerkMagnitude.std"     
        Standard deviation of time of body Gyroscope Jerk magnitude.
        Values normalised to range [-1,1]  
        
[43] "frequencyBodyAccelerometer.mean.X"  
        Mean of frequency of body Accelerometer, X direction.
        Values normalised to range [-1,1]      
        
[44] "frequencyBodyAccelerometer.mean.Y"  
        Mean of frequency of body Accelerometer, Y direction.
        Values normalised to range [-1,1]        
        
[45] "frequencyBodyAccelerometer.mean.Z"          
        Mean of frequency of body Accelerometer, Z direction.
        Values normalised to range [-1,1]     
        
[46] "frequencyBodyAccelerometer.std.X"                
        Standard deviation of frequency of body Accelerometer, X direction.
        Values normalised to range [-1,1]
        
[47] "frequencyBodyAccelerometer.std.Y"   
        Standard deviation of frequency of body Accelerometer, Y direction.
        Values normalised to range [-1,1]          
        
[48] "frequencyBodyAccelerometer.std.Z"   
        Standard deviation of frequency of body Accelerometer, Z direction.
        Values normalised to range [-1,1] 
        
[49] "frequencyBodyAccelerometerJerk.mean.X"           
        Mean of frequency of body Jerk Accelerometer, X direction.
        Values normalised to range [-1,1]
        
[50] "frequencyBodyAccelerometerJerk.mean.Y"           
        Mean of frequency of body Jerk Accelerometer, Y direction.
        Values normalised to range [-1,1]
        
[51] "frequencyBodyAccelerometerJerk.mean.Z"           
        Mean of frequency of body Jerk Accelerometer, Z direction.
        Values normalised to range [-1,1]
        
[52] "frequencyBodyAccelerometerJerk.std.X"            
        Standard deviation of frequency of body Jerk Accelerometer, Y direction.
        Values normalised to range [-1,1]
        
[53] "frequencyBodyAccelerometerJerk.std.Y"
        Standard deviatiob of frequency of body Jerk Accelerometer, Y direction.
        Values normalised to range [-1,1]   
        
[54] "frequencyBodyAccelerometerJerk.std.Z"            
        Standard deviation of frequency of body Jerk Accelerometer, Z direction.
        Values normalised to range [-1,1]
        
[55] "frequencyBodyGyroscope.mean.X"          
        Mean of frequency of body Gyroscope signal, X direction.
        Values normalised to range [-1,1]    
        
[56] "frequencyBodyGyroscope.mean.Y"  
        Mean of frequency of body Gyroscope signal, Y direction.        
        Values normalised to range [-1,1]            
        
[57] "frequencyBodyGyroscope.mean.Z"          
        Mean of frequency of body Gyroscope signal, Z direction.
        Values normalised to range [-1,1] 
        
[58] "frequencyBodyGyroscope.std.X"           
        Standard deviation of frequency of body Gyroscope signal, X direction.
        Values normalised to range [-1,1]             
        
[59] "frequencyBodyGyroscope.std.Y"           
        Standard deviation of frequency of body Gyroscope signal, Y direction.
        Values normalised to range [-1,1]             
        
[60] "frequencyBodyGyroscope.std.Z"           
        Standard deviation of frequency of body Gyroscope signal, Z direction.
        Values normalised to range [-1,1]             
        
[61] "frequencyBodyAccelerometerMagnitude.mean"        
        Mean of frequency of body Accelerometer magnitude.
        Values normalised to range [-1,1]
        
[62] "frequencyBodyAccelerometerMagnitude.std"         
        Standard deviation of frequency of body Accelerometer magnitude.
        Values normalised to range [-1,1]
        
[63] "frequencyBodyBodyAccelerometerJerkMagnitude.mean"
        Mean of frequency of body body Accelerometer Jerk magnitude.
        Values normalised to range [-1,1]
        
[64] "frequencyBodyBodyAccelerometerJerkMagnitude.std"   
      Standard deviation of frequency of body body Accelerometer Jerk magnitude. 
      Values normalised to range [-1,1]
      
[65] "frequencyBodyBodyGyroscopeMagnitude.mean"
        Mean of frequency of body body Gyroscope magnitude.
        Values normalised to range [-1,1]      
        
[66] "frequencyBodyBodyGyroscopeMagnitude.std"
        Standard deviation of frequency of body body Gyroscope magnitude.
        Values normalised to range [-1,1]     
        
[67] "frequencyBodyBodyGyroscopeJerkMagnitude.mean"        
        Mean of frequency of body body Gyroscope Jerk magnitude.
        Values normalised to range [-1,1]
        
[68] "frequencyBodyBodyGyroscopeJerkMagnitude.std" 
        Standard deviation of frequency of body body Gyroscope Jerk magnitude.        
        Values normalised to range [-1,1]
        
[69] "angle.timeBodyAccelerometerMean.gravity."
        Angle of time of body Accelerometer gravity.
        Values normalised to range [-1,1]