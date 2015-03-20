library(psyphy)
library(rhdf5)

unlink("table_ABX.h5")
h5createFile("table_ABX.h5")

testType = "short"

if (testType == "short"){
    PH = seq(0.01, 0.99, 0.01)
    PF = seq(0.01, 0.99, 0.01)
} else if (testType == "long"){
    PH = seq(0.001, 0.999, 0.001)
    PF = seq(0.001, 0.999, 0.001)
}


nPH = length(PH); nPF = length(PF); nTot = nPH*nPF
dpIO = numeric(nTot)
dpDiff = numeric(nTot)
cnt = 0
for (i in 1:nPH){
    thisPH = PH[i]
    for (j in 1:nPF){
        thisPF = PF[j]
        cnt = cnt+1
        if (thisPH >= thisPF){
            dpIO[cnt] = dprime.ABX(thisPH, thisPF, method="IO")
            dpDiff[cnt] = dprime.ABX(thisPH, thisPF, method="diff")
        } else {
            dpIO[cnt] = - dprime.ABX(thisPF, thisPH, method="IO")
            dpDiff[cnt] = - dprime.ABX(thisPF, thisPH, method="diff")
        }
    }
}

h5write(dpIO, "table_ABX.h5","dpIO")
h5write(dpDiff, "table_ABX.h5","dpDiff")
