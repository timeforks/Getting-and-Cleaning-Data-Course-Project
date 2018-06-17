---
title: "CodeBook"
author: "Ethan Zhang"
date: "2018Äê6ÔÂ4ÈÕ"
output: pdf_document
---
## This file is a description of my work
First od all, we need to read the documents. Since the assignment description only requires us to merge the test and train sets into one data set, we only need to read the following files: "subject_test.txt", "X_test.txt", "y_test.txt", "subject_train.txt", "X_train.txt", "y_train.txt", "activity_labels.txt" and "features.txt". Then read all the files above and name them after their own file names. After reading documents, we need to change the names by descriptive names. Then, I merge the data into one data set which is assigned to a variable called alldata. Next, I extract the required data and merge the data and the data of ID's of activities and subjects into one data set so the data set can be labelled with descriptive names. At last, I calculate the mean of data for different activities and subjects and write the data called "finaldata" into a file called "finaldata.txt".

