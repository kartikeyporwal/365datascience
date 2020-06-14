
# Load the two data sets into R: "skew_1.csv", and "skew_2.csv". 
# Identify the skew of the data sets, both visually, and numerically. 
# Try to interpret what you are seeing.

### Visual examination of the skew

sk1 <- read_csv("skew_1.csv")
sk2 <- read_csv("skew_2.csv")

skew1 <- ggplot(data = sk1, aes(x = `Dataset 1`))
skew1 + geom_histogram(binwidth = 100,
                       color = "darkslategray", 
                       fill = "darkslategray4", 
                       alpha = 0.5) +
  theme_light()

# The skew of this dataset is positive


skew2 <- ggplot(data = sk2, aes(x = `Dataset 2`))
skew2 + geom_histogram(binwidth = 100,
                       color = "darkslategray", 
                       fill = "darkslategray4", 
                       alpha = 0.5) +
  theme_light()

# The skew of this dataset is negative

### Numerical examination of the skew 

library(psych)

describe(sk1)
describe(sk2)

# Note: sometimes, using a graph to identify the skew can be misleading.	
# The sk2 dataset has a relatively strong negative skew ( -0.33 ). 	
# However, from a histogram with a few bins, you cannot clearly determine the skew.	
# For best results, use a more precise measure of skewness, such as R's calculations, instead of a simple graph	



