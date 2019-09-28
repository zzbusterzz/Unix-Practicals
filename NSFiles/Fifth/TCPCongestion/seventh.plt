set terminal pdf
set output "Congestion.pdf"
set title "Congestion Window Calculation"
set xlabel "Time (in sec)"
set ylabel "Congestion cwnd"
plot "seventh.cwnd" using 1:2 with lines title "Old Congestion", "seventh.cwnd" using 1:3 with lines title "New Congestion" 