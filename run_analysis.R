x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
features <- read.table('./UCI HAR Dataset/features.txt')
activity_labels <- read.table('./UCI HAR Dataset/activity_labels.txt')

names(x_train) <- features[,2] 
names(y_train) <-"activityID"
names(subject_train) <- "subjectID"
names(x_test) <- features[,2] 
names(y_test) <- "activityID"
names(subject_test) <- "subjectID"
names(activity_labels) <- c('activityID','activity')

train <- cbind(x_train, y_train, subject_train)
test <- cbind(x_test, y_test, subject_test)
alldata <- rbind(train, test)

extracted <- alldata[,grepl("mean..",names(alldata))|grepl("std..",names(alldata))] 
extracted_data <- cbind(alldata[,"subjectID"], alldata[,"activityID"], extracted)
names(extracted_data)[1:2] <- c("subjectID", "activityID")

activitynamedata <- merge(extracted_data, activity_labels,by='activityID',all.x = T)
tempdata <- aggregate(. ~subjectID + activityID, activitynamedata, mean)
finaldata <- tempdata[order(tempdata$subjectID, tempdata$activityID),]

write.table(finaldata, "finaldata.txt", row.name = FALSE)




