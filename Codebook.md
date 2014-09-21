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

<table border="0" cellpadding="0" cellspacing="1" style="width: 1000px;">
	<tbody>
		<tr>
			<td><strong>Variable</strong></td>
			<td><strong>Description</strong></td>
		</tr>
		<tr>
			<td>Subject</td>
			<td>The number of the subject being observed</td>
		</tr>
		<tr>
			<td>ActivityName</td>
			<td>The name of the activity being observed</td>
		</tr>
		<tr>
			<td>Time Body Acceleration Signal Mean X</td>
			<td>The mean body acceleration signal time in the X axis</td>
		</tr>
		<tr>
			<td>Time Body Acceleration Signal Mean Y</td>
			<td>The mean body acceleration signal time in the Y axis</td>
		</tr>
		<tr>
			<td>Time Body Acceleration Signal Mean Z</td>
			<td>The mean body acceleration signal time in the Z axis</td>
		</tr>
		<tr>
			<td>Time Body Acceleration Signal Standard Deviation X</td>
			<td>The standard deviation of the body acceleration signal time in the X axis</td>
		</tr>
		<tr>
			<td>Time Body Acceleration Signal Standard Deviation Y</td>
			<td>The standard deviation of the body acceleration signal time in the Y axis</td>
		</tr>
		<tr>
			<td>Time Body Acceleration Signal Standard Deviation Z</td>
			<td>The standard deviation of the body acceleration signal time in the Z axis</td>
		</tr>
		<tr>
			<td>Time Gravity Acceleration Signal Mean X</td>
			<td>The mean gravity acceleration signal time in the X axis</td>
		</tr>
		<tr>
			<td>Time Gravity Acceleration Signal Mean Y</td>
			<td>The mean gravity acceleration signal time in the Y axis</td>
		</tr>
		<tr>
			<td>Time Gravity Acceleration Signal Mean Z</td>
			<td>The mean gravity acceleration signal time in the Z axis</td>
		</tr>
		<tr>
			<td>Time Gravity Acceleration Signal Standard Deviation X</td>
			<td>The standard deviation of the gravity acceleration signal time in the X axis</td>
		</tr>
		<tr>
			<td>Time Gravity Acceleration Signal Standard Deviation Y</td>
			<td>The standard deviation of the gravity acceleration signal time in the Y axis</td>
		</tr>
		<tr>
			<td>Time Gravity Acceleration Signal Standard Deviation Z</td>
			<td>The standard deviation of the gravity acceleration signal time in the Z axis</td>
		</tr>
		<tr>
			<td>Time Body Acceleration Signal Jerk Mean X</td>
			<td>The mean jerk of the body acceleration signal time in the X axis</td>
		</tr>
		<tr>
			<td>Time Body Acceleration Signal Jerk Mean Y</td>
			<td>The mean jerk of the body acceleration signal time in the Y axis</td>
		</tr>
		<tr>
			<td>Time Body Acceleration Signal Jerk Mean Z</td>
			<td>The mean jerk of the body acceleration signal time in the Z axis</td>
		</tr>
		<tr>
			<td>Time Body Acceleration Signal Jerk Standard Deviation X</td>
			<td>The standard deviation jerk of the body acceleration signal time in the X axis</td>
		</tr>
		<tr>
			<td>Time Body Acceleration Signal Jerk Standard Deviation Y</td>
			<td>The standard deviation jerk of the body acceleration signal time in the Y axis</td>
		</tr>
		<tr>
			<td>Time Body Acceleration Signal Jerk Standard Deviation Z</td>
			<td>The standard deviation jerk of the body acceleration signal time in the Z axis</td>
		</tr>
		<tr>
			<td>Time Body Gyro Signal Mean X</td>
			<td>The mean of the body gyroscope signal time in the X axis</td>
		</tr>
		<tr>
			<td>Time Body Gyro Signal Mean Y</td>
			<td>The mean of the body gyroscope signal time in the Y axis</td>
		</tr>
		<tr>
			<td>Time Body Gyro Signal Mean Z</td>
			<td>The mean of the body gyroscope signal time in the Z axis</td>
		</tr>
		<tr>
			<td>Time Body Gyro Signal Standard Deviation X</td>
			<td>The standard deviation of the gyroscope signal time in the X axis</td>
		</tr>
		<tr>
			<td>Time Body Gyro Signal Standard Deviation Y</td>
			<td>The standard deviation of the gyroscope signal time in the Y axis</td>
		</tr>
		<tr>
			<td>Time Body Gyro Signal Standard Deviation Z</td>
			<td>The standard deviation of the gyroscope signal time in the Z axis</td>
		</tr>
		<tr>
			<td>Time Body Gyro Signal Jerk Mean X</td>
			<td>The mean jerk of the body gyroscope signal time in the X axis</td>
		</tr>
		<tr>
			<td>Time Body Gyro Signal Jerk Mean Y</td>
			<td>The mean jerk of the body gyroscope signal time in the Y axis</td>
		</tr>
		<tr>
			<td>Time Body Gyro Signal Jerk Mean Z</td>
			<td>The mean jerk of the body gyroscope signal time in the Z axis</td>
		</tr>
		<tr>
			<td>Time Body Gyro Signal Jerk Standard Deviation X</td>
			<td>The standard deviation jerk of the body gyroscope signal time in the X axis</td>
		</tr>
		<tr>
			<td>Time Body Gyro Signal Jerk Standard Deviation Y</td>
			<td>The standard deviation jerk of the body gyroscope signal time in the Y axis</td>
		</tr>
		<tr>
			<td>Time Body Gyro Signal Jerk Standard Deviation Z</td>
			<td>The standard deviation jerk of the body gyroscope signal time in the Z axis</td>
		</tr>
		<tr>
			<td>Time Body Acceleration Signal Magnitude Mean</td>
			<td>The mean magnitude of the body acceleration signal time</td>
		</tr>
		<tr>
			<td>Time Body Acceleration Signal Magnitude Standard Deviation</td>
			<td>The standard deviation of the magnitude of the body acceleration signal time</td>
		</tr>
		<tr>
			<td>Time Gravity Acceleration Signal Magnitude Mean</td>
			<td>The mean magnitude of the gravity acceleration signal time</td>
		</tr>
		<tr>
			<td>Time Gravity Acceleration Signal Magnitude Standard Deviation</td>
			<td>The standard deviation of the magnitude of the gravity acceleration signal time</td>
		</tr>
		<tr>
			<td>Time Body Acceleration Signal Jerk Magnitude Mean</td>
			<td>The mean magnitude jerk of the body acceleration signal time</td>
		</tr>
		<tr>
			<td>Time Body Acceleration Signal Jerk Magnitude Standard Deviation</td>
			<td>The standard deviation magnitude jerk of the body acceleration signal time</td>
		</tr>
		<tr>
			<td>Time Body Gyro Signal Magnitude Mean</td>
			<td>The mean magnitude of the gyro acceleration signal time</td>
		</tr>
		<tr>
			<td>Time Body Gyro Signal Magnitude Standard Deviation</td>
			<td>The standard deviation of the magnitude of the gyro acceleration signal time</td>
		</tr>
		<tr>
			<td>Time Body Gyro Signal Jerk Magnitude Mean</td>
			<td>The mean magnitude jerk of the gyro acceleration signal time</td>
		</tr>
		<tr>
			<td>Time Body Gyro Signal Jerk Magnitude Standard Deviation</td>
			<td>The standard deviation jerk of the magnitude of the gyro acceleration signal time</td>
		</tr>
		<tr>
			<td>Frequency Body Acceleration Signal Mean X</td>
			<td>The mean frequency of the body acceleration signal in the X axis</td>
		</tr>
		<tr>
			<td>Frequency Body Acceleration Signal Mean Y</td>
			<td>The mean frequency of the body acceleration signal in the Y axis</td>
		</tr>
		<tr>
			<td>Frequency Body Acceleration Signal Mean Z</td>
			<td>The mean frequency of the body acceleration signal in the Z axis</td>
		</tr>
		<tr>
			<td>Frequency Body Acceleration Signal Standard Deviation X</td>
			<td>The standard deviation of the frequency of the body acceleration signal in the X axis</td>
		</tr>
		<tr>
			<td>Frequency Body Acceleration Signal Standard Deviation Y</td>
			<td>The standard deviation of the frequency of the body acceleration signal in the Y axis</td>
		</tr>
		<tr>
			<td>Frequency Body Acceleration Signal Standard Deviation Z</td>
			<td>The standard deviation of the frequency of the body acceleration signal in the Z axis</td>
		</tr>
		<tr>
			<td>Frequency Body Acceleration Signal Mean Frequency X</td>
			<td>The mean of the frequency of the body acceleration signal frequency in the X axis</td>
		</tr>
		<tr>
			<td>Frequency Body Acceleration Signal Mean Frequency Y</td>
			<td>The mean of the frequency of the body acceleration signal frequency in the Y axis</td>
		</tr>
		<tr>
			<td>Frequency Body Acceleration Signal Mean Frequency Z</td>
			<td>The mean of the frequency of the body acceleration signal frequency in the Z axis</td>
		</tr>
		<tr>
			<td>Frequency Body Acceleration Signal Jerk Mean X</td>
			<td>The mean jerk of the frequency of the body acceleration signal in the X axis</td>
		</tr>
		<tr>
			<td>Frequency Body Acceleration Signal Jerk Mean Y</td>
			<td>The mean jerk of the frequency of the body acceleration signal in the Y axis</td>
		</tr>
		<tr>
			<td>Frequency Body Acceleration Signal Jerk Mean Z</td>
			<td>The mean jerk of the frequency of the body acceleration signal in the Z axis</td>
		</tr>
		<tr>
			<td>Frequency Body Acceleration Signal Jerk Standard Deviation X</td>
			<td>The standard deviation jerk of the frequency of the body acceleration signal in the X axis</td>
		</tr>
		<tr>
			<td>Frequency Body Acceleration Signal Jerk Standard Deviation Y</td>
			<td>The standard deviation jerk of the frequency of the body acceleration signal in the Y axis</td>
		</tr>
		<tr>
			<td>Frequency Body Acceleration Signal Jerk Standard Deviation Z</td>
			<td>The standard deviation jerk of the frequency of the body acceleration signal in the Z axis</td>
		</tr>
		<tr>
			<td>Frequency Body Acceleration Signal Jerk Mean Frequency X</td>
			<td>The mean jerk of the frequency of the body acceleration signal frequency in the X axis</td>
		</tr>
		<tr>
			<td>Frequency Body Acceleration Signal Jerk Mean Frequency Y</td>
			<td>The mean jerk of the frequency of the body acceleration signal frequency in the Y axis</td>
		</tr>
		<tr>
			<td>Frequency Body Acceleration Signal Jerk Mean Frequency Z</td>
			<td>The mean jerk of the frequency of the body acceleration signal frequency in the Z axis</td>
		</tr>
		<tr>
			<td>Frequency Body Gyro Signal Mean X</td>
			<td>The mean of the frequency of the gyro acceleration signal in the X axis</td>
		</tr>
		<tr>
			<td>Frequency Body Gyro Signal Mean Y</td>
			<td>The mean of the frequency of the gyro acceleration signal in the Y axis</td>
		</tr>
		<tr>
			<td>Frequency Body Gyro Signal Mean Z</td>
			<td>The mean of the frequency of the gyro acceleration signal in the Z axis</td>
		</tr>
		<tr>
			<td>Frequency Body Gyro Signal Standard Deviation X</td>
			<td>The standard deviation of the frequency of the gyro acceleration signal in the X</td>
		</tr>
		<tr>
			<td>Frequency Body Gyro Signal Standard Deviation Y</td>
			<td>The standard deviation of the frequency of the gyro acceleration signal in the Y</td>
		</tr>
		<tr>
			<td>Frequency Body Gyro Signal Standard Deviation Z</td>
			<td>The standard deviation of the frequency of the gyro acceleration signal in the Z</td>
		</tr>
		<tr>
			<td>Frequency Body Gyro Signal Mean Frequency X</td>
			<td>The mean of the frequency of the gyro acceleration signal frequency in the X axis</td>
		</tr>
		<tr>
			<td>Frequency Body Gyro Signal Mean Frequency Y</td>
			<td>The mean of the frequency of the gyro acceleration signal frequency in the Y axis</td>
		</tr>
		<tr>
			<td>Frequency Body Gyro Signal Mean Frequency Z</td>
			<td>The mean of the frequency of the gyro acceleration signal frequency in the Z axis</td>
		</tr>
		<tr>
			<td>Frequency Body Acceleration Signal Magnitude Mean</td>
			<td>The mean magnitude frequency of the body acceleration signal</td>
		</tr>
		<tr>
			<td>Frequency Body Acceleration Signal Magnitude Standard Deviation</td>
			<td>The standard deviation of the magnitude frequency of the body acceleration signal</td>
		</tr>
		<tr>
			<td>Frequency Body Acceleration Signal Magnitude Mean Frequency</td>
			<td>The mean magnitude frequency of the body acceleration signal frequency</td>
		</tr>
		<tr>
			<td>Frequency Body Acceleration Signal Jerk Magnitude Mean</td>
			<td>The mean jerk magnitude frequency of the body acceleration signal</td>
		</tr>
		<tr>
			<td>Frequency Body Acceleration Signal Jerk Magnitude Standard Deviation</td>
			<td>The standard deviation of the magnitude frequency of the body acceleration signal</td>
		</tr>
		<tr>
			<td>Frequency Body Acceleration Signal Jerk Magnitude Mean Frequency</td>
			<td>The mean jerk magnitude frequency of the body acceleration signal frequency</td>
		</tr>
		<tr>
			<td>Frequency Body Gyro Signal Magnitude Mean</td>
			<td>The mean magnitude frequency of the gyro acceleration signal</td>
		</tr>
		<tr>
			<td>Frequency Body Gyro Signal Magnitude Standard Deviation</td>
			<td>The standard deviation of the magnitude frequency of the gyro acceleration signal</td>
		</tr>
		<tr>
			<td>Frequency Body Gyro Signal Magnitude Mean Frequency</td>
			<td>The mean magnitude frequency of the gyro acceleration signal frequency</td>
		</tr>
		<tr>
			<td>Frequency Body Gyro Signal Jerk Magnitude Mean</td>
			<td>The mean jerk magnitude frequency of the gyro acceleration signal</td>
		</tr>
		<tr>
			<td>Frequency Body Gyro Signal Jerk Magnitude Standard Deviation</td>
			<td>The standard deviation jerk of the magnitude frequency of the gyro acceleration signal</td>
		</tr>
		<tr>
			<td>Frequency Body Gyro Signal Jerk Magnitude Mean Frequency</td>
			<td>The mean jerk magnitude frequency of the gyro acceleration signal frequency</td>
		</tr>
	</tbody>
</table>

