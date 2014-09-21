### Introduction

This repo contains the final project for the "Getting and Cleaning Data" course in the Data Science Specialization. It produces an R variable and text file that is a tidy data set containing the average mean and standard deviation of a series of accelerometer and gyro measurements across various subjects and activities. See the Codebook for more information about the data set.

### Contents

Included in this directory is:

1. README.md - This read me file 
2. Codebook.md - A file that describes of all of the variables
3. run_analysis.R - The R script needed to run the analysis

### Input/Output

To run the analysis, download the zip file from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and save it to your working directory. Then simply run the run_analysis.R script in R Studio. 

The output will be an R variable called finaldata as well as the file finaldata.txt located at ./UCI HAR Dataset/ 

To read the output file back into R, use 

<!-- -->
	finalread <- read.table("./UCI HAR Dataset/finaldata.txt", header = TRUE)

****IMPORTANT**** To run the analysis you must have the plyr library installed. Use install.packages("plyr")

### Analysis


To complete the analysis, the R script performs the following tasks:

1. Uses the unzip function to unzip the dataset
2. Uses the read.table function to read the various files into a series of data frame variables
3. Uses the rbind function to combine the training and test data
4. Adds the column names by transposing the data frame imported from features.txt
5. Uses the cbind function to combine the subject, activities and features data
6. Uses the grep function to pull out the features columns that include means and standard deviations
7. Uses a series of sub and gsub functions to rename the columns to be clearer and include less jargon
8. Loads the plyr library
9. Uses the ddply funciton to calculate the means of all columns for each subject in each activity and places this data in a new data frame
10. Cleans up the final data frame
11. Uses write.table to write the final data frame to the file finaldata.txt



