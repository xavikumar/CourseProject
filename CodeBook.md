DATA-DICTIONARY - COURSE PROJECT (Getting & CLeaning Data)


Description of the data
=============================
The database used in this project is Human Activity Recognition Using Smartphones Dataset.
Feature selection is done from the list of variables in the original dataset. Features having mean and standard deviation are taken to form set of variables in this course project. This was done as per step2 mentioned in the description of this course project. 46 variables having mean values and 33 variables having standard deviation are choosen to form a new set of variables, containing 79 variables in total.


Description of transformations and different techniques performed to clean up the data
=============================
1. xTrain and xTest are joined together to form x dataset
2. yTrain and yTest are joined together to form y dataset
3. subjectTrain and subjectTest are joined to form subject dataset
4. subject, y and activity labels datasets are joined together to form yNew dataset containing IDs
5. mean and standard deviation for each measurements are subsetted from x dataset to form xNew 
6. labelling the data set with variable names as described in CODEBOOK
7. xNew & yNew datasets are joined to make one final dataset xy
8. to create a tidy set, xy is melted to form long tidy dataset xyMelt
9. to create a tidy set, xyMelt is casted back to form "output" dataset
10. Finally, output.txt contains output dataset



Description of variables::
=============================
All the 79 variables are coded following :

[1] "TimeDomain_MEAN_BodyAccleration_Xdirection"
	Mean of Body Acceleration in X direction, for Time Domain Signal

[2] "TimeDomain_MEAN_BodyAccleration_Ydirection"  
	Mean of Body Acceleration in Y direction, for Time Domain Signal
        
[3]  "TimeDomain_MEAN_BodyAccleration_Zdirection" 
	Mean of Body Acceleration in Z direction, for Time Domain Signal

[4]  "TimeDomain_MEAN_GravityAccleration_Xdirection" 
        Mean of Gravity Acceleration in X direction, for Time Domain Signal

[5]  "TimeDomain_MEAN_GravityAccleration_Ydirection"
	Mean of Gravity Acceleration in Y direction, for Time Domain Signal     
   
[6]  "TimeDomain_MEAN_GravityAccleration_Zdirection"
	Mean of Gravity Acceleration in Y direction, for Time Domain Signal    

[7]  "TimeDomain_MEAN_BodyAcclerationJerk_Xdirection"         
	Mean of Body Acceleration Jerk in X direction, for Time Domain Signal

[8]  "TimeDomain_MEAN_BodyAcclerationJerk_Ydirection"         
	Mean of Body Acceleration Jerk in Y direction, for Time Domain Signal

[9]  "TimeDomain_MEAN_BodyAcclerationJerk_Zdirection"  
	Mean of Body Acceleration Jerk in Z direction, for Time Domain Signal        

[10] "TimeDomain_MEAN_BodyGyro_Xdirection"                    
	Mean of Body Gyro in X direction, for Time Domain Signal

[11] "TimeDomain_MEAN_BodyGyro_Ydirection"                     
	Mean of Body Gyro in Y direction, for Time Domain Signal

[12] "TimeDomain_MEAN_BodyGyro_Zdirection"           
	Mean of Body Gyro in Z direction, for Time Domain Signal        

[13] "TimeDomain_MEAN_BodyGyroJerk_Xdirection"                
	Mean of Body Gyro Jerk in X direction, for Time Domain Signal 

[14] "TimeDomain_MEAN_BodyGyroJerk_Ydirection"             
	Mean of Body Gyro Jerk in Y direction, for Time Domain Signal    

[15] "TimeDomain_MEAN_BodyGyroJerk_Zdirection"                 
	Mean of Body Gyro Jerk in Z direction, for Time Domain Signal

[16] "TimeDomain_MEAN_BodyAccleration_Magnitude"           
	Mean of Body Acceleration Magnitude, for Time Domain Signal   

[17] "TimeDomain_MEAN_GravityAccleration_Magnitude"            
	Mean of Gravity Acceleration Magnitude, for Time Domain Signal    

