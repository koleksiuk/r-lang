result_mean <- tapply(ToothGrowth$len, ToothGrowth$supp, mean)
result_variance <- tapply(ToothGrowth$len, ToothGrowth$supp, var)
