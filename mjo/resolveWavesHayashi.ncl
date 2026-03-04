;******************************************************
; Example script for working with "resolvewaveshayashi "
;******************************************************
; These files are loaded by default in NCL V6.2.0 and newer
; load "$NCARG_ROOT/lib/ncarg/nclscripts/csm/gsn_code.ncl"   
; load "$NCARG_ROOT/lib/ncarg/nclscripts/csm/gsn_csm.ncl"    
; load "$NCARG_ROOT/lib/ncarg/nclscripts/csm/contributed.ncl"

; File with resolvewaveshayashi function loaded manually
load "$NCARG_ROOT/lib/ncarg/nclscripts/csm/diagnostics_cam.ncl"

; ------------- Setup in data -----------------------
nt = 10  ; time steps
nlon = 360 ; longitude steps

time = ispan(0, nt, 1)
lon = fspan(0, nlon, 5)

time2d = conform(new((/dimsizes(time), dimsizes(lon)/), typeof(time)), time, 0)
lon2d  = conform(new((/dimsizes(time), dimsizes(lon)/), typeof(lon)), lon, 1)

; example synthetic wave
; wave sin(2 * np.pi *      (0.1 * time[:, None] - 0.05 * lon[None, :]))
wave = sin(2 * (0.1 * time2d - 0.05 * lon2d))

wave!0 = "time"
wave!1 = "lon"

;print(wave)

; ------------- Perform 1D FFT over longitude -----------------------

x_fft = cfftf(wave, 0.0, 0)
real_fft = x_fft(0, :, :) ; real component
imga_fft = x_fft(1, :, :) ; imaginary component

; ------------- resolve Waves Hayashi -----------------------

; Use Hayashi method to resolve the real/imaginary space-time spectrum into Progressive (eastward) and retrogressive (westward) waves

x_hayashi = new((/2, dimsizes(time), dimsizes(lon) /), typeof(x_fft))

x_hayashi(0, :, :) = real_fft ; Real component
x_hayashi(1, :, :) = imga_fft ; Imaginary component
;print(x_hayashi)
printVarSummary(x_hayashi)
print(x_hayashi(0))
print(x_hayashi(1))
print(x_hayashi(2))

;dimvf = dimsizes(x_hayashi)
;mlon = dimvf(1)
;N = dimvf(2)
;varspacetime = new((/2,mlon+1,N+1/),typeof(x_hayashi),1e20)
;sprint(varspacetime)

window = 180. ; days
spd = 1.      ; daily

;power = resolveWavesHayashi(x_hayashi, window, spd)
;print(power)

; spectral density separted into seperate eastward and westward components
; 0: eastward (0) and westward (1)
; 1: wavenumber
; 2: frequency
