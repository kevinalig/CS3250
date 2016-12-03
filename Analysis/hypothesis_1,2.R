library(data.table)
iteration <- 1
total <- c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
successes <- c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
while(iteration < 20753){
  file_location <- paste('D:/Users/Andrew/workspace/combineFilesJava/renamed/',iteration,'.csv', sep="")
  CSV <- read.csv(file_location)
  t <- data.table(CSV)
  t <- t[,list(MENU_HINT=MENU_HINT,EVENT_NAME=EVENT_NAME,EVENT_DT=EVENT_DT,SELECTION_ID=SELECTION_ID,SELECTION_NAME=SELECTION_NAME,
               WIN_LOSE=WIN_LOSE, BSP=BSP, PPWAP=PPWAP, MORNINGWAP=MORNINGWAP, PPMAX=PPMAX, PPMIN=PPMIN, IPMAX=IPMAX, IPMIN=IPMIN,
               MORNINGTRADEDVOL=MORNINGTRADEDVOL, PPTRADEDVOL=PPTRADEDVOL, IPTRADEDVOL=IPTRADEDVOL),by=EVENT_ID]
  eventID <- unique(t$EVENT_ID)
  for(current in eventID){
    check <- t[which(x = (t$EVENT_ID == current)),]
    check$BSP <- as.numeric(as.character(check$BSP))
    if(!is.na(min(check$BSP))){                   # Some BSPs do not have values
      favored <- check[order(check$BSP),]
      if(any(check$WIN_LOSE == 1)) {              # Some WIN_LOSE != 1 or 0
        favoredNum <- 0
        while(favoredNum < nrow(favored)){
          favoredNum <- favoredNum + 1
          total[favoredNum] <- total[favoredNum] + 1
          if((favored[favoredNum]$WIN_LOSE == 1)){ # Problem: 100005932
             successes[favoredNum] <- successes[favoredNum] + 1
          }
        }
      }
    } 
  }
  iteration <- iteration + 1
}
successes / total
