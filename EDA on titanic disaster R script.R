library(Amelia)
library(tidyverse)
titanic<-read.csv("E:/data analysis/projects/EDA/data set/titanic complete data.csv")
titanic<- titanic %>% mutate_all(~replace(., . == "", NA))

missmap(titanic,col=c("red","green"))
sum(is.na(titanic))
#handling missing valaues:
#drop down body column
titanic<-titanic[,!names(titanic) %in% "body"]
#handling cabin column
# Extract the first letter of the cabin to create the deck
titanic$cabin_deck <- substr(titanic$cabin, 1, 1)
# Replace NA values in cabin_deck with "Unknown"
titanic$cabin_deck[is.na(titanic$cabin_deck)] <- "Unknown"
#drop down the cabin column
titanic<-titanic[,!names(titanic) %in% "cabin"]
#handling boat column
#replace NA by "no"
titanic$boat[is.na(titanic$boat)]<-"no"
#handling home.dest
#drop down the home.dest column
titanic<-titanic[,!names(titanic) %in% "home.dest"]
#handling age 
titanic <- titanic %>%group_by(pclass) %>% mutate(age = ifelse(is.na(age), mean(age, na.rm = TRUE), age))
#handling embarked column
mode_embarked<-names(which.max(table(titanic$embarked)))
#replace NA by mode_embarked
titanic$embarked[is.na(titanic$embarked)] <- mode_embarked
#handling fare: replace NA by median values of fare
titanic$fare[is.na(titanic$fare)] <- median(titanic$fare, na.rm = TRUE)
missmap(titanic,col=c("red","green"))
plot.new()
boxplot(titanic$age,main="boxplot of Age")
boxplot(titanic$fare,main="boxplot of Fare")
boxplot(titanic$sibsp,main="boxplot of sibsp")
boxplot(titanic$parch,main="boxplot of parch")
#handling outliers
#handling fare by categorizing
titanic$fare_group<- cut(titanic$fare,breaks=c(0,10,20,50,100,Inf),labels=c("lowest","lower middle","upper middle","higher","highest"),right=TRUE)
#handling parch by categorizing
titanic$parch_group<-cut(titanic$parch,breaks=c(-1,0,1,2,Inf),labels=c("none","small","medium","large"),right=TRUE)
#handling sibsp by categorizing
titanic$sibsp_group<-cut(titanic$sibsp,breaks = c(-1,0,2,4,Inf),labels=c("none","small","medium","large"),right=TRUE)
#descriptive analysis
#for numerical variable
summary(titanic[, sapply(titanic, is.numeric)])
#frequency table for categorical var
table(titanic$sex)
table(titanic$pclass)
table(titanic$survived)
table(titanic$sibsp)
table(titanic$parch)
table(titanic$embarked)
table(titanic$boat)
table(titanic$cabin_deck)
table(titanic$fare_group)
table(titanic$parch_group)
table(titanic$sibsp_group)
plot.new()
#distribution of data
#age
hist(titanic$age, main = "Histogram of Age", xlab = "Age", col = "lightblue", breaks = 20)
#density of age
plot(density(titanic$age, na.rm = TRUE), main = "Density Plot of Age", xlab = "age", col = "blue")
#fare
hist(titanic$fare, main = "Fare Distribution", xlab = "Fare", col = "orange", breaks = 20)
#Log Transformation Histogram: since fare is heavily skewed
hist(log1p(titanic$fare), main = "Log Transformed Fare Distribution", xlab = "Log(Fare)", col = "purple", breaks = 20)
#faregroup
barplot(table(titanic$fare_group), main = "Fare distribution 'Barplot' ", xlab = "Fare range", ylab = "Frequency", col = c("cyan"))
percentagefare=round( (100*table(titanic$fare_group))/sum(table(titanic$fare_group)),1 )
pie(table(titanic$fare_group),main="pie chart of Fare class",col=c("pink", "lightblue","cyan","green","magenta"),labels=paste0(names(table(titanic$fare_group)),"(",percentagefare,"%)"))

