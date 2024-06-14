  mySurvivalPlot_median=function(gene,myRdir,cancer,dataname){
  library(survival)
  library(survminer)
  library(stringr)
  survival_data_file=paste(myRdir,dataname,sep="")
  survival_data<-read.table(survival_data_file,header = T,sep = "\t",check.names = F)
  meta<-as.data.frame(survival_data)
  g2 = as.numeric(which(colnames(survival_data)== gene)) 
  meta<-as.data.frame(meta[c("time","event")])
  meta$gene = ifelse(survival_data[,g2]>median(survival_data[,g2]),'high','low')
  sfit1=survfit(Surv(as.numeric(time), as.numeric(event))~gene, data=meta)
  last_part <- tail(strsplit(dataname, "_")[[1]], 1)
  is_last_m <- last_part == "m.txt"
  dataname<- str_remove(dataname, "\\.txt$")
  outfile=paste(gene,"_",dataname,".pdf",sep="")
  outdir=paste("/usr/local/tomcat/apache-tomcat-9.0.87/webapps/P2M.db/myR/","Survival_plot",sep="")
  setwd(outdir)
  gene<-gsub("_","-",gene)
  if(is_last_m){
    title_median<-paste(cancer,gene,"Metastasis",sep="_")
  }else{
    title_median<-paste(cancer,gene,"Primary",sep="_")
  }
  pdf(outfile,onefile = FALSE)
  custom_theme <- function() {
         theme_survminer() %+replace%
         theme(plot.title=element_text(hjust=0.5))
  }
  p<-ggsurvplot(sfit1,pval =TRUE, data = meta, risk.table = TRUE,surv.median.line = "hv",legend = c(0.85,0.87),
           title=title_median, ggtheme=custom_theme(),legend.labs = c("High", "Low") ,font.title = 18, font.x =  16,font.y = 16,font.tickslab = 15, font.legend=14)
  print(p)
  dev.off()
  }
  #mySurvivalPlot_median("HNF1A","D:/RNAP2MDB/web/myR/Survival_data/","peritoneum","2024_4_10","b_sv_GSE161097_peritoneum_m.txt")
  