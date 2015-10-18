---
title: "Getting and Cleaning Data: Course Project"
output: html_document
---

## Introduction

This repository contains code for performing an analysis of the "Human Activity Recognition Using Smartphones Dataset" along with a tidy data set text file and a Code Book defining the data set variables.

The dataset contains data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The data set is located at

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Analysis Script

This repository contains an R script file, run_analysis.R, that accomplishes the following steps:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Analysis Instructions

To replicate the analysis, source and run the script contained in the run_analysis.R file. The script requires that the ‘plyr’ package, version 1.8.3, is installed.

### Analysis Details

The script downloads the data set zip file to the working directory and extracts the content files to the working directory. It reads in the training and test data sets, 'X_train.txt' and 'X_test.txt', respectively, and merges them. Similarly, 'subject_train.txt' and 'subject_test.txt' are loaded and merged, as are 'Y_train.txt' and 'Y_test.txt'.

The merged 'X' data frame is culled to drop all variable columns that do not contain "mean()" or "std()". Variable names are read from 'features.txt' and applied as names to the merged 'X' data frame.

Descriptive activity labels are read from 'activity_labels.txt' and a vector of activity labels is created based on the activity number in the merged 'Y' data set.

The data is tidied by modifying the merged 'X' data frame variable names to be more readable. Specifically, the following changes were made:

* replace "mean()" with "Mean", "std()" with "StdDev"
* replace "t" with "Time" and "f" with "Frequency"
* remove "-" and repeated "BodyBody".

An internal tidy set is created by binding the Activity, Subject ('Y'), and Feature ('X') data.

Using the ddply function of the plyr package, the mean is calculated for every Feature variable in the tidy data set, grouped by Activity and Subject.

After prepending "Mean" to all variable names (except Subject and Activity), the tidy data set is written to a text file, 'tidy-means.txt' and also echoed by the script.

## Tidy Data Set

This repository contains a text file, tidy-means.txt, with the independent tidy data set with the average of each variable for each activity and each subject.

## Code Book

This repository contains a markdown file, CodeBook.md, that describes the contents of the tidy data set.