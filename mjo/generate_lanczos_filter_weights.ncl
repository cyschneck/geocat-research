; ncl -n generate_lanczos_filter_weights.ncl >> lanczos_filter_weights_output.txt

ihp = 2 
nWgt = 201 
sigma = 1.0
fca = 1./100.
fcb = 1./20.
wgt = filwgts_lanczos(nWgt, ihp, fca, fcb, sigma)
print(wgt)