[18] "TimeDomain_MEAN_BodyAcclerationJerk_Magnitude"          
	Mean of Body Acceleration Jerk Magnitude, for Time Domain Signal  

[19] "TimeDomain_MEAN_BodyGyro_Magnitude"                      
	Mean of Body Gyro Magnitude, for Time Domain Signal   

[20] "TimeDomain_MEAN_BodyGyroJerk_Magnitude"                 
	Mean of Body Gyro Jerk Magnitude, for Time Domain Signal    

[21] "FreqDomain_MEAN_BodyAccleration_Xdirection"        
	Mean of Body Acceleration in X direction, for Frequency Domain Signal        

[22] "FreqDomain_MEAN_BodyAccleration_Ydirection"             
	Mean of Body Acceleration in Y direction, for Frequency Domain Signal

[23] "FreqDomain_MEAN_BodyAccleration_Zdirection" 
	Mean of Body Acceleration in Z direction, for Frequency Domain Signal
             
[24] "FreqDomain_MEAN_BodyAcclerationFrequency_Xdirection"    
	Mean of Body Acceleration Frequency in X direction, for Frequency Domain Signal

[25] "FreqDomain_MEAN_BodyAcclerationFrequency_Ydirection"   
	Mean of Body Acceleration Frequency in Y direction, for Frequency Domain Signal

[26] "FreqDomain_MEAN_BodyAcclerationFrequency_Zdirection"    
	Mean of Body Acceleration Frequency in Z direction, for Frequency Domain Signal

[27] "FreqDomain_MEAN_BodyAcclerationJerk_Xdirection"          
	Mean of Body Acceleration Jerk in X direction, for Frequency Domain Signal

[28] "FreqDomain_MEAN_BodyAcclerationJerk_Ydirection"  
	Mean of Body Acceleration Jerk in Y direction, for Frequency Domain Signal

[29] "FreqDomain_MEAN_BodyAcclerationJerk_Zdirection"  
	Mean of Body Acceleration Jerk in Z direction, for Frequency Domain Signal
      
[30] "FreqDomain_MEAN_BodyAcclerationJerkFrequency_Xdirection"
	Mean of Body Acceleration Jerk Frequency in X direction, for Frequency Domain Signal

[31] "FreqDomain_MEAN_BodyAcclerationJerkFrequency_Ydirection" 
	Mean of Body Acceleration Jerk Frequency in Y direction, for Frequency Domain Signal

[32] "FreqDomain_MEAN_BodyAcclerationJerkFrequency_Zdirection"
	Mean of Body Acceleration Jerk Frequency in Z direction, for Frequency Domain Signal

[33] "FreqDomain_MEAN_BodyGyro_Xdirection"    
	Mean of Body Gyro in X direction, for Frequency Domain Signal                

[34] "FreqDomain_MEAN_BodyGyro_Ydirection"                    
	Mean of Body Gyro in Y direction, for Frequency Domain Signal
             
[35] "FreqDomain_MEAN_BodyGyro_Zdirection"                     
	Mean of Body Gyro in Z direction, for Frequency Domain Signal              

[36] "FreqDomain_MEAN_BodyGyroFrequency_Xdirection"
	Mean of Body Gyro Frequency in X direction, for Frequency Domain Signal   
                        
[37] "FreqDomain_MEAN_BodyGyroFrequency_Ydirection"    
	Mean of Body Gyro Frequency in Y direction, for Frequency Domain Signal 
        
[38] "FreqDomain_MEAN_BodyGyroFrequency_Zdirection"           
	Mean of Body Gyro Frequency in Z direction, for Frequency Domain Signal 

[39] "FreqDomain_MEAN_BodyAccleration_Magnitude"    
	Mean of Body Acceleration Magnitude, for Frequency Domain Signal   
         
