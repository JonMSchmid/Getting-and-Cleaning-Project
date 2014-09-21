## Introduction

This repo contains the final project for the "Getting and Cleaning Data" course in the Data Science Specialization. It produces an R variable and text file that is a tidy data set containing the average mean and standard deviation of a series of accelerometer and gyro measurements from Smartphones across various subjects and activities. See the Codebook for more information about the data set.

The experiments to generate the data set were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the researchers captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 

### Contents

Included in this directory is:

1. README.md - A read me describing how the script works 
2. Codebook.md - This file that describes of all of the variables
3. run_analysis.R - The R script needed to run the analysis

### Technical 

Each row of the produced finaldata.txt includes the average of each variable across that activity for the listed subject. The variables selected for this dataset were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Finally a Fast Fourier Transform (FFT) was applied to the frequency signals.

###Variables

****Note each row (with the exception of the "Subject" and "ActivityName" variables) of the produced finaldata.txt includes the average of each variable across the listed activity for the listed subject.


"Subject"															The number of the subject being observed							
"ActivityName"														The name of the activity being observed
"Time Body Acceleration Signal Mean X"								The mean body acceleration signal time in the X axis										
"Time Body Acceleration Signal Mean Y"								The mean body acceleration signal time in the Y axis		
"Time Body Acceleration Signal Mean Z"								The mean body acceleration signal time in the Z axis		
"Time Body Acceleration Signal Standard Deviation X"				The standard deviation of the body acceleration signal time in the X axis
"Time Body Acceleration Signal Standard Deviation Y"				The standard deviation of the body acceleration signal time in the Y axis
"Time Body Acceleration Signal Standard Deviation Z"				The standard deviation of the body acceleration signal time in the Z axis
"Time Gravity Acceleration Signal Mean X"							The mean gravity acceleration signal time in the X axis
"Time Gravity Acceleration Signal Mean Y"							The mean gravity acceleration signal time in the Y axis
"Time Gravity Acceleration Signal Mean Z"							The mean gravity acceleration signal time in the Z axis
"Time Gravity Acceleration Signal Standard Deviation X"				The standard deviation of the gravity acceleration signal time in the X axis
"Time Gravity Acceleration Signal Standard Deviation Y"				The standard deviation of the gravity acceleration signal time in the Y axis
"Time Gravity Acceleration Signal Standard Deviation Z"				The standard deviation of the gravity acceleration signal time in the Z axis
"Time Body Acceleration Signal Jerk Mean X"							The mean jerk of the body acceleration signal time in the X axis	
"Time Body Acceleration Signal Jerk Mean Y"							The mean jerk of the body acceleration signal time in the Y axis	
"Time Body Acceleration Signal Jerk Mean Z"							The mean jerk of the body acceleration signal time in the Z axis	
"Time Body Acceleration Signal Jerk Standard Deviation X"			The standard deviation jerk of the body acceleration signal time in the X axis	
"Time Body Acceleration Signal Jerk Standard Deviation Y"			The standard deviation jerk of the body acceleration signal time in the Y axis	
"Time Body Acceleration Signal Jerk Standard Deviation Z"			The standard deviation jerk of the body acceleration signal time in the Z axis	
"Time Body Gyro Signal Mean X"										The mean of the body gyroscope signal time in the X axis	
"Time Body Gyro Signal Mean Y"										The mean of the body gyroscope signal time in the Y axis	
"Time Body Gyro Signal Mean Z"										The mean of the body gyroscope signal time in the Z axis	
"Time Body Gyro Signal Standard Deviation X"						The standard deviation of the gyroscope signal time in the X axis
"Time Body Gyro Signal Standard Deviation Y"						The standard deviation of the gyroscope signal time in the Y axis
"Time Body Gyro Signal Standard Deviation Z"						The standard deviation of the gyroscope signal time in the Z axis
"Time Body Gyro Signal Jerk Mean X"									The mean jerk of the body gyroscope signal time in the X axis
"Time Body Gyro Signal Jerk Mean Y"									The mean jerk of the body gyroscope signal time in the Y axis
"Time Body Gyro Signal Jerk Mean Z"									The mean jerk of the body gyroscope signal time in the Z axis
"Time Body Gyro Signal Jerk Standard Deviation X"					The standard deviation jerk of the body gyroscope signal time in the X axis
"Time Body Gyro Signal Jerk Standard Deviation Y"					The standard deviation jerk of the body gyroscope signal time in the Y axis
"Time Body Gyro Signal Jerk Standard Deviation Z"					The standard deviation jerk of the body gyroscope signal time in the Z axis
"Time Body Acceleration Signal Magnitude Mean"						The mean magnitude of the body acceleration signal time
"Time Body Acceleration Signal Magnitude Standard Deviation"		The standard deviation of the magnitude of the body acceleration signal time
"Time Gravity Acceleration Signal Magnitude Mean"					The mean magnitude of the gravity acceleration signal time
"Time Gravity Acceleration Signal Magnitude Standard Deviation"		The standard deviation of the magnitude of the gravity acceleration signal time
"Time Body Acceleration Signal Jerk Magnitude Mean"					The mean magnitude jerk of the body acceleration signal time
"Time Body Acceleration Signal Jerk Magnitude Standard Deviation"	The standard deviation magnitude jerk of the body acceleration signal time
"Time Body Gyro Signal Magnitude Mean"								The mean magnitude of the gyro acceleration signal time
"Time Body Gyro Signal Magnitude Standard Deviation"				The standard deviation of the magnitude of the gyro acceleration signal time
"Time Body Gyro Signal Jerk Magnitude Mean"							The mean magnitude jerk of the gyro acceleration signal time
"Time Body Gyro Signal Jerk Magnitude Standard Deviation"			The standard deviation jerk of the magnitude of the gyro acceleration signal time
"Frequency Body Acceleration Signal Mean X"							The mean frequency of the body acceleration signal in the X axis
"Frequency Body Acceleration Signal Mean Y"							The mean frequency of the body acceleration signal in the Y axis
"Frequency Body Acceleration Signal Mean Z"							The mean frequency of the body acceleration signal in the Z axis
"Frequency Body Acceleration Signal Standard Deviation X"			The standard deviation of the frequency of the body acceleration signal in the X axis
"Frequency Body Acceleration Signal Standard Deviation Y"			The standard deviation of the frequency of the body acceleration signal in the Y axis
"Frequency Body Acceleration Signal Standard Deviation Z"			The standard deviation of the frequency of the body acceleration signal in the Z axis
"Frequency Body Acceleration Signal Mean Frequency X"				The mean of the frequency of the body acceleration signal frequency in the X axis
"Frequency Body Acceleration Signal Mean Frequency Y"				The mean of the frequency of the body acceleration signal frequency in the Y axis
"Frequency Body Acceleration Signal Mean Frequency Z"				The mean of the frequency of the body acceleration signal frequency in the Z axis
"Frequency Body Acceleration Signal Jerk Mean X"					The mean jerk of the frequency of the body acceleration signal in the X axis							
"Frequency Body Acceleration Signal Jerk Mean Y"					The mean jerk of the frequency of the body acceleration signal in the Y axis							
"Frequency Body Acceleration Signal Jerk Mean Z"					The mean jerk of the frequency of the body acceleration signal in the Z axis							
"Frequency Body Acceleration Signal Jerk Standard Deviation X"		The standard deviation jerk of the frequency of the body acceleration signal in the X axis							
"Frequency Body Acceleration Signal Jerk Standard Deviation Y"		The standard deviation jerk of the frequency of the body acceleration signal in the Y axis							
"Frequency Body Acceleration Signal Jerk Standard Deviation Z"		The standard deviation jerk of the frequency of the body acceleration signal in the Z axis							
"Frequency Body Acceleration Signal Jerk Mean Frequency X"			The mean jerk of the frequency of the body acceleration signal frequency in the X axis							
"Frequency Body Acceleration Signal Jerk Mean Frequency Y"			The mean jerk of the frequency of the body acceleration signal frequency in the Y axis							
"Frequency Body Acceleration Signal Jerk Mean Frequency Z"			The mean jerk of the frequency of the body acceleration signal frequency in the Z axis							
"Frequency Body Gyro Signal Mean X"									The mean of the frequency of the gyro acceleration signal in the X axis							
"Frequency Body Gyro Signal Mean Y"									The mean of the frequency of the gyro acceleration signal in the Y axis							
"Frequency Body Gyro Signal Mean Z"									The mean of the frequency of the gyro acceleration signal in the Z axis							
"Frequency Body Gyro Signal Standard Deviation X"					The standard deviation of the frequency of the gyro acceleration signal in the X 
"Frequency Body Gyro Signal Standard Deviation Y"					The standard deviation of the frequency of the gyro acceleration signal in the Y 
"Frequency Body Gyro Signal Standard Deviation Z"					The standard deviation of the frequency of the gyro acceleration signal in the Z 
"Frequency Body Gyro Signal Mean Frequency X"						The mean of the frequency of the gyro acceleration signal frequency in the X axis							
"Frequency Body Gyro Signal Mean Frequency Y"						The mean of the frequency of the gyro acceleration signal frequency in the Y axis							
"Frequency Body Gyro Signal Mean Frequency Z"						The mean of the frequency of the gyro acceleration signal frequency in the Z axis							
"Frequency Body Acceleration Signal Magnitude Mean"					The mean magnitude frequency of the body acceleration signal 
"Frequency Body Acceleration Signal Magnitude Standard Deviation"	The standard deviation of the magnitude frequency of the body acceleration signal
"Frequency Body Acceleration Signal Magnitude Mean Frequency"		The mean magnitude frequency of the body acceleration signal frequency
"Frequency Body Acceleration Signal Jerk Magnitude Mean"			The mean jerk magnitude frequency of the body acceleration signal 
"Frequency Body Acceleration Signal Jerk Magnitude Standard Deviation"	The standard deviation of the magnitude frequency of the body acceleration signal 
"Frequency Body Acceleration Signal Jerk Magnitude Mean Frequency"	The mean jerk magnitude frequency of the body acceleration signal frequency
"Frequency Body Gyro Signal Magnitude Mean"							The mean magnitude frequency of the gyro acceleration signal 
"Frequency Body Gyro Signal Magnitude Standard Deviation"			The standard deviation of the magnitude frequency of the gyro acceleration signal
"Frequency Body Gyro Signal Magnitude Mean Frequency"				The mean magnitude frequency of the gyro acceleration signal frequency
"Frequency Body Gyro Signal Jerk Magnitude Mean"					The mean jerk magnitude frequency of the gyro acceleration signal
"Frequency Body Gyro Signal Jerk Magnitude Standard Deviation"		The standard deviation jerk of the magnitude frequency of the gyro acceleration signal
"Frequency Body Gyro Signal Jerk Magnitude Mean Frequency"			The mean jerk magnitude frequency of the gyro acceleration signal frequency

