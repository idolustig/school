#Getting and Cleaning Data: Course Project  
##Introduction  
This repository contains work done as part of the Coursera course "Getting and Cleaning data".   
The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set.  

##Raw data  
Raw data is found under the "UCI HAR Dataset" folder. There are 2 sets - train and test - per each data type:  
  * 561 unlabelled features (x_test.txt, x_train.txt)  
  * Activity labels (y_test, y_train.txt)  
In addition, the test subjects are found in subject_test.txt and subject_test.txt files.  

##Script - run_analysis.R  
A script called [run_analysis.R](https://github.com/idolustig/school/tree/master/02_DataScience/03_GettingData/run_analysis.R) performs all the activities - collecting, cleaning, and merging the data.  

###Prerequisites 
For the script to run properly, the following are required: 
  * UCI HAR Dataset extracted  
  * UCI HAR Dataset available in a folder called "UCI HAR Dataset"  

###Code outcome  
  * Merged test and training sets  
  * Only mean and std columns are kept  
  * Clean labels  
  * A tidy data set - "tidy.txt", found in this repo  

###Code book  
The [CodeBook.md](https://github.com/idolustig/school/tree/master/02_DataScience/03_GettingData/CodeBook.md) file holds all relevant information about the codebook.

