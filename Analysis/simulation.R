library(data.table)
iteration <- 1

# Laid out where [1] is between BSP 1 & BSP 2, [2] is between BSP 2 & BSP 2^2 [3] between 2^2 & 2^3, etc.
MONEY <- c(10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000)

lowBSP <- 1
highBSP <- 2
BSP.multiple <- 1
MONEY[1,] <- 10000
while(iteration < 10441) {
  
  file_location <- paste('D:/Users/Andrew/workspace/combineFilesJava/renamed_no_place/',iteration,'.csv', sep="")
  CSV <- read.csv(file_location)
  t <- data.table(CSV)
  t <- t[,list(MENU_HINT=MENU_HINT,EVENT_NAME=EVENT_NAME,EVENT_DT=EVENT_DT,SELECTION_ID=SELECTION_ID,SELECTION_NAME=SELECTION_NAME,
               WIN_LOSE=WIN_LOSE, BSP=BSP, PPWAP=PPWAP, MORNINGWAP=MORNINGWAP, PPMAX=PPMAX, PPMIN=PPMIN, IPMAX=IPMAX, IPMIN=IPMIN,
               MORNINGTRADEDVOL=MORNINGTRADEDVOL, PPTRADEDVOL=PPTRADEDVOL, IPTRADEDVOL=IPTRADEDVOL),by=EVENT_ID]
  
  eventID <- unique(t$EVENT_ID) # gets one event ID for each group
  for(current in eventID) {
    check <- t[which(x = (t$EVENT_ID == current)),]
    check$BSP <- as.numeric(as.character(check$BSP))
    if(!is.na(min(check$BSP))){                   # Some BSPs do not have values
      if(any(check$WIN_LOSE == 1)) {              # Some WIN_LOSE != 1 or 0
        
        lowBSP <- 1
        highBSP <- 2
        BSP.multiple <- 1
        
        while(BSP.multiple < 13){
          horse <- subset(check, BSP >= lowBSP & BSP < highBSP)
          if (nrow(horse) > 1){
            horse <- horse[sample(1:nrow(horse), 1)]
          } else if (nrow(horse) != 0){
          
            MONEY[BSP.multiple] <- MONEY[BSP.multiple] - 1
            if(horse$WIN_LOSE == 1){
              MONEY[BSP.multiple] <- MONEY[BSP.multiple] + horse$BSP
            }
          }
          BSP.multiple <- BSP.multiple + 1
          lowBSP <- lowBSP * 2
          highBSP <- highBSP * 2
        }
        
      }
    } 
  }
  iteration <- iteration + 1
}
MONEY