#sibsp & parch
barplot(table(titanic$sibsp), main = "Siblings/Spouses Aboard", xlab = "Number", ylab = "Frequency", col = "lightpink")
barplot(table(titanic$parch), main = "Parents/Children Aboard", xlab = "Number", ylab = "Frequency", col = "lightblue")
percentagesibsp=round( (100*table(titanic$sibsp_group))/sum(table(titanic$sibsp_group)),1 )
pie(table(titanic$sibsp_group),main="pie chart of siblings/spouses",col=c("pink", "lightblue","orange","cyan"),labels=paste0(names(table(titanic$sibsp_group)),"(",percentagesibsp,"%)"))
percentageparch=round( (100*table(titanic$parch_group))/sum(table(titanic$parch_group)),1 )
pie(table(titanic$parch_group),main="pie chart of parents/children",col=c("pink", "lightblue","orange","cyan"),labels=paste0(names(table(titanic$parch_group)),"(",percentageparch,"%)"))
#sex
percentage=round( (100*table(titanic$sex))/sum(table(titanic$sex)),1 )
pie(table(titanic$sex),main="pie chart of Gender",col=c("pink", "lightblue"),labels=paste0(names(table(titanic$sex)),"(",percentage,"%)"))
barplot(table(titanic$sex), main = "Gender Distribution", xlab = "Gender", ylab = "Frequency", col = c("pink", "lightblue"))
#pclass
barplot(table(titanic$pclass), main = "passenger class Distribution", xlab = "1=1st class , 2= 2nd class , 3=3rd class", ylab = "Frequency", col = c("cyan"))
percentagepclass=round( (100*table(titanic$pclass))/sum(table(titanic$pclass)),1 )
pie(table(titanic$pclass),main="pie chart of Passenger class",col=c("pink", "lightblue","cyan"),labels=paste0(names(table(titanic$pclass)),"(",percentagepclass,"%)"))
#embarked
barplot(table(titanic$embarked), main = "emberk Distribution", xlab ="emberked port", col = c("cyan"))
percentageembarked=round( (100*table(titanic$embarked))/sum(table(titanic$embarked)),1 )
pie(table(titanic$embarked),main="pie chart of embarked port",col=c("pink", "magenta","cyan"),labels=paste0(names(table(titanic$embarked)),"(",percentageembarked,"%)"))
#cabin_deck
barplot(table(titanic$cabin_deck), main = "Cabin distribution ", xlab = "Cabin", ylab = "Frequency", col = c("cyan"))
percentagecanin=round( (100*table(titanic$cabin_deck))/sum(table(titanic$cabin_deck)),1 )
#survived
barplot(table(titanic$survived), main = "survival overview ", xlab = "survival stutus", ylab = "Frequency", col = c("cyan"))
percentagesurvived=round( (100*table(titanic$survived))/sum(table(titanic$survived)),1 )
pie(table(titanic$survived),main="survived or died",col=c("red","green"),labels=paste0(names(table(titanic$survived)),"(",percentagesurvived,"%)"))
 #relationship analysis
 #Gender vs survival
 # Creating a contingency table for Sex and Survival
table_sex_survival <- table(titanic$survived, titanic$sex)

# Calculating proportions
prop_table_sex <- prop.table(table_sex_survival, 2) * 100  # Convert proportions to percentages as column wise

 # Generating the stacked bar plot
barplot(prop_table_sex,
        col = c("red", "green"),  # Customize colors: red for "No", green for "Yes"
        beside = FALSE,           # Stacked bars
        main = "Survival Rate by Gender in Titanic Dataset",  # Title of the plot
        xlab = "Gender",          # Label for x-axis
        ylab = "Survival Rate (%)",  # Label for y-axis
        ylim = c(0, 100),         # Ensure y-axis is 0 to 100 for percentages
        legend.text = c("No", "Yes"), # Add legend labels for survival
        args.legend = list(title = "Survived", x = "topright")  # Customize legend position
        )
 # Chi-squared test for Gender vs Survival
