---
title: "readme"
author: "Ethan Zhang"
date: "2018Äê6ÔÂ4ÈÕ"
output: pdf_document
---
## This file describes the connection between the files and R script
In the R script, I use the function "read.table" to read the documents. After having a data set with correct names, I merge the data sets with the function "cbind". Then, I sift through the data set with "grepl" function to extract the measurements on the mean and standard deviation. Next, "merge" function is used to describe the data with activity names. Lastly, the average of each variable for each activity and each subject is calculated by "aggregate" function and the independent data set is created by "write.table" function.
