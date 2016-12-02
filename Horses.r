
Big_Data_File <- read.csv("~/School/2016 Fall/CS 3250/CS3250/Big_Data_File.csv",stringsAsFactors=FALSE)

Big_Data_File$Date <- Big_Data_File$EVENT_DT
Big_Data_File$Date <- strptime(Big_Data_File$Date, format = "%d-%m-%Y %H:%M")
Big_Data_File$Year <- Big_Data_File$Date$year
Big_Data_File$Month <- Big_Data_File$Date$mon
Big_Data_File$Year <- Big_Data_File$Year + 1900
Big_Data_File$Month <- Big_Data_File$Month + 1

By_Year_2016 <- Big_Data_File[which(Big_Data_File$Year=="2016"),]
By_Year_2015 <- Big_Data_File[which(Big_Data_File$Year=="2015"),]
By_Year_2014 <- Big_Data_File[which(Big_Data_File$Year=="2014"),]
By_Year_2013 <- Big_Data_File[which(Big_Data_File$Year=="2013"),]
By_Year_2012 <- Big_Data_File[which(Big_Data_File$Year=="2012"),]
By_Year_2011 <- Big_Data_File[which(Big_Data_File$Year=="2011"),]
By_Year_2010 <- Big_Data_File[which(Big_Data_File$Year=="2010"),]
By_Year_2009 <- Big_Data_File[which(Big_Data_File$Year=="2009"),]
By_Year_2008 <- Big_Data_File[which(Big_Data_File$Year=="2008"),]
By_Year_2007 <- Big_Data_File[which(Big_Data_File$Year=="2007"),]
By_Year_2006 <- Big_Data_File[which(Big_Data_File$Year=="2006"),]
By_Year_2005 <- Big_Data_File[which(Big_Data_File$Year=="2005"),]

By_Year_2007_1 <- By_Year_2007[which(By_Year_2007$Month < 4),]
By_Year_2007_2 <- By_Year_2007[which((By_Year_2007$Month > 3) & (By_Year_2007$Month < 7)),]
By_Year_2007_3 <- By_Year_2007[which((By_Year_2007$Month > 6) & (By_Year_2007$Month < 10)),]
By_Year_2007_4 <- By_Year_2007[which(By_Year_2007$Month > 9),]

By_Year_2008_1 <- By_Year_2008[which(By_Year_2008$Month < 4),]
By_Year_2008_2 <- By_Year_2008[which((By_Year_2008$Month > 3) & (By_Year_2008$Month < 7)),]
By_Year_2008_3 <- By_Year_2008[which((By_Year_2008$Month > 6) & (By_Year_2008$Month < 10)),]
By_Year_2008_4 <- By_Year_2008[which(By_Year_2008$Month > 9),]

By_Year_2009_1 <- By_Year_2009[which(By_Year_2009$Month < 4),]
By_Year_2009_2 <- By_Year_2009[which((By_Year_2009$Month > 3) & (By_Year_2009$Month < 7)),]
By_Year_2009_3 <- By_Year_2009[which((By_Year_2009$Month > 6) & (By_Year_2009$Month < 10)),]
By_Year_2009_4 <- By_Year_2009[which(By_Year_2009$Month > 9),]

By_Year_2010_1 <- By_Year_2010[which(By_Year_2010$Month < 4),]
By_Year_2010_2 <- By_Year_2010[which((By_Year_2010$Month > 3) & (By_Year_2010$Month < 7)),]
By_Year_2010_3 <- By_Year_2010[which((By_Year_2010$Month > 6) & (By_Year_2010$Month < 10)),]
By_Year_2010_4 <- By_Year_2010[which(By_Year_2010$Month > 9),]

By_Year_2011_1 <- By_Year_2011[which(By_Year_2011$Month < 4),]
By_Year_2011_2 <- By_Year_2011[which((By_Year_2011$Month > 3) & (By_Year_2011$Month < 7)),]
By_Year_2011_3 <- By_Year_2011[which((By_Year_2011$Month > 6) & (By_Year_2011$Month < 10)),]
By_Year_2011_4 <- By_Year_2011[which(By_Year_2011$Month > 9),]

By_Year_2012_1 <- By_Year_2012[which(By_Year_2012$Month < 4),]
By_Year_2012_2 <- By_Year_2012[which((By_Year_2012$Month > 3) & (By_Year_2012$Month < 7)),]
By_Year_2012_3 <- By_Year_2012[which((By_Year_2012$Month > 6) & (By_Year_2012$Month < 10)),]
By_Year_2012_4 <- By_Year_2012[which(By_Year_2012$Month > 9),]

By_Year_2013_1 <- By_Year_2013[which(By_Year_2013$Month < 4),]
By_Year_2013_2 <- By_Year_2013[which((By_Year_2013$Month > 3) & (By_Year_2013$Month < 7)),]
By_Year_2013_3 <- By_Year_2013[which((By_Year_2013$Month > 6) & (By_Year_2013$Month < 10)),]
By_Year_2013_4 <- By_Year_2013[which(By_Year_2013$Month > 9),]

