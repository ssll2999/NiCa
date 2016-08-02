#!/usr/bin/env sh

# MNIST
dat_typ=mnist
cls=10

cp prototxt/lenet_solver_svrg.prototxt prototxt/${dat_typ}_lenet_solver_svrg.prototxt
sed -i 's/lenet_model/'${dat_typ}'_lenet_model/g' prototxt/${dat_typ}_lenet_solver_svrg.prototxt
cp prototxt/lenet_model.prototxt prototxt/${dat_typ}_lenet_model.prototxt
sed -i 's/NUMOFOUTPUT/'$cls'/g' prototxt/${dat_typ}_lenet_model.prototxt
#echo "Ngaam: `date "+%Y-%m-%d %H:%M:%S"`"

rm log/${dat_typ}_lenet_svrg.log
start=`date +%s`
ls -al >/dev/null 2>&1
../build/tools/caffe train  --gpu=7 --solver=prototxt/${dat_typ}_lenet_solver_svrg.prototxt 2>&1| less | tee log/${dat_typ}_lenet_svrg.log
end=`date +%s`
dif=`expr $end - $start`
echo "Time: $dif" >> log/${dat_typ}_lenet_svrg.log
cat log/${dat_typ}_lenet_svrg.log | grep Test | grep accuracy | awk '{print $11*100}' > log/${dat_typ}_lenet_svrg_acc.dat
cat log/${dat_typ}_lenet_svrg.log | grep Test | grep loss | awk '{print $11}' > log/${dat_typ}_lenet_svrg_loss.dat

sed '1d' log/${dat_typ}_lenet_svrg_acc.dat > log/${dat_typ}_lenet_svrg_acc_t.dat
mv log/${dat_typ}_lenet_svrg_acc_t.dat log/${dat_typ}_lenet_svrg_acc.dat


gnuplot << EOF
    set term png transparent enhanced size 800,800 font "Vera,24"
    set size square
    set grid

    set palette defined ( 0 '#F7FCFD',\
                          1 '#E0ECF4',\
                          2 '#BFD3E6',\
                          3 '#9EBCDA',\
                          4 '#8C96C6',\
                          5 '#8C6BB1',\
                          6 '#88419D',\
                          7 '#6E016B' )
#    set view map
    set xtics font "Vera,18"
    set ytics font "Vera,18"
#    set cbtics font "Vera,32"
#    set xrange [0:$nres]
#    set yrange [0:$nres]
    set xlabel "Echo"
    set ylabel "Accuracy (%)"

    set output 'fig/${dat_typ}_lenet_svrg_acc.png
    plot 'log/${dat_typ}_lenet_svrg_acc.dat' u 1 with linespoints pointtype 7 notitle
#    splot 'HB.par' matrix lt palette pt 5 ps 2.5 notitle
EOF


rm prototxt/${dat_typ}_lenet_solver_svrg.prototxt
rm prototxt/${dat_typ}_lenet_model.prototxt

