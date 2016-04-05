##Human Activity Recognition Using Smartphones Data Set

###Source:

Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws

<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>


###Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

###Attribute Information:

For each record in the dataset it was provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

From this original data set , the following transformations were made and data was extracted :

* The training and the test sets were merged to create one data set.
* Only the measurements on the mean and standard deviation for each measurement were extracted.
* Descriptive activity names were used to name the activities in the data set.
* The data set was labelled with appropriate descriptive variable names.
* The dataset has the average of each variable for each activity and each subject.
* This results in a dataset having 
* The resulting dataset has the following columns :

	- Subject
		
			This has the values from 1 - 30 , each signifying a person 
			subjected to the test.
	
	- Activity
			
			This has the following values :
			1 WALKING
			2 WALKING_UPSTAIRS
			3 WALKING_DOWNSTAIRS
			4 SITTING
			5 STANDING
			6 LAYING
			
	- Features
			
			The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.  
			Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).  
			Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
			These signals were used to estimate variables of the feature vector for each pattern:
			'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
			
			BodyAccXYZ
			tGravityAccXYZ
			tBodyAccJerkXYZ
			tBodyGyroXYZ
			tBodyGyroJerkXYZ
			tBodyAccMag
			tGravityAccMag
			tBodyAccJerkMag
			tBodyGyroMag
			tBodyGyroJerkMag
			fBodyAccXYZ
			fBodyAccJerkXYZ
			fBodyGyroXYZ
			fBodyAccMag
			fBodyAccJerkMag
			fBodyGyroMag
			fBodyGyroJerkMag
			
			The set of variables that were estimated from these signals are: 
			
			mean(): Mean value
			std(): Standard deviation
		
The complete list of columns is as follows :

           
	1                    Subject
	2                   Activity
	3              tBodyAccmeanX
	4              tBodyAccmeanY
	5              tBodyAccmeanZ
	6               tBodyAccstdX
	7               tBodyAccstdY
	8               tBodyAccstdZ
	9           tGravityAccmeanX
	10          tGravityAccmeanY
	11          tGravityAccmeanZ
	12           tGravityAccstdX
	13           tGravityAccstdY
	14           tGravityAccstdZ
	15         tBodyAccJerkmeanX
	16         tBodyAccJerkmeanY
	17         tBodyAccJerkmeanZ
	18          tBodyAccJerkstdX
	19          tBodyAccJerkstdY
	20          tBodyAccJerkstdZ
	21            tBodyGyromeanX
	22            tBodyGyromeanY
	23            tBodyGyromeanZ
	24             tBodyGyrostdX
	25             tBodyGyrostdY
	26             tBodyGyrostdZ
	27        tBodyGyroJerkmeanX
	28        tBodyGyroJerkmeanY
	29        tBodyGyroJerkmeanZ
	30         tBodyGyroJerkstdX
	31         tBodyGyroJerkstdY
	32         tBodyGyroJerkstdZ
	33           tBodyAccMagmean
	34            tBodyAccMagstd
	35        tGravityAccMagmean
	36         tGravityAccMagstd
	37       tBodyAccJerkMagmean
	38        tBodyAccJerkMagstd
	39          tBodyGyroMagmean
	40           tBodyGyroMagstd
	41      tBodyGyroJerkMagmean
	42       tBodyGyroJerkMagstd
	43             fBodyAccmeanX
	44             fBodyAccmeanY
	45             fBodyAccmeanZ
	46              fBodyAccstdX
	47              fBodyAccstdY
	48              fBodyAccstdZ
	49         fBodyAccJerkmeanX
	50         fBodyAccJerkmeanY
	51         fBodyAccJerkmeanZ
	52          fBodyAccJerkstdX
	53          fBodyAccJerkstdY
	54          fBodyAccJerkstdZ
	55            fBodyGyromeanX
	56            fBodyGyromeanY
	57            fBodyGyromeanZ
	58             fBodyGyrostdX
	59             fBodyGyrostdY
	60             fBodyGyrostdZ
	61           fBodyAccMagmean
	62            fBodyAccMagstd
	63   fBodyBodyAccJerkMagmean
	64    fBodyBodyAccJerkMagstd
	65      fBodyBodyGyroMagmean
	66       fBodyBodyGyroMagstd
	67  fBodyBodyGyroJerkMagmean
	68   fBodyBodyGyroJerkMagstd


This results in a dataset having 180 records and 68 columns(180 x 68).