By_Year_2014_1 <- By_Year_2014[which(By_Year_2014$Month < 4),]
By_Year_2014_2 <- By_Year_2014[which((By_Year_2014$Month > 3) & (By_Year_2014$Month < 7)),]
By_Year_2014_3 <- By_Year_2014[which((By_Year_2014$Month > 6) & (By_Year_2014$Month < 10)),]
By_Year_2014_4 <- By_Year_2014[which(By_Year_2014$Month > 9),]

By_Year_2015_1 <- By_Year_2015[which(By_Year_2015$Month < 4),]
By_Year_2015_2 <- By_Year_2015[which((By_Year_2015$Month > 3) & (By_Year_2015$Month < 7)),]
By_Year_2015_3 <- By_Year_2015[which((By_Year_2015$Month > 6) & (By_Year_2015$Month < 10)),]
By_Year_2015_4 <- By_Year_2015[which(By_Year_2015$Month > 9),]

By_Year_2016_1 <- By_Year_2016[which(By_Year_2016$Month < 4),]
By_Year_2016_2 <- By_Year_2016[which((By_Year_2016$Month > 3) & (By_Year_2016$Month < 7)),]
By_Year_2016_3 <- By_Year_2016[which((By_Year_2016$Month > 6) & (By_Year_2016$Month < 10)),]
By_Year_2016_4 <- By_Year_2016[which(By_Year_2016$Month > 9),]



write.csv(By_Year_2007_1, file = "By_Year_2007_1.csv", row.names = FALSE)
write.csv(By_Year_2007_2, file = "By_Year_2007_2.csv", row.names = FALSE)
write.csv(By_Year_2007_3, file = "By_Year_2007_3.csv", row.names = FALSE)
write.csv(By_Year_2007_4, file = "By_Year_2007_4.csv", row.names = FALSE)

write.csv(By_Year_2008_1, file = "By_Year_2008_1.csv", row.names = FALSE)
write.csv(By_Year_2008_2, file = "By_Year_2008_2.csv", row.names = FALSE)
write.csv(By_Year_2008_3, file = "By_Year_2008_3.csv", row.names = FALSE)
write.csv(By_Year_2008_4, file = "By_Year_2008_4.csv", row.names = FALSE)

write.csv(By_Year_2009_1, file = "By_Year_2009_1.csv", row.names = FALSE)
write.csv(By_Year_2009_2, file = "By_Year_2009_2.csv", row.names = FALSE)
write.csv(By_Year_2009_3, file = "By_Year_2009_3.csv", row.names = FALSE)
write.csv(By_Year_2009_4, file = "By_Year_2009_4.csv", row.names = FALSE)

write.csv(By_Year_2010_1, file = "By_Year_2010_1.csv", row.names = FALSE)
write.csv(By_Year_2010_2, file = "By_Year_2010_2.csv", row.names = FALSE)
write.csv(By_Year_2010_3, file = "By_Year_2010_3.csv", row.names = FALSE)
write.csv(By_Year_2010_4, file = "By_Year_2010_4.csv", row.names = FALSE)

write.csv(By_Year_2011_1, file = "By_Year_2011_1.csv", row.names = FALSE)
write.csv(By_Year_2011_2, file = "By_Year_2011_2.csv", row.names = FALSE)
write.csv(By_Year_2011_3, file = "By_Year_2011_3.csv", row.names = FALSE)
write.csv(By_Year_2011_4, file = "By_Year_2011_4.csv", row.names = FALSE)

write.csv(By_Year_2012_1, file = "By_Year_2012_1.csv", row.names = FALSE)
write.csv(By_Year_2012_2, file = "By_Year_2012_2.csv", row.names = FALSE)
write.csv(By_Year_2012_3, file = "By_Year_2012_3.csv", row.names = FALSE)
write.csv(By_Year_2012_4, file = "By_Year_2012_4.csv", row.names = FALSE)

write.csv(By_Year_2013_1, file = "By_Year_2013_1.csv", row.names = FALSE)
write.csv(By_Year_2013_2, file = "By_Year_2013_2.csv", row.names = FALSE)
write.csv(By_Year_2013_3, file = "By_Year_2013_3.csv", row.names = FALSE)
write.csv(By_Year_2013_4, file = "By_Year_2013_4.csv", row.names = FALSE)

write.csv(By_Year_2014_1, file = "By_Year_2014_1.csv", row.names = FALSE)
write.csv(By_Year_2014_2, file = "By_Year_2014_2.csv", row.names = FALSE)
write.csv(By_Year_2014_3, file = "By_Year_2014_3.csv", row.names = FALSE)
write.csv(By_Year_2014_4, file = "By_Year_2014_4.csv", row.names = FALSE)

write.csv(By_Year_2015_1, file = "By_Year_2015_1.csv", row.names = FALSE)
write.csv(By_Year_2015_2, file = "By_Year_2015_2.csv", row.names = FALSE)
write.csv(By_Year_2015_3, file = "By_Year_2015_3.csv", row.names = FALSE)
write.csv(By_Year_2015_4, file = "By_Year_2015_4.csv", row.names = FALSE)

write.csv(By_Year_2016_1, file = "By_Year_2016_1.csv", row.names = FALSE)
write.csv(By_Year_2016_2, file = "By_Year_2016_2.csv", row.names = FALSE)
write.csv(By_Year_2016_3, file = "By_Year_2016_3.csv", row.names = FALSE)
write.csv(By_Year_2016_4, file = "By_Year_2016_4.csv", row.names = FALSE)


