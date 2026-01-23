; These files are loaded by default in NCL V6.2.0 and newer
; load "$NCARG_ROOT/lib/ncarg/nclscripts/csm/gsn_code.ncl"   
; load "$NCARG_ROOT/lib/ncarg/nclscripts/csm/gsn_csm.ncl"    
; load "$NCARG_ROOT/lib/ncarg/nclscripts/csm/contributed.ncl"

; ------------- Dummy Data -----------------------

xtime = 3
ylat = 3
zlon = 3
;input = random_uniform(-10, 10, (/ntime, nlat, mlon/))
input = new((/xtime, ylat, zlon/), float)

i = -13
do x = 0, xtime-1
	do y=0, ylat-1
		do z=0, zlon-1
			input(x, y, z) = i
			i = i + 1
		end do
	end do
end do

input!0 = "time"
input!1 = "lat"
input!2 = "lon"

wgts = (/0.25, 0.50, 0.25/)
weighted_input = wgt_runave_Wrap(input(lat|:, lon|:, time|:), wgts, 0)
printVarSummary(weighted_input)
print(weighted_input)
