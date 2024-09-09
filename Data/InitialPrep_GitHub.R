# ----------------------------------------------------------------------------
# YBC Fiber study
# Initial preparatory operation. 
# Add variables and change factor names etc...
# Created 01/12/2024
# Edited 09/09/2024
# Rie Sadohara
# ----------------------------------------------------------------------------

# Load data
  fiberiron <- read.delim("YOUR_DIRECTORY/Input_txt.txt", sep="\t", header=T)

# View data format
  # str(fiberiron)
  
#######  
# Add a F, M, and S labels in a new column called "Cooking_class2".
  for(i in 1: nrow(fiberiron)){
    if(fiberiron[i, "Cooking_class"] == 1){
       fiberiron[i, "Cooking_class2"] <- "Fast"
    }else if(fiberiron[i, "Cooking_class"] == 2){
             fiberiron[i, "Cooking_class2"] <- "Moderate"
    }else if (fiberiron[i, "Cooking_class"] == 3){
              fiberiron[i, "Cooking_class2"] <- "Slow"
    }
  }  
  # head(fiberiron)
  # tail(fiberiron)
  # fiberiron[, c("Cooking_class", "Cooking_class2")]
  
#######  
# Add a "non-yellow" label in a new column called "YelloworNoyellow".
  for(i in 1:nrow(fiberiron)){
    if(fiberiron[i, "Market_class"] == "White_Beige" |
       fiberiron[i, "Market_class"] == "Brown" |
       fiberiron[i, "Market_class"] == "Red"){
      fiberiron[i, "YelloworNonYellow"] <- "Non-yellow"
    }else{
      fiberiron[i, "YelloworNonYellow"] <- fiberiron[i, "Market_class"] 
    }
  }  
  # head(fiberiron)
  # tail(fiberiron)
  # table(fiberiron$YelloworNonYellow)

    
#######  
# Add IDF/SDF ratio = "IDFtoSDF".
  fiberiron$IDFtoSDF <- fiberiron$IDF/fiberiron$SDF 
  
# Done!  
#######  
