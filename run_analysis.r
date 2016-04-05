run_analysis <- function() {
        
        library(dplyr)
        
        #read the fearures file . THis has the feature\column names
        dtFeatures <- readLines("features.txt")
        
        #read the test and training data sets from file and merge them into 1 dataset
        dtTest <-read.table("test/X_test.txt",sep = "" ,header = FALSE ,stringsAsFactors = FALSE)
        dtTrain <-read.table("train/X_train.txt",sep = "" ,header = FALSE ,stringsAsFactors = FALSE)
        dtTestTrain <- rbind(dtTest, dtTrain)
        
        #give the dataset meaningful column names based on the features dataset we read earlier
        colnames(dtTestTrain) <- dtFeatures
        
        #Keep columns having mean and std as we don't need the rest
        dtTestTrainFinal <-dtTestTrain[, grepl("mean\\(\\)|std()", names(dtTestTrain))]
        
        #read the test and train activity data sets from file and merge them into 1 dataset
        dtTestActivity <-read.table("test/y_test.txt",header = FALSE,stringsAsFactors = FALSE)
        dtTrainActivity <-read.table("train/y_train.txt",header = FALSE,stringsAsFactors = FALSE)
        dtActivity <- rbind(dtTestActivity, dtTrainActivity)
        
        #read the test and train datasets containing the subjects from file and merge into 1 dataset
        dtTestSubject <-read.table("test/subject_test.txt",header = FALSE,stringsAsFactors = FALSE)
        dtTrainSubject <-read.table("train/subject_train.txt",header = FALSE,stringsAsFactors = FALSE)
        dtSubject <- rbind(dtTestSubject, dtTrainSubject)
        
        #merge into 1 dataset containing our subjects , activities and their features
        dtFinal <- cbind(dtSubject, dtActivity, dtTestTrainFinal)
        
        #name the first 2 columns with readable names (subject and activity)
        colnames(dtFinal)[1] <- "subject"
        colnames(dtFinal)[2] <- "activity"
        
        #read in the activity labels from file
        dtActivityLabels <-read.table("activity_labels.txt",header = FALSE,stringsAsFactors = FALSE)
        
        #name the activities with labels (1 WALKING,2 WALKING_UPSTAIRS,3 WALKING_DOWNSTAIRS etc.)
        dtFinal$activity <- dtActivityLabels[, 2][match(dtFinal$activity, dtActivityLabels[, 1])]
        
        #we will use dplyr to group and summarise the data to get 
        #the average for each feature by subject and activity
        dtFinalGrp <-dtFinal %>% group_by(subject, activity) %>% summarise_each(funs(mean))
        
        #finally tidy the data by removingt numbers and special chars
        names(dtFinalGrp) <-gsub("[^[:alpha:]///' ]", "", names(dtFinalGrp))
        
        #write the file to disk as a tab delimited file.
        write.table(dtFinalGrp,"tidy_data.txt",sep = "\t" ,row.names = FALSE)
}
