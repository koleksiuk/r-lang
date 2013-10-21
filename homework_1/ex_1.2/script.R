people <- read.table("example.csv",
   comment.char="#",
   sep=";",
   dec=",",
   header=T
);

people2 <- people
people2$Height <- people2$Height/30.48

