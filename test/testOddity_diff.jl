using Base.Test, DetectionTheory, HDF5

gridStep = 0.01

PC = collect((1/3)+gridStep: gridStep: 1-gridStep)
nPC = length(PC)
dpOddity = zeros(nPC)

for i=1:nPC
    dpOddity[i] = dprimeOddity(PC[i], "diff")
end

fid = h5open("table_oddity.h5", "r")
psi_dp = read(fid["dp"])

@test_approx_eq_eps(dpOddity, psi_dp, 1e-4)
