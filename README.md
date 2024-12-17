# Explore-the-Insight-of-Survival-rate-of-Titanic-Passengers-using-R
🛳️This project analyzes survival rates on the Titanic using R. Key factors explored include gender, passenger class, age, family status, fare, and cabin location. Statistical tests and visualizations uncover patterns, reflecting societal norms and inequalities of the era.
<h1 class="TOC-Heading" id="table-of-constents">Table of Constents</h1>
<p><a href="#what-is-eda">What is EDA? <span>3</span></a></p>
<p><a
href="#project-tittle-explore-the-insight-of-survival-rate-of-titanic-passengers">Project
Tittle: Explore the Insight of Survival rate of Titanic Passengers
<span>3</span></a></p>
<p><a href="#project-description">Project Description
<span>3</span></a></p>
<p><a href="#project-asking">Project Asking: <span>3</span></a></p>
<p><a href="#titanic-data-set-link">Titanic Data set link
<span>3</span></a></p>
<p><a
href="#exploratory-data-analysis-eda-for-discovering-the-insight-of-survival-rate-of-titanic-passengers">Exploratory
Data Analysis (EDA) for discovering the insight of Survival rate of
Titanic passengers: <span>4</span></a></p>
<p><a href="#step-1-data-quality-analysis">Step-1: Data Quality Analysis
<span>4</span></a></p>
<p><a href="#missing-value-analysis">Missing value Analysis
<span>4</span></a></p>
<p><a href="#installing-relevant-packages">#installing relevant
packages: <span>4</span></a></p>
<p><a href="#identifying-missing-values">Identifying missing values
<span>4</span></a></p>
<p><a href="#significance-of-missing-values">Significance of missing
values: <span>5</span></a></p>
<p><a href="#handling-missing-values">Handling missing values:
<span>5</span></a></p>
<p><a href="#body-mostly-missing">body (mostly missing):
<span>5</span></a></p>
<p><a href="#cabin-mostly-missing">cabin (mostly missing):
<span>5</span></a></p>
<p><a href="#boat-some-missing">boat (some missing):
<span>5</span></a></p>
<p><a href="#home.dest-some-missing">Home.dest (some missing)
<span>5</span></a></p>
<p><a href="#age-some-missing">age (some missing):
<span>6</span></a></p>
<p><a href="#embarked-few-missing">embarked (few missing):
<span>6</span></a></p>
<p><a href="#fare-very-few-missing">fare (very few missing):
<span>6</span></a></p>
<p><a href="#outlier-analysis">Outlier Analysis: <span>6</span></a></p>
<p><a href="#identifying-outliers">Identifying outliers
<span>6</span></a></p>
<p><a href="#age">Age: <span>7</span></a></p>
<p><a href="#parch-number-of-parentschildren-aboard">parch (Number of
Parents/Children Aboard): <span>7</span></a></p>
<p><a href="#fare">Fare: <span>8</span></a></p>
<p><a href="#sibsp-number-of-siblingsspouses-aboard">sibsp (Number of
Siblings/Spouses Aboard): <span>8</span></a></p>
<p><a href="#impact-of-outlier-on-analysis">Impact of outlier on
Analysis: <span>8</span></a></p>
<p><a href="#handling-outliers">Handling Outliers:
<span>8</span></a></p>
<p><a href="#age-1">Age <span>8</span></a></p>
<p><a href="#fare-1">Fare <span>8</span></a></p>
<p><a href="#parch-and-sibsp-number-of-siblingsspouses-aboard">Parch and
SibSp (Number of Siblings/Spouses Aboard) <span>9</span></a></p>
<p><a href="#step-2-descriptive-analysis">Step-2: Descriptive Analysis
<span>10</span></a></p>
<p><a href="#basic-statistics">Basic Statistics <span>10</span></a></p>
<p><a href="#for-numerical-variables">For Numerical Variables:
<span>10</span></a></p>
<p><a href="#_Toc185326767"><strong>Summary of Key Numeric
Variables</strong> <span>10</span></a></p>
<p><a href="#_Toc185326768"><strong>Insights:</strong>
<span>10</span></a></p>
<p><a href="#for-categorical-variables">For Categorical Variables
<span>11</span></a></p>
<p><a href="#visual-distribution-of-data">Visual Distribution of Data
<span>12</span></a></p>
<p><a href="#age-2">Age <span>12</span></a></p>
<p><a href="#fare-2">Fare <span>13</span></a></p>
<p><a
href="#sibsp-number-of-siblingsspouses-aboard-and-parch-number-of-parentschildren-aboard">sibsp
(Number of Siblings/Spouses Aboard) and parch (Number of
Parents/Children Aboard): <span>14</span></a></p>
<p><a href="#sex">Sex <span>15</span></a></p>
<p><a href="#pclass">Pclass <span>16</span></a></p>
<p><a href="#embarked">Embarked <span>16</span></a></p>
<p><a href="#cabin_deck">Cabin_deck <span>16</span></a></p>
<p><a href="#survived">Survived <span>17</span></a></p>
<p><a href="#step-3-relationship-analysis">Step-3: Relationship Analysis
<span>17</span></a></p>
<p><a href="#gender-vs-survival">Gender vs Survival
<span>18</span></a></p>
<p><a href="#passenger-class-vs-survival">Passenger Class vs Survival
<span>19</span></a></p>
<p><a href="#embarkation-port-vs-survival">Embarkation port vs survival
<span>20</span></a></p>
<p><a href="#fare-vs-survival-rate">Fare vs survival Rate
<span>21</span></a></p>
<p><a href="#age-vs-survival">Age vs survival <span>22</span></a></p>
<p><a href="#cabin-vs-survival">Cabin vs survival
<span>23</span></a></p>
<p><a href="#family-status-vs-survival">Family Status vs survival
<span>25</span></a></p>
<p><a href="#summary-of-the-analysis">⮚ Summary of the Analysis
<span>26</span></a></p>
<p><a href="#_Toc185326788">2. Passenger Class and Survival:
<span>26</span></a></p>
<p><a href="#_Toc185326789">3. Embarkation Port and Survival:
<span>26</span></a></p>
<p><a href="#_Toc185326790">4. Fare and Survival:
<span>26</span></a></p>
<p><a href="#_Toc185326791">5. Age and Survival: <span>26</span></a></p>
<p><a href="#_Toc185326792">6. Cabin Location and Survival:
<span>26</span></a></p>
<p><a href="#_Toc185326793">7. Family Status and Survival:
<span>26</span></a></p>
<p><a href="#summary-of-research-questions">Summary of Research
Questions <span>26</span></a></p>
<p><a href="#conclusion">Conclusion <span>27</span></a></p>
<p><a href="#r-script-download-link">R Script download link
<span>27</span></a></p>
<p><a href="#pdf-file-download-link">pdf file download link
<span>27</span></a></p>
<p>Project-1 (Perform EDA on the following project using R)</p>
<h1 id="what-is-eda">What is EDA?</h1>
<p>Exploratory Data Analysis (EDA) is the process of analyzing datasets
to:</p>
<ul>
<li><p>Understand their structure and characteristics.</p></li>
<li><p>Identify relationships between variables.</p></li>
<li><p>Detect anomalies and outliers.</p></li>
<li><p>Formulate hypotheses for further analysis.</p></li>
</ul>
<p>EDA bridges the gap between raw data and statistical modeling, making
it an essential step in any data-driven project.</p>
<h1
id="project-tittle-explore-the-insight-of-survival-rate-of-titanic-passengers">Project
Tittle: Explore the Insight of Survival rate of Titanic Passengers</h1>
<h1 id="project-description">Project Description</h1>
<p><a
href="https://drive.google.com/file/d/18T76pbT6-ornJncvPO4Jb5CKccTgZy3u/view?usp=sharing">Click-here</a></p>
<h1 id="project-asking">Project Asking: </h1>
<p> <strong>What was the survival rate of men and women?</strong></p>
<ul>
<li><p><em>Hypothesis</em>: <strong>The survival rate for women is
significantly higher than that of men.</strong></p></li>
</ul>
<p> <strong>Did passengers in first class have a higher survival rate
than those in second and third class?</strong></p>
<ul>
<li><p><em>Hypothesis</em>: <strong>Passengers in first class had a
significantly higher survival rate compared to those in second and third
class.</strong></p></li>
</ul>
<p> <strong>Did age play a role in survival rate?</strong></p>
<ul>
<li><p><em>Hypothesis</em>: <strong>Younger passengers had a higher
survival rate compared to older passengers.</strong></p></li>
</ul>
<p> <strong>Did having family members on board affect a passenger's
survival rate?</strong></p>
<ul>
<li><p><em>Hypothesis</em>: <strong>Passengers who had family members on
board were more likely to survive compared to those traveling
alone.</strong></p></li>
</ul>
<p> <strong>Were passengers with a higher fare more likely to
survive?</strong></p>
<ul>
<li><p><em>Hypothesis</em>: <strong>Passengers who paid higher fares had
a significantly higher survival rate.</strong></p></li>
</ul>
<p> <strong>Did the location of the passenger's cabin affect their
survival rate?</strong></p>
<ul>
<li><p><em>Hypothesis</em>: <strong>The location of the passenger’s
cabin significantly influenced their survival rate.</strong></p></li>
</ul>
<h1 id="titanic-data-set-link">Titanic Data set link</h1>
<p><a
href="https://drive.google.com/file/d/1DU_ybzFxkHFeG-khEG-jDr5rJ2BD4Njf/view?usp=sharing">Click
to download</a></p>
<h1
id="exploratory-data-analysis-eda-for-discovering-the-insight-of-survival-rate-of-titanic-passengers">Exploratory
Data Analysis (EDA) for discovering the insight of Survival rate of
Titanic passengers:</h1>
<h1 id="step-1-data-quality-analysis"><u>Step-1: Data Quality
Analysis</u></h1>
<h1 id="missing-value-analysis">Missing value Analysis</h1>
<p>(Missing values are data points that are absent or unavailable in a
dataset. They are the silent disruptors that can undermine the integrity
and accuracy of data analysis. These gaps in data can arise from various
reasons, including data entry errors, equipment malfunctions,
participant non-response, or accidental data loss.)</p>
<h2 id="installing-relevant-packages">#installing relevant
packages:</h2>
<p><strong>Amelia</strong> is a package for missing data imputation.
However, <strong>tidyverse</strong> is not just a package — it is a
collection of packages for performing various data analysis as well as
visualization tasks. Once installed, tidyverse comes along with about
eight packages — <strong>dplyr, readr, tidyr, purr, ggplot2, tibble,
stringr, and forcats</strong>.</p>
<h2 id="identifying-missing-values">Identifying missing values</h2>
<blockquote>
<p>#loading titanic dataset in R studio</p>
<p>titanic&lt;-read.csv("E:/data analysis/projects/EDA/data set/titanic
complete data.csv")</p>
<p>#replace missing values of character variable by NA</p>
<p>titanic&lt;- titanic %&gt;% mutate_all(~replace(., . == "", NA))</p>
<p>missmap(titanic,col=c("red","green"))</p>
<p>sum(is.na(titanic))</p>
</blockquote>
<p><img src="media/image1.png"
style="width:7.54839in;height:2.52143in" /></p>
<ul>
<li><p><strong>There are 3869 missing values in multiple columns of the
dataset which is 21% of total data.</strong></p></li>
</ul>
<h2 id="significance-of-missing-values">Significance of missing
values:</h2>
<p><img src="media/image2.png"
style="width:4.95487in;height:2.48194in" /></p>
<p>The significance of missing values can be assessed by looking at the
proportion of missing data in each column. From the map, we can
observe:</p>
<ul>
<li><p><strong>High Missingness:</strong> Columns like body, cabin,
boat, home.dest have a significant proportion of missing values,
indicating that a large amount of data is missing for these
variables.</p></li>
<li><p><strong>Moderate Missingness:</strong> Columns like age, embarked
and fare have a moderate number of missing values, suggesting that a
substantial amount of data is still available for these variables, but
some analysis might be affected.</p></li>
<li><p><strong>Low Missingness:</strong> Most other columns, such as
ticket, parch, sibsp, sex, name, survived, and pclass, have very few or
no missing values, indicating that these variables have complete or
near-complete data.</p></li>
</ul>
<p><strong>Overall, the missing values in the dataset are significant,
particularly for the columns with high missingness. This could
potentially impact the analysis and modeling if not handled
appropriately.</strong></p>
<h2 id="handling-missing-values">Handling missing values:</h2>
<h3 id="body-mostly-missing">body (mostly missing):</h3>
<ul>
<li><p>This column may not be informative for predictive modeling or
analysis because it is largely missing.</p></li>
<li><p><strong>Action:</strong> Drop this column</p></li>
</ul>
<blockquote>
<p>titanic &lt;- titanic[, !names(titanic) %in% "body"]</p>
</blockquote>
<h3 id="cabin-mostly-missing"> cabin (mostly missing):</h3>
<ul>
<li><p>Cabin information is categorical and has significant missing
data.</p></li>
<li><p><strong>Action:</strong></p>
<ul>
<li><p>extract the deck information (the first letter of the cabin) to a
new column cabin_deck since decks can represent the cabin's location and
proximity to lifeboats.<br />
titanic$cabin_deck &lt;- substr(titanic$cabin, 1, 1)</p></li>
<li><p>Handle Missing Values in cabin_deck Missing values in the cabin
variable could represent passengers without an assigned cabin (likely
lower-class passengers). These can be categorized as "Unknown".<br />
titanic$cabin_deck[is.na(titanic$cabin_deck)] &lt;- "Unknown"</p></li>
<li><p>Now drop down the cabin column<br />
titanic &lt;- titanic[, !names(titanic) %in% "cabin"]</p></li>
</ul></li>
</ul>
<h3 id="boat-some-missing"> boat (some missing):</h3>
<ul>
<li><p>This column might indicate whether a passenger had access to a
lifeboat.</p></li>
<li><p><strong>Action:</strong> Replace missing values with "No" to
indicate no lifeboat was assigned:</p></li>
</ul>
<blockquote>
<p>titanic$boat[is.na(titanic$boat)] &lt;- "No"</p>
</blockquote>
<h3 id="home.dest-some-missing">Home.dest (some missing)</h3>
<ul>
<li><p>this variable is not relevant to our analysis.</p></li>
<li><p><strong>Action:</strong> Drop this column</p></li>
</ul>
<blockquote>
<p>titanic&lt;-titanic[,!names(titanic) %in% "home.dest"]</p>
</blockquote>
<h3 id="age-some-missing"> age (some missing):</h3>
<ul>
<li><p>Age is numeric, and imputing it is crucial for analysis.</p></li>
<li><p><strong>Action:</strong></p></li>
</ul>
<ul>
<li><p>fills in missing ages in the titanic dataset by replacing them
with the average(mean) age of passengers in the same passenger
class.</p></li>
</ul>
<p>titanic &lt;- titanic %&gt;%group_by(pclass) %&gt;% mutate(age =
ifelse(is.na(age), mean(age, na.rm = TRUE), age))</p>
<h3 id="embarked-few-missing"> embarked (few missing):</h3>
<ul>
<li><p>Since this is a categorical variable, impute the mode (most
frequent value):</p></li>
</ul>
<ul>
<li><p><strong>Action:<br />
</strong>calculate mode value of and then replace NA by the calculated
value.</p></li>
</ul>
<blockquote>
<p>#evaluate mode of embarked column</p>
<p>mode_embarked&lt;-names(which.max(table(titanic$embarked)))</p>
<p>#replace NA by mode_embarked</p>
<p>titanic$embarked[is.na(titanic$embarked)] &lt;- mode_embarked</p>
</blockquote>
<h3 id="fare-very-few-missing"> fare (very few missing):</h3>
<ul>
<li><p>Since fare is numeric, impute with the median:</p></li>
</ul>
<blockquote>
<p><strong>Action:</strong> replace NA by median value of fare</p>
<p>titanic$fare[is.na(titanic$fare)] &lt;- median(titanic$fare, na.rm =
TRUE)</p>
</blockquote>
<p><strong>well done! Finally we handled missing values . now lets have
a look at the missingness map:</strong></p>
<blockquote>
<p>missmap(titanic,col=c("red","green"))</p>
</blockquote>
<p><img src="media/image3.png"
style="width:6.27672in;height:3.92636in" /></p>
<h1 id="outlier-analysis">Outlier Analysis:</h1>
<h2 id="identifying-outliers">Identifying outliers</h2>
<blockquote>
<p>&gt;plot.new()</p>
<p>&gt; par(mar=c(2,2,2,2))</p>
<p>&gt; boxplot(titanic$age,main="boxplot of Age")</p>
<p>&gt; boxplot(titanic$fare,main="boxplot of Fare")</p>
<p>&gt; boxplot(titanic$sibsp,main="boxplot of sibsp")</p>
<p>&gt; boxplot(titanic$parch,main="boxplot of parch")</p>
<p><strong>output</strong></p>
<p><img src="media/image4.jpeg"
style="width:1.78442in;height:3.1503in" /><img src="media/image5.png"
style="width:4.18501in;height:3.06528in" /><img src="media/image6.jpeg"
style="width:5.62932in;height:3.24375in" /></p>
</blockquote>
<ul>
<li><p><strong>Interpretation:</strong></p></li>
</ul>
<p>Looking at the box plots, we can identify potential outliers in the
following variables:</p>
<h3 id="age"> Age:</h3>
<ul>
<li><p>There are a few outliers on the higher end of the age
distribution. These could be older passengers who were on the
Titanic.</p></li>
</ul>
<h3 id="parch-number-of-parentschildren-aboard"> parch (Number of
Parents/Children Aboard):</h3>
<ul>
<li><p>There are several outliers on the higher end of the parch
distribution. This indicates that some passengers were traveling with a
large number of family members.</p></li>
</ul>
<h3 id="fare"> Fare:</h3>
<ul>
<li><p>There are several outliers on the higher end of the fare
distribution. This suggests that some passengers paid significantly
higher fares for their tickets.</p></li>
</ul>
<h3 id="sibsp-number-of-siblingsspouses-aboard"> sibsp (Number of
Siblings/Spouses Aboard):</h3>
<ul>
<li><p>There are a few outliers on the higher end of the sibsp
distribution. This indicates that some passengers were traveling with a
large number of siblings or spouses.</p></li>
</ul>
<h2 id="impact-of-outlier-on-analysis">Impact of outlier on
Analysis:</h2>
<p>Outliers can potentially affect the analysis in various ways:</p>
<ul>
<li><p><strong>Mean and Standard Deviation:</strong> Outliers can
significantly impact the mean and standard deviation, leading to
misleading conclusions about the central tendency and variability of the
data.</p></li>
<li><p><strong>Correlation Analysis:</strong> Outliers can distort the
correlation between variables, potentially leading to spurious
correlations.</p></li>
<li><p><strong>Regression Analysis:</strong> Outliers can affect the
regression line and the model's overall fit.</p></li>
<li><p><strong>Data Visualization:</strong> Outliers can make it
difficult to visualize the distribution of the data and identify
patterns.</p></li>
</ul>
<h2 id="handling-outliers">Handling Outliers:</h2>
<p>treatment of the outlier data according to the project research
questions:</p>
<h3 id="age-1">Age</h3>
<ul>
<li><p><strong>Research Question:</strong> <em>Did age play a role in
survival rate?</em></p>
<ul>
<li><p><strong>Action:</strong> Retain the outliers since older
passengers may provide valuable insights into survival trends.</p></li>
</ul></li>
</ul>
<h3 id="fare-1">Fare</h3>
<ul>
<li><p><strong>Research Question:</strong> <em>Were passengers with a
higher fare more likely to survive?</em></p></li>
</ul>
<p><strong>Analyzing Outliers in</strong> Fare</p>
<blockquote>
<p><strong>Characteristics of Fare Outliers</strong>:</p>
</blockquote>
<ul>
<li><p>Fare has several extreme values on the higher end (as seen in the
boxplot).</p></li>
<li><p>These extreme values may represent wealthier passengers who
booked luxury accommodations.</p></li>
<li><p>Removing these outliers might result in losing valuable
information related to survival.</p></li>
</ul>
<ul>
<li><p><strong>Action:</strong> handling fare by categorizing</p></li>
</ul>
<blockquote>
<p>titanic$fare_group &lt;-
cut(titanic$fare,breaks=c(0,10,20,50,100,Inf),labels=c("lowest","lower
middle","upper middle","higher","highest"),right=TRUE)</p>
<p><img src="media/image7.png"
style="width:6.45841in;height:0.77322in" /></p>
</blockquote>
<h3 id="parch-and-sibsp-number-of-siblingsspouses-aboard">Parch and
SibSp (Number of Siblings/Spouses Aboard)</h3>
<ul>
<li><p><strong>Research Question:</strong> <em>Did having family members
on board affect a passenger's survival rate</em></p></li>
<li><p><strong>Research Question:</strong> <em>Did having family members
on board affect a passenger's survival rate?</em></p></li>
</ul>
<blockquote>
<p><em>Note: pacrh variable represent Represents the number of parents
or children traveling with a passenger on the Titanic. And the variable
sibsp Represents the number of siblings (brothers, sisters) or spouses
traveling with a passenger on the Titanic. <strong><br />
</strong>e.g: A passenger with parch = 2 and sibsp = 1: this indicate:
Traveling with two parents/children and one sibling/spouse.</em></p>
</blockquote>
<ul>
<li><p><strong>Action:</strong> consider grouping large values into a
single category.</p></li>
</ul>
<ul>
<li><p>Grouping parch and sibsp into Categories</p></li>
</ul>
<p>We can create a new categorical variable to group the parch and sibsp
values into meaningful categories, such as:</p>
<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr>
<th><blockquote>
<p><strong>parch</strong></p>
</blockquote></th>
<th><strong>sibsp</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td><ul>
<li><p>0: No parents/children aboard</p></li>
</ul></td>
<td>0: no siblings or spouses</td>
</tr>
<tr>
<td><ul>
<li><p>1: Small families (1 parent/child aboard)</p></li>
</ul></td>
<td>1or 2: small</td>
</tr>
<tr>
<td><ul>
<li><p>2: Medium families (2 parents/children aboard)</p></li>
</ul></td>
<td>3or 4: medium</td>
</tr>
<tr>
<td><ul>
<li><p>3 or more: Large families (3 or more parents/children
aboard)</p></li>
</ul></td>
<td>5 or more: large</td>
</tr>
</tbody>
</table>
<p>#handling parch by categorizing</p>
<p>titanic$parch_group&lt;-cut(titanic$parch,breaks=c(-1,0,1,2,Inf),levels=c("none","small","medium","large"),right=TRUE)</p>
<p>#handling sibsp by categorizing</p>
<p>titanic$sibsp_group&lt;-cut(titanic$sibsp,breaks =
c(-1,0,2,4,Inf),labels=c("none","small","medium","large"),right=TRUE)</p>
<p>check the distribution of the new grouped variable:</p>
<p><img src="media/image8.png"
style="width:2.99107in;height:0.78592in" /><img src="media/image9.png"
style="width:3.02682in;height:0.7453in" /></p>
<h1 id="step-2-descriptive-analysis"><br />
<u>Step-2: Descriptive Analysis</u></h1>
<h2 id="basic-statistics">Basic Statistics</h2>
<h3 id="for-numerical-variables">For Numerical Variables: </h3>
<blockquote>
<p># Generate summary statistics for numerical variables</p>
<p>summary(titanic[, sapply(titanic, is.numeric)])</p>
<p><img src="media/image10.png"
style="width:5.86471in;height:2.20936in" /></p>
</blockquote>
<p><span id="_Toc185326767" class="anchor"></span><strong>Summary of Key
Numeric Variables</strong></p>
<table>
<colgroup>
<col style="width: 12%" />
<col style="width: 9%" />
<col style="width: 17%" />
<col style="width: 11%" />
<col style="width: 11%" />
<col style="width: 18%" />
<col style="width: 11%" />
<col style="width: 7%" />
</colgroup>
<thead>
<tr>
<th style="text-align: center;"><strong>Variable</strong></th>
<th style="text-align: center;"><strong>Min</strong></th>
<th style="text-align: center;"><strong>1st Quartile</strong></th>
<th style="text-align: center;"><strong>Median</strong></th>
<th style="text-align: center;"><strong>Mean</strong></th>
<th style="text-align: center;"><strong>3rd Quartile</strong></th>
<th style="text-align: center;"><strong>Max</strong></th>
<th style="text-align: center;"><strong>NA's</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>pclass</strong></td>
<td>1.000</td>
<td>2.000</td>
<td>3.000</td>
<td>2.295</td>
<td>3.000</td>
<td>3.000</td>
<td>1</td>
</tr>
<tr>
<td><strong>survived</strong></td>
<td>0.000</td>
<td>0.000</td>
<td>0.000</td>
<td>0.382</td>
<td>1.000</td>
<td>1.000</td>
<td>1</td>
</tr>
<tr>
<td><strong>age</strong></td>
<td>0.1667</td>
<td>22.000</td>
<td>26.000</td>
<td>29.3482</td>
<td>37.000</td>
<td>80.000</td>
<td>1</td>
</tr>
<tr>
<td><strong>sibsp</strong></td>
<td>0.000</td>
<td>0.000</td>
<td>0.000</td>
<td>0.4989</td>
<td>1.000</td>
<td>8.000</td>
<td>1</td>
</tr>
<tr>
<td><strong>parch</strong></td>
<td>0.000</td>
<td>0.000</td>
<td>0.000</td>
<td>0.385</td>
<td>0.000</td>
<td>9.000</td>
<td>0</td>
</tr>
<tr>
<td><strong>fare</strong></td>
<td>0.000</td>
<td>7.896</td>
<td>14.454</td>
<td>33.267</td>
<td>31.275</td>
<td>512.329</td>
<td>0</td>
</tr>
</tbody>
</table>
<p><span id="_Toc185326768"
class="anchor"></span><strong>Insights:</strong></p>
<ol type="1">
<li><p><strong>pclass</strong>: Most passengers are in <strong>3rd
class</strong> (Median = 3).</p></li>
<li><p><strong>survived</strong>: Median and 1st Quartile survival
values are <strong>0</strong>, indicating most passengers did not
survive.</p></li>
<li><p><strong>age</strong>: The mean age is <strong>29.35</strong>,
while the youngest passenger is 0.17 years and the oldest is 80
years.</p></li>
<li><p><strong>sibsp</strong>: Most passengers had <strong>0
siblings/spouses</strong> onboard.</p></li>
<li><p><strong>parch</strong>: The median is 0, suggesting many
passengers did not travel with parents/children.</p></li>
<li><p><strong>fare</strong>: Fare values are skewed, with the mean at
<strong>33.27</strong> but the 3rd quartile far lower at
<strong>31.28</strong>. Maximum fare reaches
<strong>512.33</strong>.</p></li>
</ol>
<h3 id="for-categorical-variables">For Categorical Variables</h3>
<blockquote>
<p>To count the occurrences of each category:</p>
<p>#frequency table for categorical var</p>
<p>table(titanic$sex)</p>
<p>table(titanic$pclass)</p>
<p>table(titanic$survived)</p>
<p>table(titanic$sibsp)</p>
<p>table(titanic$parch)</p>
<p>table(titanic$embarked)</p>
<p>table(titanic$boat)</p>
<p>table(titanic$cabin_deck)</p>
<p>table(titanic$fare_group)</p>
<p>table(titanic$parch_group)</p>
<p>table(titanic$sibsp_group)</p>
<p><strong>Output</strong></p>
<p><img src="media/image11.png"
style="width:3.21229in;height:3.61071in" /></p>
<p><img src="media/image12.png"
style="width:5.3989in;height:4.98929in" /></p>
</blockquote>
<h2 id="visual-distribution-of-data">Visual Distribution of Data<br />
</h2>
<h3 id="age-2">Age</h3>
<p>&gt; hist(titanic$age, main = "Histogram of Age", xlab = "Age", col =
"lightblue", breaks = 20)</p>
<p><img src="media/image13.png"
style="width:3.96677in;height:3.23872in" /></p>
<p>#density of age</p>
<p>plot(density(titanic$age, na.rm = TRUE), main = "Density Plot of
Age", xlab = "age", col = "blue")</p>
<p><img src="media/image14.png"
style="width:5.10128in;height:2.94085in" /></p>
<h3 id="fare-2">Fare</h3>
<p>hist(titanic$fare, main = "Fare Distribution", xlab = "Fare", col =
"orange", breaks = 20)</p>
<p><img src="media/image15.png"
style="width:4.32619in;height:3.16487in" /></p>
<p>#Log Transformation Histogram: since fare is heavily skewed</p>
<p>hist(log1p(titanic$fare), main = "Log Transformed Fare Distribution",
xlab = "Log(Fare)", col = "purple", breaks = 20)</p>
<p><img src="media/image16.png"
style="width:3.81399in;height:2.79016in" /></p>
<p><strong>#faregroup</strong></p>
<p>barplot(table(titanic$fare_group), main = "Fare distribution
'Barplot' ", xlab = "Fare range", ylab = "Frequency", col =
c("cyan"))</p>
<p>percentagefare=round(
(100*table(titanic$fare_group))/sum(table(titanic$fare_group)),1 )</p>
<p>pie(table(titanic$fare_group),main="pie chart of Fare
class",col=c("pink",
"lightblue","cyan","green","magenta"),labels=paste0(names(table(titanic$fare_group)),"(",percentagefare,"%)"))</p>
<p><img src="media/image17.png"
style="width:3.49082in;height:2.59385in" /></p>
<p><img src="media/image18.png"
style="width:3.42242in;height:2.775in" /></p>
<h3
id="sibsp-number-of-siblingsspouses-aboard-and-parch-number-of-parentschildren-aboard">sibsp
(Number of Siblings/Spouses Aboard) and parch (Number of
Parents/Children Aboard):</h3>
<p>barplot(table(titanic$sibsp), main = "Siblings/Spouses Aboard", xlab
= "Number", ylab = "Frequency", col = "lightpink")</p>
<p>barplot(table(titanic$parch), main = "Parents/Children Aboard", xlab
= "Number", ylab = "Frequency", col = "lightblue")</p>
<p>percentagesibsp=round(
(100*table(titanic$sibsp_group))/sum(table(titanic$sibsp_group)),1 )</p>
<p>pie(table(titanic$sibsp_group),main="pie chart of
siblings/spouses",col=c("pink",
"lightblue","orange","cyan"),labels=paste0(names(table(titanic$sibsp_group)),"(",percentagesibsp,"%)"))</p>
<p>percentageparch=round(
(100*table(titanic$parch_group))/sum(table(titanic$parch_group)),1 )</p>
<p>pie(table(titanic$parch_group),main="pie chart of
parents/children",col=c("pink",
"lightblue","orange","cyan"),labels=paste0(names(table(titanic$parch_group)),"(",percentageparch,"%)"))</p>
<p><img src="media/image19.png"
style="width:3.47576in;height:2.80595in" /><img src="media/image20.png"
style="width:3.18435in;height:2.84093in" /></p>
<p><img src="media/image21.png"
style="width:2.84338in;height:2.06716in" /><img src="media/image22.png"
style="width:3.49785in;height:2.11319in" /></p>
<h3 id="sex">Sex</h3>
<p>percentage=round( (100*table(titanic$sex))/sum(table(titanic$sex)),1
)</p>
<p>pie(table(titanic$sex),main="pie chart of
Gender",labels=paste0(names(table(titanic$sex)),"(",percentage,"%)"))</p>
<p>barplot(table(titanic$sex), main = "Gender Distribution", xlab =
"Gender", ylab = "Frequency", col = c("pink", "lightblue"))</p>
<p><img src="media/image23.png"
style="width:2.76097in;height:2.37924in" /><img src="media/image24.png"
style="width:3.69071in;height:2.35486in" /></p>
<h3 id="pclass">Pclass</h3>
<p>barplot(table(titanic$pclass), main = "passenger class Distribution",
xlab = "1=1st class , 2= 2nd class , 3=3rd class", ylab = "Frequency",
col = c("cyan"))</p>
<p>pie(table(titanic$pclass),main="pie chart of Passenger
class",col=c("pink",
"lightblue","cyan"),labels=paste0(names(table(titanic$pclass)),"(",percentagepclass,"%)"))</p>
<p><img src="media/image25.png"
style="width:3.23081in;height:2.40198in" /><img src="media/image26.png"
style="width:3.38378in;height:2.40744in" /></p>
<h3 id="embarked">Embarked</h3>
<p>barplot(table(titanic$embarked), main = "emberk Distribution", xlab
="emberked port", col = c("cyan"))</p>
<p>percentageembarked=round(
(100*table(titanic$embarked))/sum(table(titanic$embarked)),1 )</p>
<p>pie(table(titanic$embarked),main="pie chart of embarked
port",col=c("pink",
"magenta","cyan"),labels=paste0(names(table(titanic$embarked)),"(",percentageembarked,"%)"))</p>
<p><img src="media/image27.png"
style="width:3.36845in;height:3.06956in" /><img src="media/image28.png"
style="width:3.24949in;height:3.08929in" /></p>
<h3 id="cabin_deck">Cabin_deck</h3>
<p>barplot(table(titanic$cabin_deck), main = "Cabin distribution ", xlab
= "Cabin", ylab = "Frequency", col = c("cyan"))</p>
<p>percentagecanin=round(
(100*table(titanic$cabin_deck))/sum(table(titanic$cabin_deck)),1 )</p>
<p><img src="media/image29.png"
style="width:4.22041in;height:2.80357in" /></p>
<p><img src="media/image30.png"
style="width:6.42739in;height:1.23631in" /></p>
<h3 id="survived">Survived</h3>
<p>barplot(table(titanic$survived), main = "survival overview ", xlab =
"survival stutus", ylab = "Frequency", col = c("cyan"))</p>
<p>percentagesurvived=round(
(100*table(titanic$survived))/sum(table(titanic$survived)),1 )</p>
<p>pie(table(titanic$survived),main="survived or
died",col=c("red","green"),labels=paste0(names(table(titanic$survived)),"(",percentagesurvived,"%)"))</p>
<p><img src="media/image31.png"
style="width:3.52008in;height:2.69286in" /><img src="media/image32.png"
style="width:2.65in;height:2.68542in" /></p>
<h1 id="step-3-relationship-analysis"><u>Step-3: Relationship
Analysis</u></h1>
<p>“Here we want to show how do different variables correlate with
survival rate.”</p>
<h2 id="gender-vs-survival">Gender vs Survival</h2>
<p>We can use contingecy table and bar plot to observe relationship and
use chi-square test to check statistical significance.</p>
<p># Creating a contingency table for Sex and Survival</p>
<p>table_sex_survival &lt;- table(titanic$survived, titanic$sex)</p>
<p># Calculating proportions</p>
<p>prop_table_sex &lt;- prop.table(table_sex_survival, 2) * 100</p>
<p># Generating the stacked bar plot</p>
<p>barplot(prop_table_sex, col = c("red", "green"), # Customize colors:
red for "No", green for "Yes"</p>
<p>beside = FALSE, # Stacked bars</p>
<p>main = "Survival Rate by Gender in Titanic Dataset", # Title of the
plot</p>
<p>xlab = "Gender", # Label for x-axis</p>
<p>ylab = "Survival Rate (%)", # Label for y-axis</p>
<p>ylim = c(0, 100), # Ensure y-axis is 0 to 100 for percentages</p>
<p>legend.text = c("No", "Yes"), # Add legend labels for survival</p>
<p>args.legend = list(title = "Survived", x = "topright") # Customize
legend position</p>
<p>)</p>
<p><strong>output</strong></p>
<p><img src="media/image33.png"
style="width:2.27281in;height:1.92845in" /><img src="media/image34.png"
style="width:3.7431in;height:3.26071in" /></p>
<p><strong><u>#chi-square test to check signification of association
between sex and survival</u></strong></p>
<p>chisq.test(table_sex_survival)</p>
<p><img src="media/image35.png"
style="width:7.26806in;height:1.39306in" /></p>
<p>The chi-square test evaluates whether there is a significant
association between <strong>gender</strong> and <strong>survival
rate</strong> in the Titanic dataset. Here's what the results
indicate:</p>
<ol type="1">
<li><p><strong>Chi-Square Statistic (X-squared)</strong>:</p>
<ul>
<li><p>The chi-square statistic is 363.62. A higher value indicates a
stronger association between the two variables.</p></li>
</ul></li>
<li><p><strong>Degrees of Freedom (df)</strong>:</p>
<ul>
<li><p>The degrees of freedom are 1, which corresponds to the
contingency table's dimensions (2 genders × 2 survival outcomes -
1).</p></li>
</ul></li>
<li><p><strong>P-Value (p-value &lt; 2.2e-16)</strong>:</p>
<ul>
<li><p>The p-value is <strong>extremely small</strong> (less than 0.05),
suggesting that the observed association between gender and survival is
<strong>statistically significant</strong>.</p></li>
</ul></li>
</ol>
<p><strong>Interpretation</strong></p>
<ul>
<li><p>There is a <strong>statistically significant association</strong>
between <strong>gender</strong> and <strong>survival
rate</strong>.</p></li>
<li><p>In practical terms, this means that <strong>gender likely played
a role in determining survival on the Titanic</strong>, which aligns
with historical records (e.g., women being prioritized during
evacuation).</p></li>
</ul>
<h2 id="passenger-class-vs-survival">Passenger Class vs Survival</h2>
<p>#creating continency table pclass vs survival</p>
<p>table_pclass_survival&lt;- table(titanic$survived,titanic$pclass)</p>
<p>#calculating proportions</p>
<p>prop_table_pclass_survival&lt;-prop.table(table_pclass_survival,2)*100</p>
<p># Proportional stacked bar plot for Pclass vs Survival</p>
<p>barplot(prop_table_pclass_survival,col = c("red","green"),main =
"Survival by Passenger Class (Stacked Bar Plot)",xlab = "Passenger
Class",ylab = "Survival Rate %",ylim = c(0, 100),legend
=c("no","yes"),args.legend = list(title = "Survived", x = "topright",
cex = 0.8))</p>
<p><strong>output</strong></p>
<p><img src="media/image36.png"
style="width:3.75044in;height:2.241in" /></p>
<p><img src="media/image37.png"
style="width:4.01994in;height:2.67996in" /></p>
<p><strong>#chi-square test to check significance of association between
Pclass and survival</strong></p>
<p>chisq.test(table_pclass_survival)</p>
<p><img src="media/image38.png"
style="width:4.89209in;height:1.34178in" /></p>
<p><strong>Interpretation:</strong></p>
<ol type="1">
<li><p><strong>p-value &lt; 0.05</strong>:<br />
This indicates a <strong>statistically significant association</strong>
between <strong>Passenger Class (Pclass)</strong> and <strong>Survival
Rate</strong>. Survival is not independent of passenger class.</p></li>
<li><p><strong>Insights</strong>:</p>
<ul>
<li><p>There are differences in survival rates among the three
classes.</p></li>
<li><p>Historically, <strong>1st Class passengers</strong> had better
survival chances compared to <strong>2nd</strong> and <strong>3rd
Class</strong> passengers.</p></li>
</ul></li>
</ol>
<h2 id="embarkation-port-vs-survival">Embarkation port vs survival</h2>
<p>&gt;table_embarked_survival&lt;-
table(titanic$survived,titanic$embarked)</p>
<p>&gt;prop_table_embarked_survival&lt;-prop.table(table_embarked_survival,2)*100</p>
<p>&gt;barplot(prop_table_embarked_survival,col = c("red","green"),main
= "Survival by embarked port",xlab = "embarkation port",ylab = "Survival
Rate %",ylim = c(0, 100),legend =c("no","yes"),args.legend = list(title
= "Survived", x = "topright", cex = 0.8))</p>
<p>&gt;chisq.test(table_embarked_survival)</p>
<p><strong>Output</strong></p>
<p><img src="media/image39.png"
style="width:3.35029in;height:2.06685in" /><img src="media/image40.png"
style="width:3.16845in;height:2.35921in" /></p>
<p><img src="media/image41.png"
style="width:5.23379in;height:1.37512in" /></p>
<p><strong>Interpretation:</strong></p>
<ol type="1">
<li><p><strong>p-value &lt; 0.05</strong>:<br />
This indicates a <strong>statistically significant association</strong>
between <strong>Embarked location (C, Q, S)</strong> and
<strong>Survival Rate</strong>.</p>
<ul>
<li><p>The survival rates vary depending on where passengers boarded the
Titanic.</p></li>
</ul></li>
<li><p><strong>Insights</strong>:</p>
<ul>
<li><p>Passengers who boarded at certain locations (e.g., Cherbourg
<strong>(C)</strong>) might have had higher survival rates compared to
others.</p></li>
<li><p>Differences could be due to a higher proportion of
<strong>1st-class passengers</strong> boarding at specific embarkation
points.</p></li>
</ul></li>
</ol>
<h2 id="fare-vs-survival-rate">Fare vs survival Rate</h2>
<p>&gt; table_fare_survival&lt;-
table(titanic$survived,titanic$fare_group)</p>
<p>&gt;
prop_table_fare_survival&lt;-prop.table(table_fare_survival,2)*100</p>
<p>&gt; barplot(prop_table_fare_survival,col = c("red","green"),main =
"Survival by fare group",xlab = "fare group",ylab = "Survival Rate
%",ylim = c(0, 100),legend =c("no","yes"),args.legend = list(title =
"Survived", x = "topright", cex = 0.8))</p>
<p>&gt; chisq.test(table_fare_survival)</p>
<p><strong>Output</strong></p>
<p><img src="media/image42.png"
style="width:3.43483in;height:1.95036in" /></p>
<p><img src="media/image43.png"
style="width:5.28941in;height:3.0881in" /></p>
<p>Chi-squared Test Results for Fare Categories vs Survival</p>
<ul>
<li><p><strong>X-squared</strong> = 128.6</p></li>
<li><p><strong>Degrees of Freedom (df)</strong> = 4</p></li>
<li><p><strong>p-value</strong> &lt; 2.2e-16</p></li>
</ul>
<p><strong>Interpretation:</strong></p>
<ol type="1">
<li><p><strong>p-value &lt; 0.05</strong>:<br />
There is a <strong>statistically significant association</strong>
between <strong>Fare Categories</strong> and <strong>Survival
Rate</strong>.</p>
<ul>
<li><p>Passengers who paid higher fares were more likely to survive
compared to those who paid lower fares.</p></li>
</ul></li>
<li><p><strong>Insights</strong>:</p>
<ul>
<li><p>Higher fares are often associated with <strong>1st-class
tickets</strong>, which offered better survival chances due to location,
access to lifeboats, or societal privileges.</p></li>
<li><p>Lower fare categories, likely corresponding to <strong>3rd-class
passengers</strong>, had lower survival rates.</p></li>
</ul></li>
</ol>
<h2 id="age-vs-survival">Age vs survival</h2>
<p>&gt; titanic$age_group&lt;- cut(titanic$age
,breaks=c(0,14,24,64,Inf),labels=c("Child","Youth","Adult","Senior"),right=TRUE)</p>
<p>&gt; table_age_survival&lt;-
table(titanic$survived,titanic$age_group)</p>
<p>&gt;
prop_table_age_survival&lt;-prop.table(table_age_survival,2)*100</p>
<p>&gt; barplot(prop_table_age_survival,col = c("red","green"),main =
"Survival by Age group",xlab = "Age group",ylab = "Survival Rate %",ylim
= c(0, 100),legend =c("no","yes"),args.legend = list(title = "Survived",
x = "topright", cex = 0.8))</p>
<p><strong>Output</strong></p>
<p><img src="media/image44.png"
style="width:3.43575in;height:1.90036in" /><img src="media/image45.png"
style="width:3.16873in;height:2.06071in" /></p>
<p><strong># Fisher's Exact Test with Monte Carlo simulation (since not
2by2 table)</strong></p>
<p><img src="media/image46.png"
style="width:5.82299in;height:1.23009in" /></p>
<p><strong>Interpretation of Fisher's Exact Test for Age and
Survival</strong></p>
<ol type="1">
<li><p><strong>Test Performed</strong>:</p>
<ul>
<li><p>A <strong>Fisher's Exact Test</strong> was run on the contingency
table table_age_survival with <strong>Monte Carlo simulation</strong>
(10,000 replicates) to approximate the p-value.</p></li>
</ul></li>
<li><p><strong>P-value</strong>:</p>
<ul>
<li><p>The p-value is <strong>4e-04</strong> (0.0004).</p></li>
<li><p>This is much smaller than the standard significance level
<strong>α = 0.05</strong>.</p></li>
</ul></li>
<li><p><strong>Alternative Hypothesis</strong>:</p>
<ul>
<li><p>The <strong>alternative hypothesis</strong> is
<strong>two-sided</strong>, meaning the test checks for any association
(relationship) between age groups and survival, without specifying a
direction.</p></li>
</ul></li>
</ol>
<p><strong>Conclusion:</strong></p>
<p>Since the <strong>p-value</strong> (0.0004) is <strong>less than
0.05</strong>, we <strong>reject the null hypothesis</strong>.</p>
<ul>
<li><p>This indicates that there is a <strong>statistically significant
association</strong> between <strong>Age</strong> and <strong>Survival
Rate</strong>.</p></li>
<li><p>In other words, the survival rate on the Titanic is not
independent of the passenger's age group.</p></li>
</ul>
<h2 id="cabin-vs-survival">Cabin vs survival</h2>
<p>table_cabin_survivl&lt;-table(titanic$survived,titanic$cabin_deck)</p>
<p>prop_table_cabin&lt;-prop.table(table_cabin_survivl,2)*100</p>
<p>barplot(prop_table_cabin,col=c("red","green"),main="Survial status by
cabin location",xlab="cabin location",ylab="% survival
proportion",ylim=c(0,100),legend=c("no","yes"),args.legend =
list(title="survived",x="topright",cex=0.8) )</p>
<p><strong>output</strong></p>
<p><img src="media/image47.png"
style="width:3.85545in;height:2.21963in" /></p>
<p><img src="media/image48.png"
style="width:5.10417in;height:3.04583in" /></p>
<p><strong># Fisher's Exact Test with Monte Carlo simulation (since not
2by2 table)</strong></p>
<p>fisher.test(table_cabin_survivl, simulate.p.value = TRUE, B =
10000)</p>
<p><img src="media/image49.png"
style="width:7.26806in;height:1.75694in" /></p>
<p><strong>Conclusion:</strong></p>
<p>Since the <strong>p-value</strong> (0.0001) is <strong>less than
0.05</strong>, we <strong>reject the null hypothesis</strong>.</p>
<ul>
<li><p>This indicates that <strong>there is a statistically significant
association</strong> between the Cabin categories and the survival
rate.</p></li>
</ul>
<p><strong>Insights:</strong></p>
<ul>
<li><p>Passengers <strong>cabin location</strong> may have influenced
their likelihood of survival on the Titanic.</p></li>
<li><p>Differences in cabin categories might reflect factors such as
<strong>accessibility to lifeboats, class privilege, or location on the
ship</strong>.</p></li>
</ul>
<h2 id="family-status-vs-survival">Family Status vs survival</h2>
<p>&gt; # Create a new column for Family Size</p>
<p>&gt; titanic$FamilySize &lt;- titanic$sibsp + titanic$parch + 1</p>
<p>&gt; # Create a new column to classify passengers as Alone or With
Family</p>
<p>&gt; titanic$FamilyStatus &lt;- ifelse(titanic$FamilySize == 1,
"Alone", "With Family")</p>
<p>&gt;
table_aloneornot_survival&lt;-table(titanic$survived,titanic$FamilyStatus)</p>
<p>&gt;
prop_table_aloneornot&lt;-prop.table(table_aloneornot_survival,2)*100</p>
<p>&gt; barplot(prop_table_aloneornot,col=c("red","green"),main="Survial
status by Family Stutus",xlab="Family Stutus on Ship",ylab="% survival
proportion",ylim=c(0,100),legend=c("no","yes"),args.legend =
list(title="survived",x="topright",cex=0.8) )</p>
<p><strong>output</strong></p>
<p><img src="media/image50.png"
style="width:3.06693in;height:2.10018in" /><img src="media/image51.png"
style="width:3.52881in;height:2.90301in" /></p>
<blockquote>
<p><strong># Chi-Square Test</strong></p>
<p>&gt; chisq.test(table_aloneornot_survival)</p>
<p><img src="media/image52.png"
style="width:6.29268in;height:1.40711in" /></p>
<p><strong>Interpretation</strong></p>
</blockquote>
<ul>
<li><p>The <strong>p-value</strong> is <strong>extremely small</strong>
(much smaller than the standard significance level, α=0.05\alpha =
0.05α=0.05). Since p&lt;0.05p &lt; 0.05p&lt;0.05, we <strong>reject the
null hypothesis</strong>.</p></li>
</ul>
<blockquote>
<p><strong>Conclusion</strong></p>
<p>There is a <strong>statistically significant association</strong>
between a passenger's family status (Alone vs. With Family) and their
survival.</p>
</blockquote>
<ul>
<li><p>Passengers <strong>with family members on board</strong> were
more likely to survive compared to those traveling
<strong>alone</strong>.</p></li>
</ul>
<h1 id="summary-of-the-analysis">Summary of the Analysis</h1>
<ol type="1">
<li><p><strong>Gender and Survival</strong>:<br />
Gender played a significant role in survival outcomes, with
<strong>women having a much higher survival rate</strong> compared to
men. This aligns with historical accounts of the "Women and children
first" evacuation policy, reflecting early 20th-century societal norms
of chivalry and protection.</p></li>
<li><p><span id="_Toc185326788" class="anchor"></span>Passenger Class
and Survival:<br />
Survival rates varied significantly across passenger classes, with
<strong>1st-class passengers having the highest survival rates</strong>,
followed by 2nd-class, and the lowest survival rates seen in 3rd-class.
This highlights the impact of <strong>social class</strong> on access to
lifeboats and evacuation opportunities.</p></li>
<li><p><span id="_Toc185326789" class="anchor"></span>Embarkation Port
and Survival:<br />
Passengers who embarked at <strong>Cherbourg (C)</strong> had a
relatively higher survival rate, likely due to a larger proportion of
1st-class passengers boarding at this port, reinforcing the relationship
between class and survival.</p></li>
<li><p><span id="_Toc185326790" class="anchor"></span>Fare and
Survival:<br />
Higher fares were associated with <strong>better survival
chances</strong>, as passengers who paid more were generally traveling
in <strong>1st-class cabins</strong>. These cabins provided
<strong>closer access to lifeboats</strong> and other advantages during
evacuation.</p></li>
<li><p><span id="_Toc185326791" class="anchor"></span>Age and
Survival:<br />
There was a significant association between age and survival.</p>
<ul>
<li><p><strong>Children</strong> had the highest survival rates,
consistent with the prioritization of "Women and children
first."</p></li>
<li><p><strong>Youth</strong> had intermediate survival rates,
benefiting from agility but not prioritized like children.</p></li>
<li><p><strong>Adults and seniors</strong> experienced lower survival
rates, with senior passengers likely disadvantaged by mobility
challenges and the chaotic evacuation process.</p></li>
</ul></li>
<li><p><span id="_Toc185326792" class="anchor"></span>Cabin Location and
Survival:<br />
Passengers in cabins located in the <strong>A, B, C, and D
sections</strong> had the highest survival rates, as these sections were
typically assigned to 1st-class passengers who had <strong>better
proximity to lifeboats</strong>. Lower-class cabins in the E, F, G, and
T sections, further away from the lifeboats, were associated with lower
survival rates. This highlights how <strong>social class and cabin
placement</strong> influenced survival chances.</p></li>
<li><p><span id="_Toc185326793" class="anchor"></span>Family Status and
Survival:<br />
Passengers traveling <strong>with family members</strong> had higher
survival rates compared to those traveling <strong>alone</strong>.
Support from family members during evacuation and group prioritization
likely contributed to this outcome. Passengers traveling alone faced
greater disadvantages in securing survival opportunities.</p></li>
</ol>
<h1 id="summary-of-research-questions"><strong>Summary of Research
Questions</strong></h1>
<ol type="1">
<li><p><strong>Did gender affect survival rates?</strong><br />
Yes, women had significantly higher survival rates than men due to
prioritization during the evacuation.</p></li>
<li><p><strong>Did passenger class influence survival?</strong><br />
Yes, 1st-class passengers had the highest survival rates, followed by
2nd-class and 3rd-class passengers.</p></li>
<li><p><strong>Did embarkation port impact survival?</strong><br />
Yes, passengers who embarked at Cherbourg (C) had higher survival rates,
likely due to a greater proportion of 1st-class passengers.</p></li>
<li><p><strong>Did fare price affect survival?</strong><br />
Yes, higher fare prices (associated with 1st-class tickets) were linked
to better survival outcomes.</p></li>
<li><p><strong>Did age play a role in survival?</strong><br />
Yes, children had the highest survival rates, while adults and seniors
had lower chances. Youth survival rates were intermediate.</p></li>
<li><p><strong>Did cabin location influence survival?</strong><br />
Yes, passengers in cabins closer to the lifeboat deck (A, B, C, and D
sections) had higher survival rates than those in lower sections (E, F,
G, and T).</p></li>
<li><p><strong>Did having family members on board impact
survival?</strong><br />
Yes, passengers traveling with family members had better survival rates
compared to those traveling alone.</p></li>
</ol>
<h1 id="conclusion"><strong>Conclusion</strong></h1>
<p>The Titanic disaster reflects a combination of <strong>social,
demographic, and situational factors</strong> that influenced survival
rates. Gender, class, age, fare price, family status, and cabin location
all played significant roles in determining who survived. The findings
align with historical accounts, highlighting societal norms and
inequalities of the early 20th century. This analysis underscores the
importance of <strong>social structure and accessibility</strong> during
crises, providing valuable lessons for understanding and mitigating
disparities in modern-day disasters.</p>
<h1 id="r-script-download-link">R Script download link</h1>
<p><a
href="https://drive.google.com/file/d/1n-GHzm5aN8b_G1N4ast8UnNnsCKK-Oom/view?usp=drive_link">Click
to download</a></p>
<h1 id="pdf-file-download-link">pdf file download link </h1>
<p><a
href="https://drive.google.com/file/d/1tfn5yPra3QQmYyXH8efPj_uKTKM4hNG4/view?usp=sharing">Click
to download</a></p>
<p>THANK you</p>
