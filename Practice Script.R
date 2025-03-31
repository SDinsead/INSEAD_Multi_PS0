# multivariate - normal . R
# This script generates and plots a multivariate normal distribution .
# 1. Install necessary packages if not already installed
if ( ! requireNamespace ( " MASS " , quietly = TRUE ) ) install.packages ( " MASS " )
if ( ! requireNamespace ( " ggplot2 " , quietly = TRUE ) ) install.packages ( " ggplot2 " )
# 2. Load required libraries
library ( MASS )
library ( ggplot2 )
# 3. Set seed for reproducibility
set.seed (42)
# 4. Define mean vector and covariance matrix
mu <- c (0 , 0) # Mean vector
sigma <- matrix ( c (1 , 0.5 ,
                     0.5 , 1) , 2 , 2) # Covariance matrix
# 5. Generate multivariate normal data
data <- mvrnorm ( n = 500 , mu = mu , Sigma = sigma )
# 6. Convert to a data frame for plotting
df <- data.frame ( X = data [ ,1] , Y = data [ ,2])
# 7. Plot the generated distribution
ggplot ( df , aes ( x = X , y = Y ) ) +
  geom_point ( alpha = 0.6) +
  theme_minimal () +
  ggtitle ( " Multivariate Normal Distribution " )