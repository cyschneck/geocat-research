begin
   aangle1 = gc_aangle( (/0.0,  0.0, 0.0,  10.0/), (/0.0, 10.0, 0.0,   0.0/) )
   print (aangle1)

   aangle2 = gc_aangle( (/10.0d, 20.0d, 0.0d,  0.0d/), (/ 0.0d,  0.0d, 5.0d, 20.0d/) )
   print (aangle2)

   lat = (/ (/ 0., 0.,   0., 10.0/), (/22.,40.,  22., 10.0/), (/10.,20.,   0.,  0.0/) /)
   lon = (/ (/ 0.,10.,   0.,  0.0/), (/40.,50.,  40., 30.0/), (/ 0., 0.,   5., 20.0/) /)
   angles3 = gc_aangle(lat, lon)
   print(angles3)
end
