library(psyphy)
library(rhdf5)

unlink("table_oddity.h5")
h5createFile("table_oddity.h5")

testType = "short"

if (testType == "short"){
    PC = seq((1/3)+0.01, 0.99, 0.01)
} else if (testType == "long"){
    PC = seq((1/3)+0.001, 0.999, 0.001)
}

nPC = length(PC)
dpOddity = numeric(nPC)

for (i in 1:nPC){ 
    dpOddity[i] = dprime.oddity(PC[i])
}

h5write(dpOddity, "table_oddity.h5","dp")

