##Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate an ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.  

##Contents of this repo:
	
	- CodeBook.md : Contains all the variables and summaries calculated including 
	  the transormations and steps in converting raw data into tidy data.
	- run_analysis.r : Has the code to take the raw data and generate a tab
	  delimited file with the tidy data.
	- readme.md - this file
	

## Steps to get the raw data and generate the tidy data file 
    
	1 Download the data from this link https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
	2 Extract the zip file to a UCI HAR Dataset directory.
	3 copy the run_analysis.r file to this directory.
	4 The run_analysis.r has a function called run_analysis which will 
	  take the raw data and generate the tidy file . Please refer to the
	  run_analysis.r file for detailed comments .
	5 From R console , type source("run_analysis.r")
	6 Then type run_analysis()
	7 Once the function has finished running you will find a file 
	  called tidy_file.txt.
	8 This is a tab delimited file containing data for 30 subjects 
	  for 6 activities over 66 features . So this is a 
	  180(rows) X 68(columns) file . Please refer to the codebook.md 
	  for detailed information about the columns anf variables.