library(rio)

s3_subset <- import("C:\\Users\\amand\\Downloads\\s3-subset.Rdata")
data_simpsons <- import("C:\\Users\\amand\\Downloads\\s3-simpsons.Rdata")

s3_subset$deep_list[[4]][[1]]
View(s3_subset)
str(s3_subset)

s3_subset$deep_list[[4]][[1]] <- "I did it"