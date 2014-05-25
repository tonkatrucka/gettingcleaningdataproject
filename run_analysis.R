## Getting and cleaning data course project
## run_analysis.R

## This script takes the individual raw measurement files
## and turns it into a cleaned set with means by subject and activity

##This script is assuming the relevant raw files have been loaded into R into your working directory

##If you need to load them, put files in working directory and run below:

# X.test <- read.table("X_test.txt", header = FALSE)
# X.train <- read.table("X_train.txt", header = FALSE)
# activity.labels <- read.table("activity_labels.txt", header = FALSE)
# features <- read.table("features.txt", header = FALSE)
# subject.test <- read.table("subject_test.txt", header = FALSE)
# subject.train <- read.table("subject.train.txt", header = FALSE)
# y.test <- read.table("y_test.txt", header = FALSE)
# y.train <- read.table("y_train.txt", header = FALSE)

# Files used in this analysis are:
# X_test, X_train, activity_labels, features, subject_test, subject_train, y_test and t_train

# Load the required packages to run this cleaning script

library(plyr)
library(reshape2)

# Combine the test and train data for X,Y and subjects

X.full.raw <- rbind(X.test,X.train)
y.full.raw <- rbind(y.test,y.train)
subject.full.raw <- rbind(subject.test,subject.train)

# Based on the activity value, join on the relevant decscriptions

y.full.desc <- join(y.full.raw,activity.labels,type = "left")

# Clean column names by removing specific characters

  # Brackets
features.clean1 <- gsub(pattern="\\(|\\)", x=features[,2], replacement="")
  # Hyphen
features.clean2 <- gsub(pattern="-", x=features.clean1, replacement="")
  # Comma
features.clean3 <- gsub(pattern=",", x=features.clean2, replacement="")
  # Lower case
features.clean4 <- tolower(features.clean3)


# Rename all columns with their cleaned versions
colnames(X.full.raw)<-features.clean4

# Subset the data to select only columns containing the keywords mean or std
x.full.label <- subset(X.full.raw,select = grepl("mean|std",colnames(X.full.raw),ignore.case = FALSE))

# cbind onto the data with activity and subject columns
xy.full <-  cbind(subject.full.raw,x.full.label)
xysub.full <-cbind(y.full.desc[,2],xy.full)

# Appropriately rename first and second column to Activity and Subject
names(xysub.full)[1] <- "Activity"
names(xysub.full)[2]  <- "Subject"

# Melt and dcast the data set to create means of subsetted columns by subject and activity.
xymelt <- melt(xysub.full, id = c("Subject","Activity"))
dataset <- dcast(xymelt,Subject + Activity ~ variable,fun.aggregate=mean)

# Export the final cleaned data set into a tab-delimited file.
# write.table(dataset, file = "dataset", sep="\t",col.names = TRUE, row.names = FALSE)

# Final product has been pushed into the Github repo