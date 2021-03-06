data <- read.csv('comphet_proportion_reconstruction.csv')
data$proportion <- data$proportion*100
names(data)[3]<-"percent"
library(ggplot2)
data$tree=factor(data$tree, levels=c('Tree 0.008', 'Tree 0.004', 'Tree 0.002', 'Tree 0.001'))
b <- ggplot(data, aes(x=inflation.parameter, y=percent)) + geom_bar(aes(fill=reorder(type, percent)), stat = "identity", position=position_dodge2(preserve = c("total"), padding = 0.2)) + facet_wrap(~tree, nrow=1)
b + scale_x_continuous(name="Inflation parameter (level of compositional heterogeneity)", breaks =c(0.1, 0.5, 0.9), label=c("0.1","0.5","0.9"), expand = c(0, 0)) + scale_y_continuous(name="Percentage of incorrect trees (%)", expand = c(0, 0), limits=c(0,70)) + labs(fill="Matrix") + scale_fill_manual(values=c("#bcbddc", "#756bb1","#fdae6b", "#e6550d"))
                                                                      
