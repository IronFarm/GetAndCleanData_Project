features <- read.table("UCI HAR Dataset/features.txt",
                       stringsAsFactors = FALSE)
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")

trainData <- read.table("UCI HAR Dataset/train/X_train.txt")
colnames(trainData) <- features[, 2]
trainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt",
                           col.names = "subject")
trainLabels <- read.table("UCI HAR Dataset/train/y_train.txt",
                          colClasses = "factor",
                          col.names = "label")
trainData <- cbind(trainData, trainSubject, trainLabels)

testData <- read.table("UCI HAR Dataset/test/X_test.txt")
colnames(testData) <- features[, 2]
testSubject <- read.table("UCI HAR Dataset/test/subject_test.txt",
                           col.names = "subject")
testLabels <- read.table("UCI HAR Dataset/test/y_test.txt",
                         colClasses = "factor",
                         col.names = "label")
testData <- cbind(testData, testSubject, testLabels)

fullData <- rbind(trainData, testData)


colIndices <- sort(c(grep("mean\\(", colnames(fullData)),
                     grep("std\\(", colnames(fullData)),
                     grep("subject", colnames(fullData)),
                     grep("label", colnames(fullData))))
fullData <- fullData[, colIndices]


levels(fullData$label) <- activityLabels[, 2]


meanData <- aggregate(fullData[1:66],
                      list(Subject = fullData$subject,
                           Activity = fullData$label),
                      mean)
meanData <- meanData[order(meanData$Subject, meanData$Activity), ]
write.table(meanData, "tidy_data.txt", row.names = FALSE)
