## Codebook for Getting and Cleaning data course project

* run_analysis.R

This script takes raw data from a dataset describing human activity
collected by accelerometers from a Samsung Galaxy S smartphone.

# Transformation
# The key steps taken to transform the raw data:

* Load the plyr and reshape2 package
* combine test and train data for X,Y and subject tables
* Based on activity values, join on the descriptions (eg walking)
* Clean column names by removing brackets, hyphens, commas and changing to lower case
* Selecting column names containing mean or std using grep
* Combine the subject, activity and measured values into one table
* melt and cast to produce a variable means table by activity and person.

# Variable names in dataset.txt

Subject .Indentifier for the individual person measured
Activity .Type of activity measured
tbodyaccmeanx .time body acceleration mean x direction
tbodyaccmeany .time body acceleration mean y direction
tbodyaccmeanz .time body acceleration mean z direction
tbodyaccstdx .time body acceleration standard deviation x direction
tbodyaccstdy .time body acceleration standard deviation y direction
tbodyaccstdz .time body acceleration standard deviation z direction
tgravityaccmeanx .time gravity acceleration mean x direction
tgravityaccmeany .time gravity acceleration mean y direction
tgravityaccmeanz .time gravity acceleration mean z direction
tgravityaccstdx .time gravity acceleration standard deviation x direction
tgravityaccstdy .time gravity acceleration standard deviation y direction
tgravityaccstdz .time gravity acceleration standard deviation z direction
tbodyaccjerkmeanx .time body acceleration jerk mean x direction
tbodyaccjerkmeany .time body acceleration jerk mean y direction
tbodyaccjerkmeanz .time body acceleration jerk mean z direction
tbodyaccjerkstdx .time body acceleration jerk standard deviation x direction
tbodyaccjerkstdy .time body acceleration jerk standard deviation y direction
tbodyaccjerkstdz .time body acceleration jerk standard deviation z direction
tbodygyromeanx .time body gyroscope mean x direction
tbodygyromeany .time body gyroscope mean y direction
tbodygyromeanz .time body gyroscope mean z direction
tbodygyrostdx .time body gyroscope standard deviation z direction
tbodygyrostdy .time body gyroscope standard deviation z direction
tbodygyrostdz .time body gyroscope standard deviation z direction
tbodygyrojerkmeanx .time body gyroscope jerk mean x direction
tbodygyrojerkmeany .time body gyroscope jerk mean y direction
tbodygyrojerkmeanz .time body gyroscope jerk mean z direction
tbodygyrojerkstdx .time body gyroscope jerk standard deviation x direction
tbodygyrojerkstdy .time body gyroscope jerk standard deviation y direction
tbodygyrojerkstdz .time body gyroscope jerk standard deviation z direction
tbodyaccmagmean .time body acceleration magnitude mean
tbodyaccmagstd .time body acceleration magnitude standard deviation
tgravityaccmagmean .time gravity acceleration magnitude mean
tgravityaccmagstd .time gravity accleration magnitude standard deviation
tbodyaccjerkmagmean .time body acceleration jerk magnitude mean
tbodyaccjerkmagstd .time body acceleration jerk magnitude standard deviation
tbodygyromagmean .time body gyroscope magnitude mean
tbodygyromagstd .time body gyroscope magnitude standard deviation
tbodygyrojerkmagmean .time body gyroscope jerk magnitude mean
tbodygyrojerkmagstd .time body gyroscope jerk magnitude standard deviation
fbodyaccmeanx .frequency body acceleration mean x direction
fbodyaccmeany .frequency body acceleration mean y direction
fbodyaccmeanz .frequency body acceleration mean z direction
fbodyaccstdx .frequency body acceleration standard deviation x direction
fbodyaccstdy .frequency body acceleration standard deviation y direction
fbodyaccstdz .frequency body acceleration standard deviation z direction
fbodyaccmeanfreqx .frequency body acceleration mean frequency x direction
fbodyaccmeanfreqy .frequency body acceleration mean frequency y direction
fbodyaccmeanfreqz .frequency body acceleration mean frequency z direction
fbodyaccjerkmeanx .frequency body accleration jerk mean x direction
fbodyaccjerkmeany .frequency body accleration jerk mean y direction
fbodyaccjerkmeanz .frequency body accleration jerk mean z direction
fbodyaccjerkstdx .frequency body acceleration jerk standard deviation x direction
fbodyaccjerkstdy .frequency body acceleration jerk standard deviation y direction
fbodyaccjerkstdz .frequency body acceleration jerk standard deviation z direction
fbodyaccjerkmeanfreqx .frequency accleration jerk mean frequency x direction
fbodyaccjerkmeanfreqy .frequency accleration jerk mean frequency y direction
fbodyaccjerkmeanfreqz .frequency accleration jerk mean frequency z direction
fbodygyromeanx .frequency body gyroscope mean x direction
fbodygyromeany .frequency body gyroscope mean y direction
fbodygyromeanz .frequency body gyroscope mean z direction
fbodygyrostdx .frequency body gyroscope standard deviation x direction
fbodygyrostdy .frequency body gyroscope standard deviation y direction
fbodygyrostdz .frequency body gyroscope standard deviation z direction
fbodygyromeanfreqx .frequency gyroscope mean frequency x direction
fbodygyromeanfreqy .frequency gyroscope mean frequency y direction
fbodygyromeanfreqz .frequency gyroscope mean frequency z direction
fbodyaccmagmean .frequency body acceleration magnitude mean
fbodyaccmagstd .frequency body acceleration magnitude standard deviation
fbodyaccmagmeanfreq .frequency body acceleration magnitude mean frequency
fbodybodyaccjerkmagmean .frequency body body acceleration jerk magnitude mean
fbodybodyaccjerkmagstd .frequency body body acceleration jerk magnitude standard deviation
fbodybodyaccjerkmagmeanfreq .frequency body body acceleration jerk magnitude mean frequency
fbodybodygyromagmean .frequency body body gyroscope magnitude mean
fbodybodygyromagstd .frequency body body gyroscope magnitude standard deviation
fbodybodygyromagmeanfreq .frequency body body gyroscope magnitude mean frequency
fbodybodygyrojerkmagmean .frequency body body gyroscope jerk magnitude mean
fbodybodygyrojerkmagstd .frequency body body gyroscope jerk magnitude standard deviation
fbodybodygyrojerkmagmeanfreq .frequency body body gyroscope jerk magnitude mean frequency
angletbodyaccmeangravity .angle time body accleration mean gravity
angletbodyaccjerkmeangravitymean .angle time body acceleration jerk mean gravity mean
angletbodygyromeangravitymean .angle time body gyroscope mean gravity mean
angletbodygyrojerkmeangravitymean .angle time body gyroscope jerk mean gravity mean
anglexgravitymean .angle x direction gravity mean
angleygravitymean .angle y direction gravity mean
anglezgravitymean .angle z direction gravity mean

