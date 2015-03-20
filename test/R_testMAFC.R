library(psyphy)
library(rhdf5)

unlink("table_mAFC.h5")
h5createFile("table_mAFC.h5")

testType = "short"

if (testType == "short"){
    PC = seq(0.01, 0.99, 0.01)
} else if (testType == "long"){
    PC = seq(0.001, 0.999, 0.001)
}

nPC = length(PC)
alt = seq(2, 10, 1)
nAlt = length(alt)

dps = array(dim=c(nAlt, nPC))

for (i in 1:nAlt){
    for (j in 1:nPC){
        dps[i,j] = dprime.mAFC(PC[j], alt[i])
    }
}

h5write(dps, "table_mAFC.h5","dp")
