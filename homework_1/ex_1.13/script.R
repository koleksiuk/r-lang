people <- read.csv("/Users/koleksiuk/dev/r-lang/homework_1/ex_1.13/patients.csv",
   comment.char="#",
   sep=",",
   dec=".",
   header=T
);

# Remove rows with empty things
people <-na.omit(people)

# Format Birthday
people$Birthdate <- strptime(people$Birthdate, "%d/%m/%Y")

# Convert from F to C degrees
people$Temperature <- (people$Temperature - 32) / 1.8

# Add BMI
bmi <- (people$Weight)/(people$Height/100)^2
people <- cbind(people, BMI = bmi)

bmi_class <- c("Underweight", "Normal", "Overweight", "Obese")

people$BMIClass[people$BMI > 30] <- bmi_class[4]
people$BMIClass[people$BMI > 25] <- bmi_class[3]
people$BMIClass[people$BMI > 18.5] <- bmi_class[2]
people$BMIClass[people$BMI <= 18.5] <- bmi_class[1]

print("BMI Underweight")
print(subset(people, BMI <= 18.5))

# Age
age <- floor(as.numeric(difftime(Sys.time(), bdates, units = "weeks")/52))
(people <- cbind(people, Age = age))

# Sorting
people <-people[order(people$Age)]
print(people)

write.csv2(people, file="ex_1.13/test.csv")
