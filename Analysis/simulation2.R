library(data.table)
iteration <- 1
HIGH <- 10441
# Laid out where [1] is between BSP 1 & BSP 2, [2] is between BSP 2 & BSP 2^2 [3] between 2^2 & 2^3, etc.
MONEY <- data.frame(BSP1=rep(NA, HIGH), BSP2=rep(NA, HIGH), BSP3=rep(NA, HIGH), BSP4=rep(NA, HIGH),
                    BSP5=rep(NA, HIGH), BSP6=rep(NA, HIGH), BSP7=rep(NA, HIGH), BSP8=rep(NA, HIGH),
                    BSP9=rep(NA, HIGH), BSP10=rep(NA, HIGH))
temp.money <- data.frame(BSP1=0, BSP2=0, BSP3=0, BSP4=0, BSP5=0, BSP6=0, BSP7=0, BSP8=0, BSP9=0, BSP10=0)

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

  temp.money[1,] <- MONEY[iteration,]
  
  for(current in eventID) {
    check <- t[which(x = (t$EVENT_ID == current)),]
    check$BSP <- as.numeric(as.character(check$BSP))
    if(!is.na(min(check$BSP))){                   # Some BSPs do not have values
      if(any(check$WIN_LOSE == 1)) {              # Some WIN_LOSE != 1 or 0
        
        lowBSP <- 1
        highBSP <- 2
        BSP.multiple <- 1
        
        while(BSP.multiple < 11){
          horse <- subset(check, BSP >= lowBSP & BSP < highBSP)
          if (nrow(horse) > 1){
            horse <- horse[sample(1:nrow(horse), 1)]
          } else if (nrow(horse) != 0){
            
            temp.money[1,BSP.multiple] <- temp.money[1,BSP.multiple] - 1
            if(horse$WIN_LOSE == 1){
              temp.money[1,BSP.multiple] <- temp.money[1,BSP.multiple] + horse$BSP
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
  MONEY[iteration,] <- temp.money[1,]
}