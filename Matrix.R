## MATRIX ##
?matrix
# creating a matrix; by default it fills the matrix column wise
tab <- matrix(c("a", "b", "c", "d"), 2, 2)
# using rownames() and colnames() to define names for the matrix
rownames(tab) <- c("Exposed", "unExposed")
colnames(tab) <- c("Disease", "noDisease")
tab
# setting byrow flag as true so as to fill the matrix row wise
tab <- matrix(c("a", "b", "c", "d"), 2, 2, byrow = T)
rownames(tab) <- c("Exposed", "unExposed")
colnames(tab) <- c("Disease", "noDisease")
tab

# considering the University Group Diabetes Program. A placebo-controlled, multi-center
## randomized clinical trial establised for the efficancy of curing type 2 diabetes. 
## total of 409 patients. 204 patients received tolbutamide. 205 patients received placebo. 
## 30 of the 204 tolbutamide patients died. 21 of the placebo patients died
ugpd <- matrix(c(30, 21, 174, 184), nrow = 2, ncol = 2, byrow = T, dimnames = list(c("Exposed", "Not Exposed"), c("Disease", "No Disease")))
ugpd

# using the apply()
## 1st parameter: the matrix/table you wish to apply the operation on
## 2nd parameter: the dimension you wish to operate on (1: rows, 2: columns)
## 3rd parameter: the operation you wish to perform: sum, mean, max, min, etc...
colTotal <- apply(ugpd, 2, sum)
colTotal
risks <- ugpd[, "Disease"]/colTotal
risks
odds <- risks/(1-risks)
odds
risks.ratio <- risks/risks[2]
risks.ratio
odds.ratio <- odds/odds[2]
odds.ratio
rbind(risks, risks.ratio, odds, odds.ratio)
