## unzip files
unzip("getdata-projectfiles-UCI HAR Dataset.zip") 

subjectt <- read.table("./UCI HAR Dataset/train/subject_train.txt", sep = ",", header = FALSE, col.names = "Subject")
##import train data
subjectt <- read.table("./UCI HAR Dataset/train/subject_train.txt", sep = ",", header = FALSE, col.names = "Subject")
activityt <- read.table("./UCI HAR Dataset/train/y_train.txt", sep = ",", header = FALSE, col.names = "Activity Number")
datat <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)

#import test data
subjects <- read.table("./UCI HAR Dataset/test/subject_test.txt", sep = ",", header = FALSE, col.names = "Subject")
activitys <- read.table("./UCI HAR Dataset/test/y_test.txt", sep = ",", header = FALSE, col.names = "Activity Number")
datas <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)

activities <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE, col.names = c("Number", "Activity.Name"))
features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)
featurest <- t(features) ## transpose for column names

##merging sets
subject <- rbind(subjectt, subjects)
activity <- rbind(activityt, activitys)
data <- rbind(datat, datas)

## setting up column names
colnames(data) <- featurest[2,]

##bind it all together
bigdata <- cbind(subject,activity,data)

#pull out mean and std
gooddata <- c(bigdata[,1:2],bigdata[,grep("mean|std",names(bigdata))])

##naming activities
nameddata <- merge(gooddata,activities, by.x="Activity.Number", by.y="Number")

#naming variables

names(nameddata) <- sub("Freq", " Frequency",names(nameddata),)
names(nameddata) <- sub("tBodyAcc", "Time Body Acceleration Signal",names(nameddata),)
names(nameddata) <- sub("tGravityAcc", "Time Gravity Acceleration Signal",names(nameddata),)
names(nameddata) <- sub(".mean", " Mean",names(nameddata),)
names(nameddata) <- sub(".std", " Standard Deviation",names(nameddata),)
names(nameddata) <- sub("tBodyGyro", "Time Body Gyro Signal",names(nameddata),)
names(nameddata) <- sub("Mag", " Magnitude",names(nameddata),)
names(nameddata) <- sub("Jerk", " Jerk",names(nameddata),)
names(nameddata) <- sub("BodyBody", "Body",names(nameddata),)
names(nameddata) <- sub("fBodyAcc", "Frequency Body Acceleration Signal",names(nameddata),)
names(nameddata) <- sub("fBodyGyro", "Frequency Body Gyro Signal",names(nameddata),)
names(nameddata) <- gsub("\\.", "", names(nameddata))
names(nameddata) <- sub("X", " X",names(nameddata),)
names(nameddata) <- sub("Y", " Y",names(nameddata),)
names(nameddata) <- sub("Z", " Z",names(nameddata),)
names(nameddata) <- sub("Activity", "Activity",names(nameddata),)

library(plyr)

finaldata <- ddply(nameddata, .(Subject, ActivityName), numcolwise(mean))
finaldata$ActivityNumber <- NULL

write.table(finaldata, "./UCI HAR Dataset/finaldata.txt", row.names = FALSE)

