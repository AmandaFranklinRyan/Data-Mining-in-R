library(rvest)
library(tidyverse)
library(here)

#----- Creates a Section
# Gives a menu on the right

# here::here("folder","subfolder',"file.***")
# stops confusion over different file navigation systems between Mac and Windows
# Can create folders manually or using the here libraru
# Can use to load data

getwd()

url <- "https://www.unilu.ch/studium/studienangebot/master/kultur-und-sozialwissenschaftliche-fakultaet/"

read_html(url) %>% 
  html_elements(css=".text") %>% 
  html_text()

# Two types of vectors in R, atomic and lists
# [[]] indicates list and can contain all types of data e.g. dataframe, logical etc.
# in co,puter science qrrqys qre called tensors e;g position, luminosity
# Lists, dataframes are heterogeneous while vectors, matrices and arrays are not
# Dataframe is contained in base R, but tibble is in tidyverse, slight i,provement in visualisation

# Lists and Vectors ----
# List includes both content and a container
# A list could contain multiple lists
# my_vec <- vector(mode, length)

a <- vector(length=3, mode= "numeric") # create a numeric vector
b <- vector(length=3, mode="list") # create a list

# ---- Subsetting vectors
#[[]] and [] work with vectors
# $ only works with list

# in R then 1 is the first one
# Can extract columns using the $ operator
# Can use this with table() to get a frequency table
# dataframe[rows, columns] can use names of positions can also add more dimensions
# Use single brackets and get dataframe
# Use double brackets and treats the dataframe as a  list, it takes only one dimension and returns
# an atomic vector, could also put the name of the column in quotes
# If scraping Twitter accounts then create the vector first and don't try to expand...

# ---- Version Control
# When do a commit, take a snapshot of the whole project at that time, each commit has an identifying code