chisq.test(table_sex_survival)
 #pclass vs survival
 #creating continency table pclass vs survival
table_pclass_survival<- table(titanic$survived,titanic$pclass)
 #calculating proportions
prop_table_pclass_survival<-prop.table(table_pclass_survival,2)*100
 # Proportional stacked bar plot for Pclass vs Survival
barplot(prop_table_pclass_survival,col = c("red","green"),main = "Survival by Passenger Class (Stacked Bar Plot)",xlab = "Passenger Class",ylab = "Survival Rate %",ylim = c(0, 100),legend =c("no","yes"),args.legend = list(title = "Survived", x = "topright", cex = 0.8))
 #Chi-square test for Pclass vs survival
chisq.test(table_pclass_survival)
 #embarked vs survival
table_embarked_survival<- table(titanic$survived,titanic$embarked)
prop_table_embarked_survival<-prop.table(table_embarked_survival,2)*100
barplot(prop_table_embarked_survival,col = c("red","green"),main = "Survival by embarked port",xlab = "embarkation port",ylab = "Survival Rate %",ylim = c(0, 100),legend =c("no","yes"),args.legend = list(title = "Survived", x = "topright", cex = 0.8))
chisq.test(table_embarked_survival)
 #fare vs survival
table_fare_survival<- table(titanic$survived,titanic$fare_group)
prop_table_fare_survival<-prop.table(table_fare_survival,2)*100
barplot(prop_table_fare_survival,col = c("red","green"),main = "Survival by fare group",xlab = "fare group",ylab = "Survival Rate %",ylim = c(0, 100),legend =c("no","yes"),args.legend = list(title = "Survived", x = "topright", cex = 0.8))
chisq.test(table_fare_survival)
 #Age vs survival
titanic$age_group<- cut(titanic$age ,breaks=c(0,14,24,64,Inf),labels=c("Child","Youth","Adult","Senior"),right=TRUE)
table_age_survival<- table(titanic$survived,titanic$age_group)
prop_table_age_survival<-prop.table(table_age_survival,2)*100
barplot(prop_table_age_survival,col = c("red","green"),main = "Survival by Age group",xlab = "Age group",ylab = "Survival Rate %",ylim = c(0, 100),legend =c("no","yes"),args.legend = list(title = "Survived", x = "topright", cex = 0.8))
 # Fisher's Exact Test with Monte Carlo simulation
fisher.test(table_age_survival, simulate.p.value = TRUE, B = 10000)
 #cabin vs survival
table_cabin_survivl<-table(titanic$survived,titanic$cabin_deck)
prop_table_cabin<-prop.table(table_cabin_survivl,2)*100
barplot(prop_table_cabin,col=c("red","green"),main="Survial status by cabin location",xlab="cabin location",ylab="% survival proportion",ylim=c(0,100),legend=c("no","yes"),args.legend = list(title="survived",x="topright",cex=0.8) )
 # Fisher's Exact Test with Monte Carlo simulation
fisher.test(table_cabin_survivl, simulate.p.value = TRUE, B = 10000)
 ##family members vs survival
# Create a new column for Family Size
titanic$FamilySize <- titanic$sibsp + titanic$parch + 1
# Create a new column to classify passengers as Alone or With Family
titanic$FamilyStatus <- ifelse(titanic$FamilySize == 1, "Alone", "With Family")
table_aloneornot_survival<-table(titanic$survived,titanic$FamilyStatus)
prop_table_aloneornot<-prop.table(table_aloneornot_survival,2)*100
barplot(prop_table_aloneornot,col=c("red","green"),main="Survial status by Family Stutus",xlab="Family Stutus on Ship",ylab="% survival proportion",ylim=c(0,100),legend=c("no","yes"),args.legend = list(title="survived",x="topright",cex=0.8) )
chisq.test(table_aloneornot_survival)
