set output "diff_kernels.png"
set terminal pngcairo background rgb 'white' size 1600,900
 set datafile separator ";"
set xlabel 'Temps (s)' tc rgb 'black'
set ylabel 'Nb noeuds' tc rgb 'black'
set border lc rgb 'black'
set key tc rgb 'black'
set linetype 1 lc rgb 'black'
plot 	'1p_1th_k1.csv' using 1:2  with lines title 'Kernel 1' lt rgb "blue" lw 2,\
	'1p_1th_k0.csv' using 1:2  with lines title 'Kernel 0' lt rgb "green" lw 2
