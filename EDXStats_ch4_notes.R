n <- 1940 
B0 <- -10.6513 # Coefficient intercept 
B1 <- 0.0055 # Other intercept 
top <- exp(B0 + B1 * n)
bottom <- 1 + exp(B0 + B1 * n)
top/bottom

n <- 1940
top <- exp(-10.6513 + 0.0055*n)
bottom <- 1 + exp(-10.6513 + 0.0055*n)
top/bottom

# WOBSITES
# https://www.mathsisfun.com/numbers/e-eulers-number.html

# We know that logit(.5) =  𝛽0+𝛽1 *Balance. Thus, Balance = (logit(.5) -  𝛽0 )/ 𝛽1  = (log(.5/(1-.5)) + 10.6513)/.0055 = 1936.6