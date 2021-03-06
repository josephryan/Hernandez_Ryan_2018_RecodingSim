data <- read.csv('comp_het_1000_5000_proportion.csv')
data$proportion <- data$proportion*100
names(data)[4]<-"percent"
library(ggplot2)
data$Amino.acid.columns=factor(data$Amino.acid.columns, levels=c('1,000', '2,000', '3,000', '4,000', '5,000'))
b <- ggplot(data, aes(x=inflation.parameter, y=percent)) + geom_bar(aes(fill=reorder(type, percent)), stat = "identity", position=position_dodge2(preserve = c("total"), padding = 0.2)) + facet_wrap(~Amino.acid.columns, nrow=1)
b + labs (subtitle = "Amino acid columns") + theme(plot.subtitle = element_text(hjust = 0.5)) + scale_x_continuous(name="Inflation parameter (level of compositional heterogeneity)", breaks =c(0.1, 0.5, 0.9), label=c("0.1","0.5","0.9"), expand = c(0, 0)) + scale_y_continuous(name="Percentage of incorrect trees (%)", expand = c(0, 0), limits=c(0,70)) + labs(fill="Matrix") + scale_fill_manual(values=c("#756bb1","#e6550d")) 
