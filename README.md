# GetAndCleanData_Project

## Introduction

The script run_analysis.R loads the Samsung Human Activity Recognition dataset (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) before tidying, merging and analysing the data.

First, the training and testing data are merged. Then, the analysis selects the columns relating to the mean and standard deviation of each variable. The mean of each of these variables is then calculated for each combination of subject and activity. This is then output to the file tidy_data.txt.

The entire analysis is included in run_analysis.R. Bar the data, it depends on no external files.

For information about the dataset, how the data was cleaned and transformed and the meaning of each variable, consult CodeBook.md.

## Running

To run the script, please download the Samsung HAR dataset to the same directory as the script. Then, unzip the dataset. The script can then be loaded into R and ran.

