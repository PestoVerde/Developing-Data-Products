data <- read.table("data.csv")
data <- data[,-c(1,4)]
names(data) <- c("gender", "stature", "foot_length")
data$gender[data$gender==1] <- "Male"
data$gender[data$gender==2] <- "Female"
data$gender <- as.factor(data$gender)