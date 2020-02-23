# question 1
library(ggplot2) # read in library
# read in data
primaryPolls<-read.csv('https://jmontgomery.github.io/PDS/Datasets/president_primary_polls_feb2020.csv',
                       stringsAsFactors = F)
primaryPolls$start_date<-as.Date(primaryPolls$start_date, "%m/%d/%Y")
# candidates of interest (from class)
primaryPolls<-primaryPolls[primaryPolls$candidate_name%in%c("Amy Klobuchar", 
                                                            "Bernard Sanders", 
                                                            "Elizabeth Warren", 
                                                            "Joseph R. Biden Jr.", 
                                                            "Michael Bloomberg", 
                                                            "Pete Buttigieg"),]
# states of interest (from class)
primaryPolls<-primaryPolls[primaryPolls$state=="Alabama" | 
                                        primaryPolls$state=="Arkansas" | 
                                        primaryPolls$state=="California"| 
                                        primaryPolls$state=="Colorado"| 
                                        primaryPolls$state=="Maine"| 
                                        primaryPolls$state=="Massachusetts"| 
                                        primaryPolls$state=="Minnesota"| 
                                        primaryPolls$state=="North Carolina"| 
                                        primaryPolls$state=="Oklahoma"| 
                                        primaryPolls$state=="Tennessee"| 
                                        primaryPolls$state=="Utah"| 
                                        primaryPolls$state=="Vermont"| 
                                        primaryPolls$state=="Virginia", ]
# maybe come back to this later
primaryPolls_cal = primaryPolls[primaryPolls$state == "New Hampshire",]
ggplot(data=primaryPolls)+
  geom_point(mapping = aes(x=start_date, y=pct)) + 
  facet_wrap(~ candidate_name, nrow=2) +
  theme_minimal() +
  xlab("date") +
  ylab("percentage")


# quesiton 2


