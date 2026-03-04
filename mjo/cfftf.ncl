;******************************************************
; Example script for working with "cfftf"
;******************************************************
; These files are loaded by default in NCL V6.2.0 and newer
; load "$NCARG_ROOT/lib/ncarg/nclscripts/csm/gsn_code.ncl"   
; load "$NCARG_ROOT/lib/ncarg/nclscripts/csm/gsn_csm.ncl"    
; load "$NCARG_ROOT/lib/ncarg/nclscripts/csm/contributed.ncl"

; ------------- Setup in data -----------------------

x = (/ 1002, 1017, 1018, 1020, 1018, 1027, \
      1028, 1030, 1012, 1012, 982, 1012, \
      1001, 996, 995, 1011, 1027, 1025, \
      1030, 1016, 996, 1006, 1002, 982 /)
N = dimsizes(x)

cf = cfftf(x, 0.0, 0) ; imaginary component is set to 0.0
;printVarSummary(cf)

; Frequency (frq), Real Part (cf[0]), Imginary Part (cf[1])
;print(cf)

real_components = cf(0,:)
imaginary_components = cf(1,:)
frequencies = cf@frq

print(real_components)

;(0)	24265
;(1)	16.06125
;(2)	-161.8083
;(3)	26
;(4)	39.5
;(5)	-64.78089
;(6)	 1
;(7)	-32.69729
;(8)	32.5
;(9)	26
;(10)	-4.191688
;(11)	35.41693
;(12)	-43
;(13)	35.41693
;(14)	-4.191688
;(15)	26
;(16)	32.5
;(17)	-32.69729
;(18)	 1
;(19)	-64.78089
;(20)	39.5
;(21)	26
;(22)	-161.8083
;(23)	16.06125

