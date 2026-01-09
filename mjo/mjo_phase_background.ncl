;******************************************************
; Example script for working with "mjo_phase_background "
; ncl mjo_phase_background.ncl
;******************************************************
; These files are loaded by default in NCL V6.2.0 and newer
; load "$NCARG_ROOT/lib/ncarg/nclscripts/csm/gsn_code.ncl"   
; load "$NCARG_ROOT/lib/ncarg/nclscripts/csm/gsn_csm.ncl"    
; load "$NCARG_ROOT/lib/ncarg/nclscripts/csm/contributed.ncl"

; File with mjo_function loaded manually
load "$NCARG_ROOT/lib/ncarg/nclscripts/csm/diagnostics_cam.ncl"

; ------------- Plot Phase Background ------------------------

pltPath = "mjo_output/" + "mjo_phase_background"
pltType = "png" ; PNG file
pltType@wkWidth  = 1500
pltType@wkHeight = 1500

wks  = gsn_open_wks(pltType, pltPath) ; open workstation

opt = True
opt@tiMainString = "MJO Phase: 15N-15S: Start-End" ; plot title

plot = mjo_phase_background(wks, opt)      ; generic phase space background

draw(plot)
frame(wks)
