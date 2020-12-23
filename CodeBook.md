{\rtf1\ansi\ansicpg1252\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;\f1\fswiss\fcharset0 ArialMT;\f2\fnil\fcharset0 HelveticaNeue;
\f3\fnil\fcharset129 AppleSDGothicNeo-Regular;}
{\colortbl;\red255\green255\blue255;\red42\green44\blue46;\red255\green255\blue255;}
{\*\expandedcolortbl;;\cssrgb\c21569\c22745\c23529;\cssrgb\c100000\c100000\c100000;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11100\viewh20180\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 A codebook for Week 4 
\f1 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Getting and Cleaning Data Course Project peer-graded assignment.
\f0 \cf0 \cb1 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 \
=================\
\
The 66 features selected for this database come from the accelerometer and gyroscope 3-axial raw signals time_ accelerometer and time_gyroscope for each from X,Y, and Z axis. These features are shown in columns of 1st to 66th of the data frame. Two other features are \'93subject_id\'94 and \'93activity_name\'94 as 67th and 68th columns, respectively. \'93Subject_id\'94 ranges between 1 and 30, as there were 30 volunteers for these experiments. \'93activity_name\'94 indicates what activity the volunteer was doing at the time of data capture. Volunteers performed 6 different activities (walking, walking_upstairs, walking_downstairs, sitting, standing, & laying) while wearing a smartphone (Samsung Galaxy S II) on their waist. Using the accelerometer and gyroscope built in the smartphones, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.\
\
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.\
\
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (time_body_accelerometer_X/Y/Z_axis and time_gravity_accelerometer_X/Y/Z_axis) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. Note that '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.\
\
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (time_body_accelerometer_jerk_X/Y/Z_axis and time_body_gyroscope_jerk_X/Y/Z_axis). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (time_body_accelerometer_magnitude, time_gravity_
\f2 accelerometer_ magnitude
\f0 , time_body_
\f2 accelerometer
\f0 _jerk_
\f2 magnitude
\f0 , time_body_ 
\f2 gyroscope_
\f0 mag, time_body_
\f2 gyroscope_
\f0 jerk_magnitude).\
\
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequency_body_
\f2 accelerometer
\f0 _X/Y/Z_axis, 
\f2 frequency_
\f0 body_
\f2 accelerometer_
\f0 jerk_X/Y/Z_axis, 
\f2 frequency_
\f0 body_
\f2 gyroscope_
\f0 X/Y/Z_axis, 
\f2 frequency_
\f0 body_
\f2 accelerometer_
\f0 jerk_magnitude, 
\f2 frequency_
\f0 body_
\f2 gyroscope_
\f0 magnitude, 
\f2 frequency_
\f0 body_
\f2 gyroscope_
\f0 jerk_magnitude. \
\
These signals were used to estimate variables of the feature vector for each pattern:  \
\
time_body_
\f2 accelerometer_
\f0 X/Y/Z_axis\
time_gravity_
\f2 accelerometer
\f0 _X/Y/Z_axis\
time_body_
\f2 accelerometer_
\f0 jerk_X/Y/Z_axis\
time_body_
\f2 gyroscope_
\f0 X/Y/Z_axis\
time_body_
\f2 gyroscope_
\f0 jerk_X/Y/Z_axis\
time_body_
\f2 accelerometer_
\f0 magnitude\
time_gravity_
\f2 accelerometer_
\f0 magnitude\
time_body_
\f2 accelerometer_
\f0 jerk_magnitude\
time_body_
\f2 gyroscope_
\f0 magnitude\
time_body_
\f2 gyroscope_
\f0 jerk_magnitude\
\pard\pardeftab560\slleading20\partightenfactor0

\f2 \cf0 frequency_
\f0 body_
\f2 accelerometer_
\f0 X/Y/Z_axis\

\f2 frequency_
\f0 body_
\f2 accelerometer_
\f0 jerk_X/Y/Z_axis\

\f2 frequency_
\f0 body_
\f2 gyroscope_
\f0 X/Y/Z_axis\

\f2 frequency_
\f0 body_
\f2 accelerometer
\f0 _magnitude\

\f2 frequency_
\f0 body_
\f2 accelerometer_
\f0 jerk_magnitude\

\f2 frequency_
\f0 body_
\f2 gyroscope_
\f0 magnitude\

\f2 frequency_
\f0 body_
\f2 gyroscope_
\f0 jerk_magnitude\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 \
Features are normalized and bounded within [-1,1]. Accelerometer-variant variables are in unit of \'93g\'94, and gyroscope-variant variables are in unit of radians/second. Using this set of variables, the mean and standard deviation of each variable were calculated 
\f3 for 
\f0 this data set. The resulting features in the data are below:\
\
\pard\pardeftab560\slleading20\pardirnatural\partightenfactor0

\f2 \cf0 \
\pard\pardeftab560\slleading20\partightenfactor0
\cf0  [1] "time_body_accelerometer_mean_X_axis"                                \
 [2] "time_body_accelerometer_mean_Y_axis"                                \
 [3] "time_body_accelerometer_mean_Z_axis"                                \
 [4] "time_body_accelerometer_standard_deviation_X_axis"                  \
 [5] "time_body_accelerometer_standard_deviation_Y_axis"                  \
 [6] "time_body_accelerometer_standard_deviation_Z_axis"                  \
 [7] "time_gravity_accelerometer_mean_X_axis"                             \
 [8] "time_gravity_accelerometer_mean_Y_axis"                             \
 [9] "time_gravity_accelerometer_mean_Z_axis"                             \
[10] "time_gravity_accelerometer_standard_deviation_X_axis"               \
[11] "time_gravity_accelerometer_standard_deviation_Y_axis"               \
[12] "time_gravity_accelerometer_standard_deviation_Z_axis"               \
[13] "time_body_accelerometer_jerk_mean_X_axis"                           \
[14] "time_body_accelerometer_jerk_mean_Y_axis"                           \
[15] "time_body_accelerometer_jerk_mean_Z_axis"                           \
[16] "time_body_accelerometer_jerk_standard_deviation_X_axis"             \
[17] "time_body_accelerometer_jerk_standard_deviation_Y_axis"             \
[18] "time_body_accelerometer_jerk_standard_deviation_Z_axis"             \
[19] "time_body_gyroscope_mean_X_axis"                                    \
[20] "time_body_gyroscope_mean_Y_axis"                                    \
[21] "time_body_gyroscope_mean_Z_axis"                                    \
[22] "time_body_gyroscope_standard_deviation_X_axis"                      \
[23] "time_body_gyroscope_standard_deviation_Y_axis"                      \
[24] "time_body_gyroscope_standard_deviation_Z_axis"                      \
[25] "time_body_gyroscope_jerk_mean_X_axis"                               \
[26] "time_body_gyroscope_jerk_mean_Y_axis"                               \
[27] "time_body_gyroscope_jerk_mean_Z_axis"                               \
[28] "time_body_gyroscope_jerk_standard_deviation_X_axis"                 \
[29] "time_body_gyroscope_jerk_standard_deviation_Y_axis"                 \
[30] "time_body_gyroscope_jerk_standard_deviation_Z_axis"                 \
[31] "time_body_accelerometer_magnitude_mean"                             \
[32] "time_body_accelerometer_magnitude_standard_deviation"               \
[33] "time_gravity_accelerometer_magnitude_mean"                          \
[34] "time_gravity_accelerometer_magnitude_standard_deviation"            \
[35] "time_body_accelerometer_jerk_magnitude_mean"                        \
[36] "time_body_accelerometer_jerk_magnitude_standard_deviation"          \
[37] "time_body_gyroscope_magnitude_mean"                                 \
[38] "time_body_gyroscope_magnitude_standard_deviation"                   \
[39] "time_body_gyroscope_jerk_magnitude_mean"                            \
[40] "time_body_gyroscope_jerk_magnitude_standard_deviation"              \
[41] "frequency_body_accelerometer_mean_X_axis"                           \
[42] "frequency_body_accelerometer_mean_Y_axis"                           \
[43] "frequency_body_accelerometer_mean_Z_axis"                           \
[44] "frequency_body_accelerometer_standard_deviation_X_axis"             \
[45] "frequency_body_accelerometer_standard_deviation_Y_axis"             \
[46] "frequency_body_accelerometer_standard_deviation_Z_axis"             \
[47] "frequency_body_accelerometer_jerk_mean_X_axis"                      \
[48] "frequency_body_accelerometer_jerk_mean_Y_axis"                      \
[49] "frequency_body_accelerometer_jerk_mean_Z_axis"                      \
[50] "frequency_body_accelerometer_jerk_standard_deviation_X_axis"        \
[51] "frequency_body_accelerometer_jerk_standard_deviation_Y_axis"        \
[52] "frequency_body_accelerometer_jerk_standard_deviation_Z_axis"        \
[53] "frequency_body_gyroscope_mean_X_axis"                               \
[54] "frequency_body_gyroscope_mean_Y_axis"                               \
[55] "frequency_body_gyroscope_mean_Z_axis"                               \
[56] "frequency_body_gyroscope_standard_deviation_X_axis"                 \
[57] "frequency_body_gyroscope_standard_deviation_Y_axis"                 \
[58] "frequency_body_gyroscope_standard_deviation_Z_axis"                 \
[59] "frequency_body_accelerometer_magnitude_mean"                        \
[60] "frequency_body_accelerometer_magnitude_standard_deviation"          \
[61] "frequency_body_body_accelerometer_jerk_magnitude_mean"              \
[62] "frequency_body_body_accelerometer_jerk_magnitude_standard_deviation"\
[63] "frequency_body_body_gyroscope_magnitude_mean"                       \
[64] "frequency_body_body_gyroscope_magnitude_standard_deviation"         \
[65] "frequency_body_body_gyroscope_jerk_magnitude_mean"                  \
[66] "frequency_body_body_gyroscope_jerk_magnitude_standard_deviation"    \
[67] "subject_id"                                                         \
[68] "activity_name"         
\f0 \
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 \
}