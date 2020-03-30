# imports
library(dplyr)
library(reshape2)

# Reading all data

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("class", "activity"))
features <- read.table("UCI HAR Dataset/features.txt", col.names = c("id", "feature"))
good_feat <- grep("(mean|std)\\(\\)", features[, "feature"])
features_new <- features[good_feat, "feature"]
features_new <- gsub('[()]', '', features_new)

# TRAIN
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = c("Subject"))
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = c("Activity"))
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")[, good_feat]
train_all <- cbind(subject_train, y_train, X_train)

# TEST

subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = c("Subject"))
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = c("Activity"))
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")[, good_feat]
test_all <- cbind(subject_test, y_test, X_test)

# MERGE
total <- rbind(train_all, test_all)


total[["Activity"]] <- factor(total[, "Activity"], 
                              levels = activity_labels[["class"]], 
                              labels = activity_labels[["activity"]])

tidy_data <- melt(data = total, id = c("Subject", "Activity"))
tidy_data <- dcast(data = tidy_data, Subject + Activity ~ variable, fun.aggregate = mean)
write.table(x = tidy_data, file = "tidyData.txt")