[40] "FreqDomain_MEAN_BodyAccleration_MagnitudeFrequency" 
	Mean of Body Acceleration Magnitude Frequency, for Frequency Domain Signal  
    
[41] "FreqDomain_MEAN_BodyAcclerationJerk_Magnitude"           
	Mean of Body Acceleration Jerk Magnitude, for Frequency Domain Signal  

[42] "FreqDomain_MEAN_BodyAcclerationJerk_MagnitudeFrequency" 
	Mean of Body Acceleration Jerk Magnitude Frequency, for Frequency Domain Signal  

[43] "FreqDomain_MEAN_BodyGyro_Magnitude" 
	Mean of Body Gyro Magnitude, for Frequency Domain Signal    
                  
[44] "FreqDomain_MEAN_BodyGyro_MagnitudeFrequency"    
	Mean of Body Gyro Magnitude Frequency, for Frequency Domain Signal  
        
[45] "FreqDomain_MEAN_BodyGyroJerk_Magnitude"    
	Mean of Body Gyro Jerk Magnitude, for Frequency Domain Signal  
              
[46] "FreqDomain_MEAN_BodyGyroJerk_MagnitudeFrequency" 
	Mean of Body Gyro Jerk Magnitude Frequency, for Frequency Domain Signal  
       
[47] "TimeDomain_STD_BodyAccleration_Xdirection" 
	Standard Deviation of Body Acceleration in X direction, for Time Domain Signal
              
[48] "TimeDomain_STD_BodyAccleration_Ydirection"  
	Standard Deviation of Body Acceleration in Y direction, for Time Domain Signal  
          
[49] "TimeDomain_STD_BodyAccleration_Zdirection"    
	Standard Deviation of Body Acceleration in Z direction, for Time Domain Signal 
          
[50] "TimeDomain_STD_GravityAccleration_Xdirection" 
	Standard Deviation of Gravity Acceleration in X direction, for Time Domain Signal
          
[51] "TimeDomain_STD_GravityAccleration_Ydirection"  
	Standard Deviation of Gravity Acceleration in Y direction, for Time Domain Signal
          
[52] "TimeDomain_STD_GravityAccleration_Zdirection"      
	Standard Deviation of Gravity Acceleration in Z direction, for Time Domain Signal
     
[53] "TimeDomain_STD_BodyAcclerationJerk_Xdirection"   
	Standard Deviation of Body Acceleration Jerk in X direction, for Time Domain Signal
        
[54] "TimeDomain_STD_BodyAcclerationJerk_Ydirection"       
	Standard Deviation of Body Acceleration Jerk in Y direction, for Time Domain Signal
   
[55] "TimeDomain_STD_BodyAcclerationJerk_Zdirection"           
	Standard Deviation of Body Acceleration Jerk in Z direction, for Time Domain Signal

[56] "TimeDomain_STD_BodyGyro_Xdirection"  
	Standard Deviation of Body Gyro in X direction, for Time Domain Signal
                   
[57] "TimeDomain_STD_BodyGyro_Ydirection"     
	Standard Deviation of Body Gyro in Y direction, for Time Domain Signal
                 
[58] "TimeDomain_STD_BodyGyro_Zdirection"   
	Standard Deviation of Body Gyro in Z direction, for Time Domain Signal   
               
[59] "TimeDomain_STD_BodyGyroJerk_Xdirection"    
	Standard Deviation of Body Gyro Jerk in X direction, for Time Domain Signal
              
[60] "TimeDomain_STD_BodyGyroJerk_Ydirection"   
	Standard Deviation of Body Gyro Jerk in Y direction, for Time Domain Signal
              
[61] "TimeDomain_STD_BodyGyroJerk_Zdirection"     
	Standard Deviation of Body Gyro Jerk in Z direction, for Time Domain Signal             

[62] "TimeDomain_STD_BodyAccleration_Magnitude" 
	Standard Deviation of Body Acceleration Magnitude, for Time Domain Signal
              
