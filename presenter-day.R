# install.packages("dplyr")
library(dplyr)

# Set the random seed to make this reproducible
set.seed(1)

# Create the participants data frame
pp <- data.frame(
  numb = 1:11,
  names = c("Mathieu Pruvot",
            "Whitney Friedman",
            "April Ridlon",
            "Michael Eggen",
            "Jeremy Simmonds",
            "Jihoon Jung",
            "Dan Sousa",
            "Mireia Valle",
            "Grace Wu",
            "Marcus Thomson",
            "Hannah Fazekas"),
  stringsAsFactors = FALSE
)

# Random sampling
pps <- sample_n(pp, nrow(pp))

# Assign the day
ppf <-pps %>% mutate(pres_day = ifelse(row_number() %in% 1:6, "TUE", "WED"))

# Look at the results
print(ppf)