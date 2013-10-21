people <- read.table("ex_1.1/example.csv",
   comment.char="#",
   sep=";",
   dec=",",
   header=T
);

bdates <- strptime(people$BirthDate, "%Y-%m-%d");  # parse strings to date
age <- floor(as.numeric(difftime(Sys.time(), bdates, units = "weeks")/52))
(people <- cbind(people, Age = age))

print(people)