[63] "TimeDomain_STD_GravityAccleration_Magnitude"     
	Standard Deviation of Gravity Acceleration Magnitude, for Time Domain Signal
        
[64] "TimeDomain_STD_BodyAcclerationJerk_Magnitude"   
	Standard Deviation of Body Acceleration Jerk Magnitude, for Time Domain Signal
        
[65] "TimeDomain_STD_BodyGyro_Magnitude"   
	Standard Deviation of Body Gyro Magnitude, for Time Domain Signal
                    
[66] "TimeDomain_STD_BodyGyroJerk_Magnitude"  
	Standard Deviation of Body Gyro Jerk Magnitude, for Time Domain Signal
                
[67] "FreqDomain_STD_BodyAccleration_Xdirection" 
	Standard Deviation of Body Acceleration in X direction, for Frequency Domain Signal
              
[68] "FreqDomain_STD_BodyAccleration_Ydirection"        
	Standard Deviation of Body Acceleration in Y direction, for Frequency Domain Signal
      
[69] "FreqDomain_STD_BodyAccleration_Zdirection"  
	Standard Deviation of Body Acceleration in Z direction, for Frequency Domain Signal
             
[70] "FreqDomain_STD_BodyAcclerationJerk_Xdirection"    
	Standard Deviation of Body Acceleration Jerk in X direction, for Frequency Domain Signal
      
[71] "FreqDomain_STD_BodyAcclerationJerk_Ydirection"    
	Standard Deviation of Body Acceleration Jerk in Y direction, for Frequency Domain Signal
       
[72] "FreqDomain_STD_BodyAcclerationJerk_Zdirection"   
	Standard Deviation of Body Acceleration Jerk in Z direction, for Frequency Domain Signal
       
[73] "FreqDomain_STD_BodyGyro_Xdirection"  
	Standard Deviation of Body Gyro in Y direction, for Frequency Domain Signal
                    
[74] "FreqDomain_STD_BodyGyro_Ydirection"  
	Standard Deviation of Body Gyro in Z direction, for Frequency Domain Signal
                   
[75] "FreqDomain_STD_BodyGyro_Zdirection"   
	Standard Deviation of Body Gyro in Z direction, for Frequency Domain Signal                   

[76] "FreqDomain_STD_BodyAccleration_Magnitude"    
	Standard Deviation of Body Acceleration Magnitude, for Frequency Domain Signal           

[77] "FreqDomain_STD_BodyAcclerationJerk_Magnitude"  
	Standard Deviation of Body Acceleration Jerk Magnitude, for Frequency Domain Signal    
          
[78] "FreqDomain_STD_BodyGyro_Magnitude"   
	Standard Deviation of Body Gyro Magnitude, for Frequency Domain Signal   
                    
[79] "FreqDomain_STD_BodyGyroJerk_Magnitude"
	Standard Deviation of Body Gyro Jerk Magnitude, for Frequency Domain Signal      


Description of IDs::
=============================
Each subject and each activity labels are used to create IDs. Total number of subjects is 30 and total number of activity is 6. Hence, total 180 observations are there in the tidy dataset.


[1]            1.LAYING     => Subject 1 is Laying
[2]            1.SITTING     => Subject 1 is Sitting
[3]           1.STANDING     => Subject 1 is Standing
[4]            1.WALKING     => Subject 1 is Walking
[5] 1.WALKING_DOWNSTAIRS     => Subject 1 is Walking downstairs
[6]   1.WALKING_UPSTAIRS     => Subject 1 is Walking upstairs
[1]            2.LAYING     => Subject 2 is Laying
[2]            2.SITTING     => Subject 2 is Sitting
[3]           2.STANDING     => Subject 2 is Standing
[4]            2.WALKING     => Subject 2 is Walking
[5] 2.WALKING_DOWNSTAIRS     => Subject 2 is Walking downstairs
[6]   2.WALKING_UPSTAIRS     => Subject 2 is Walking upstairs

Similarly for each subject i.e from 3 to 30.

