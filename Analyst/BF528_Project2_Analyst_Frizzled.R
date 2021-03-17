setwd("D:/RStudio/BF528/Project2")
Diff_Data <- read.table("gene_exp.diff", header = TRUE) #read in data
Sorted_Diff_Data <- Diff_Data[order(Diff_Data[,13]),] #Sort by q-value
Ten_gene <- Sorted_Diff_Data[1: 10,]
Ten_top <- Ten_gene[,c(3,8,9,10,12,13)]
names(Ten_top) <- c('Gene_name','FPKM value_1','FPKM value_2','log_fold change','p-value','q-value')

hist(Diff_Data$log2.fold_change.,breaks = 30, xlab = "Log2 fold change",
     main = "Histogram of Log2_fold_change for all genes")
nrow(Diff_Data)

Sig_Data <- subset(Diff_Data, Diff_Data$significant == "yes")
nrow(Sig_Data)

P_Data <- subset(Diff_Data, Diff_Data$p_value < 0.01)
nrow(P_Data)
up_sub_p <- subset(P_Data,log2.fold_change.>0)
dw_sub_p <- subset(P_Data,log2.fold_change.<0)
nrow(up_sub_p)
nrow(dw_sub_p)

#write.csv(up_sub$gene,"up-regulated_gene.csv")
#write.csv(dw_sub$gene,"dw-regulated_gene.csv")

hist(Sig_Data$log2.fold_change.,breaks = 30, xlab = "Log2 fold change",
     main = "Histogram of Log2_fold_change for significant genes")

up_sub <- subset(Sig_Data,log2.fold_change.>0)
dw_sub <- subset(Sig_Data,log2.fold_change.<0)
nrow(up_sub)
nrow(dw_sub)

write.csv(up_sub$gene,"up-regulated_gene.csv")
write.csv(dw_sub$gene,"dw-regulated_gene.csv")
