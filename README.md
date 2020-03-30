# GettingAndCleaningData
Final project for Coursera "Getting and cleaning Data" in R


## Initial Data

1. 'features.txt': List of all features.

2. 'activity_labels.txt': Links the class labels with their activity name.

3. 'train/X_train.txt': Training set.

4. 'train/y_train.txt': Training labels.

5. 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

6. 'test/y_test.txt': Test labels.

7. 'test/X_test.txt': Test set.

8. 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 


## Work

1. Downloading data from files described in Initial Data section.

2. Merging features, activity labels, train and test in a single dataframe

3. Replacing class labels with descriptive activity names

4. Creating a tidy_data deataframe with mean values of each variable for grouped Subject and Activity.

5. Writing tidyData.txt file with clear data


The scrypt uses the data from [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The repository contains 4 files:
* [run_analysis.R]() - R file with main scrypt, run with downloaded and unpacked data in the same directory.
* [CodeBook.md]() - modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
* [tidyData.txt]() - a clear final dataframe 
* current README.md
