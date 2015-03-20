using Base.Test, SDT, HDF5

testType = "short"

if testType == "short"
    PC = [0.01:0.01:0.99]
elseif testType == "long"
    PC = [0.001:0.001:0.999]
end

nPC = length(PC)
alt = [2:1:10]
nAlt = length(alt)

dps = zeros(nAlt, nPC)

for i=1:nAlt
    for j=1:nPC
        dps[i,j] = dprimeMAFC(PC[j], alt[i])
    end
end

fid = h5open("table_mAFC.h5", "r")
psi_dp = read(fid["dp"])

@test_approx_eq_eps(dps, psi_dp, 1e-3)

