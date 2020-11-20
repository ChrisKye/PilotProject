library(R.matlab)
library(eegkit)

fileList <- list.files(path="/Users/chriskye 1/Desktop/DEAP/data_preprocessed_matlab", 
            pattern = "*.mat", full.names=TRUE)

lapply(fileList, function(x) {
    numFile <- readMat(x)
    numFile <- numFile[2] ##40 x 40 x 8064 (video x channel x data)
    for (i in c(1:40))
        trial <- numFile[i,1:32, ]
        eegfft(trial, 128, 4.0, 45.0)
    
})

