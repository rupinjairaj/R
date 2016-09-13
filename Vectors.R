# 111 airplane passengers, exposed to a fewwlo passenger diagnosed with SARS
# 8 of 23 who sat close to him developed SARS
# 10 of 88 who sat far from him also developed SARS 
## VECTORS ##
case <- c(8 , 10)
names(case) <- c("exposed", "unexposed")
noncase <- c(15, 78)
names(noncase) <- c("exposed", "unexposed")
case
noncase
rbind(case, noncase)
rep("hello", 5)
# rep function repeates the 1st argument the 2nd argument number of times
outcome <- c(rep("case", 18), rep("noncase", 93))
outcome
# we can play around with the repeat function using vectors as the 1st and 2nd argument. 
## It repeates the 1st vector as many times as the corresponding 2nd vector times
tmp <- c("exposed", "unexposed")
exposure <- c(rep(tmp, c(8,10)), rep(tmp, c(15, 78)))
exposure
sars.obs <- cbind(outcome, exposure)
sars.obs
sars.obs[1:4, ]
sars.obs[, 2]
table(outcome)
table(exposure, outcome)
sars.tab <- table(sars.obs[, 1], sars.obs[, 2])
sars.tab