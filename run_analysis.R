# Prerequisite packages ---------------------------------------------------

library(tidyverse)
library(reshape2)

# Load data files from the Web --------------------------------------------

raw_data_dir <- "./raw_data"
raw_data_url <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
raw_data_filename <- "raw_data.zip"
raw_data_destfn <- paste(raw_data_dir, "/", "raw_data.zip", sep = "")
data_dir <- "./data"

if (!file.exists(raw_data_dir)) {
  dir.create(raw_data_dir)
  download.file(url = raw_data_url, destfile = raw_data_destfn)
}

if (!file.exists(data_dir)) {
  dir.create(data_dir)
  unzip(zipfile = raw_data_destfn, exdir = data_dir)
}

# Merge training and testing sets ----------------------------------------------

## create variables for x, y, subject train and test sets

x_train <- read.table(paste(sep = "", data_dir, "/UCI HAR Dataset/train/X_train.txt"))
y_train <- read.table(paste(sep = "", data_dir, "/UCI HAR Dataset/train/Y_train.txt"))
sub_train <- read.table(paste(sep = "", data_dir, "/UCI HAR Dataset/train/subject_train.txt"))

x_test <- read.table(paste(sep = "", data_dir, "/UCI HAR Dataset/test/X_test.txt"))
y_test <- read.table(paste(sep = "", data_dir, "/UCI HAR Dataset/test/Y_test.txt"))
sub_test <- read.table(paste(sep = "", data_dir, "/UCI HAR Dataset/test/subject_test.txt"))

## create features and activities

feature <- read.table(paste(sep = "", data_dir, "/UCI HAR Dataset/features.txt"))
act_label <- read.table(paste(sep = "", data_dir, "/UCI HAR Dataset/activity_labels.txt"))
act_label[,2] <- as.character(act_label[,2])

## bind train and test datasets

x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
sub_data <- rbind(sub_train, sub_test)

# Extract mean and std measurements -----------------------------------------------------------------

## select columns which contain both mean and std in their names

slctd_cols <- grep("-(mean|std).*", as.character(feature[,2]))

## create column names for selected columns

slctd_col_names <- feature[slctd_cols, 2]
slctd_col_names <- gsub("-mean", "Mean", slctd_col_names)
slctd_col_names <- gsub("-std", "Std", slctd_col_names)
slctd_col_names <- gsub("[-()]", "", slctd_col_names)

## merge all data by variables in 1 dataset

x_data <- x_data[slctd_cols]
all_data <- cbind(sub_data, y_data, x_data)
colnames(all_data) <- c("Subject", "Activity", slctd_col_names)

# Name activities in the dataset ------------------------------------------

all_data$Activity <- factor(all_data$Activity, levels = act_label[,1], labels = act_label[,2])
all_data$Subject <- as.factor(all_data$Subject)

# Generate tidy dataset ---------------------------------------------------

## generate tidy dataset

melted_data <- melt(all_data, id = c("Subject", "Activity"))
tidy_data <- dcast(melted_data, Subject + Activity ~ variable, mean)

## write txt file for tidy dataset

write.table(tidy_data, "./tidy_dataset.txt", row.names = FALSE, quote = FALSE)




