using Base.Test, DetectionTheory, HDF5

fName = "table_SD.h5"

gridStep = 0.01
minHR = 0; maxHR=1


HR = collect(minHR:gridStep:maxHR)
n = round(Int, length(HR)*(length(HR)+1)/2)
dp_IO_arr = zeros(n); #dp_IO_arr[1:end] = NaN
dp_diff_arr = zeros(n); #dp_diff_arr[1:end] = NaN
HR_arr = zeros(n)
FAR_arr = zeros(n)

cnt = 1
for k=1:length(HR)
    thisHR = HR[k]
    FAR = collect(minHR:gridStep:thisHR)
    for l=1:length(FAR)
        thisFAR = FAR[l]
        HR_arr[cnt] = thisHR
        FAR_arr[cnt] = thisFAR
        cnt = cnt+1
    end
end

@test dprimeSD(0.8, 0.6, "IO") == - dprimeSD(0.6, 0.8, "IO")



for i=1:length(HR_arr)
    thisHR = HR_arr[i]; thisFAR = FAR_arr[i]
    try
        dp_IO_arr[i] = dprimeSD(thisHR, thisFAR, "IO")
    catch
        dp_IO_arr[i] = NaN
    end

    try
        dp_diff_arr[i] = dprimeSD(thisHR, thisFAR, "diff")
    catch
        dp_diff_arr[i] = NaN
    end
end


fid = h5open(fName, "r")
psi_dp_IO = read(fid["dp_IO"])
psi_dp_diff = read(fid["dp_diff"])

## maximum(abs(dpDiff .- psi_dp_diff))
## find(abs(dpDiff .- psi_dp_diff) .== maximum(abs(dpDiff .- psi_dp_diff)))
## find(abs(dpIO .- psi_dp_IO) .== maximum(abs(dpIO .- psi_dp_IO)))

@test_approx_eq_eps(dp_IO_arr, psi_dp_IO, 1e-4)
@test_approx_eq_eps(dp_diff_arr, psi_dp_diff, 1e-4)

## for i=1:length(nTot)
##     @test abs(dpIO[i] - psi_dp_IO[i]) < 1e-4
##     @test abs(dpDiff[i] - psi_dp_diff[i]) < 1e-4
## end
#@test isequal(round(dpIO,6), round(psi_dp_IO, 6))
#@test isequal(round(dpDiff,6), round(psi_dp_diff, 6))
