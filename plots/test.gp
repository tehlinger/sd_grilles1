set output "diff_kernels.png"
set terminal pngcairo background rgb 'white' size 900,600
set datafile separator ";"
set xlabel 'Temps (s)' tc rgb 'black'
set ylabel 'Nb noeuds' tc rgb 'black'
set border lc rgb 'black'
set key tc rgb 'black'
set linetype 1 lc rgb 'black'
plot 	'../data/1p_1th_k1.csv'  using 1:2  with lines title 'Kernel 1' lt rgb "blue" lw 2, \
	'../data/1p_1th_k0.csv' using 1:2  with lines title 'Kernel 0' lt rgb "green" lw 2
