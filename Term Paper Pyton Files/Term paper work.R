install.packages("plyr")
install.packages("ggplot2")
install.packages("reshape2")
library(plyr)
library(ggplot2)
library(reshape2)
library(data.table)
library(plyr)
library(dplyr)
library(bit64)
library(choroplethr)
library(zoo)
setwd("Downloads")

Player_d <- read.csv("Data_TermPaper.csv", stringsAsFactors = F)
i = 0
elite <- subset(Player_d, PPG>22)
elite_2p <- subset(elite, PcPTS2PT>68.1)
elite_3p <- subset(elite, PcPTS3PT>39.3)
elite_Fbp <- subset(elite, PcPTSFBPS>20.1)
elite_Ft <- subset(elite, PcPTSFT>24.7)
elite_To <- subset(elite, PcPTSOFFTO>18.2)
elite_FGa <- subset(elite, FGMPcAST>74.1)
elite_FGua <- subset(elite, FGMPcUAST>68.1)
elite_pip <- subset(elite, PcPTSPITP>48.3)

ggplot(elite, aes(x=PLAYER, y=PPG)) + geom_bar(stat="identity") + theme(legend.position="none") + ggtitle("Elite Players") + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggplot(elite_2p, aes(x=PLAYER, y=PcPTS2PT)) + geom_bar(stat="identity") + theme(legend.position = "none") + ggtitle("Best Percentage of 2 Point Baskets Among Elites") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggplot(elite_3p, aes(x=PLAYER, y=PcPTS3PT)) + geom_bar(stat="identity") + theme(legend.position="none") + ggtitle("Best Percentage of 3 Point Baskets Among Elites") + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggplot(elite_Fbp, aes(x=PLAYER, y=PcPTSFBPS)) + geom_bar(stat="identity") + theme(legend.position="none") + ggtitle("Best Percentage of Fast Break Points Among Elites") + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggplot(elite_To, aes(x=PLAYER, y=PcPTSOFFTO)) + geom_bar(stat="identity") + theme(legend.position="none") + ggtitle("Best Percentage of Points off of a Turnover Among Elites") + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggplot(elite_FGa, aes(x=PLAYER, y=FGMPcAST)) + geom_bar(stat="identity") + theme(legend.position="none") + ggtitle("Best Percentage of Field Goals made with an Assist Among Elites") + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggplot(elite_FGua, aes(x=PLAYER, y=FGMPcUAST)) + geom_bar(stat="identity") + theme(legend.position="none") + ggtitle("Best Percentage of Field Goals made unassisted Among Elites") + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggplot(elite_pip, aes(x=PLAYER, y=PcPTSPITP)) + geom_bar(stat="identity") + theme(legend.position="none") + ggtitle("Best Percentage of Field Goals made in the Paint Among Elites") + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggplot(elite_Ft, aes(x=PLAYER, y=PcPTSFT)) + geom_bar(stat="identity") + theme(legend.position="none") + ggtitle("Best Percentage of Free Throws made Among Elites") + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
