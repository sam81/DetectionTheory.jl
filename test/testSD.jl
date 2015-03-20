using Base.Test, SDT, HDF5

testType = "short"

if testType == "short"
    PH = [0.01:0.01:0.99]
    PF = [0.01:0.01:0.99]
elseif testType == "long"
    PH = [0.001:0.001:0.999]
    PF = [0.001:0.001:0.999]
end


nPH = length(PH); nPF = length(PF); nTot=nPH*nPF
dpIO = zeros(nTot)
dpDiff = zeros(nTot)
PHList = zeros(nTot)
PFList = zeros(nTot)
cnt = 0
for i=1:nPH
    thisPH = PH[i]
    for j=1:nPF
        thisPF = PF[j]
        cnt = cnt+1

        PHList[cnt] = thisPH
        PFList[cnt] = thisPF
        if thisPH >= thisPF
            dpIO[cnt] = dprimeSD(thisPH, thisPF, "IO")
            dpDiff[cnt] = dprimeSD(thisPH, thisPF, "diff")
        elseif thisPH < thisPF
            dpIO[cnt] = - dprimeSD(thisPF, thisPH, "IO")
            dpDiff[cnt] = - dprimeSD(thisPF, thisPH, "diff")
        end
    end     
end

fid = h5open("table_SD.h5", "r")

psi_dp_IO = read(fid["dpIO"])
psi_dp_diff = read(fid["dpDiff"])

## maximum(abs(dpDiff .- psi_dp_diff))
## find(abs(dpDiff .- psi_dp_diff) .== maximum(abs(dpDiff .- psi_dp_diff)))
## find(abs(dpIO .- psi_dp_IO) .== maximum(abs(dpIO .- psi_dp_IO)))

@test_approx_eq_eps(dpIO, psi_dp_IO, 1e-4)
@test_approx_eq_eps(dpDiff, psi_dp_diff, 1e-4)

## for i=1:length(nTot)
##     @test abs(dpIO[i] - psi_dp_IO[i]) < 1e-4
##     @test abs(dpDiff[i] - psi_dp_diff[i]) < 1e-4
## end
#@test isequal(round(dpIO,6), round(psi_dp_IO, 6))
#@test isequal(round(dpDiff,6), round(psi_dp_diff, 6))
