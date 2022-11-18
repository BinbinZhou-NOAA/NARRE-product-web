#!/bin/ksh
set -x 

#export ymd=20220518
#export cyc=06
#export fhr=12
export run_mpi=${run_mpi:-no}

export plot_py=/lfs/h2/emc/vpppg/noscrub/Binbin.Zhou/NARRE_TL/plot_py/scripts
export narre_dir=/lfs/h1/ops/prod/com/narre/v1.2/narre.${ymd}/ensprod
export work=/lfs/h2/emc/ptmp/Binbin.Zhou/narre/plot_py/${ymd}${cyc}
mkdir -p $work
mkdir -p $work/us
mkdir -p $work/ne
mkdir -p $work/se
mkdir -p $work/mw
mkdir -p $work/ms
mkdir -p $work/nw
mkdir -p $work/sw
mkdir -p $work/zny
mkdir -p $work/zdc
mkdir -p $work/zhu
mkdir -p $work/zau
mkdir -p $work/zoa
mkdir -p $work/sco

cd $work

echo $ymd $cyc
echo $work
wgrib2=$WGRIB2

>run_narre_plot_py.sh
for fhr in 01 02 03 04 05 06 07 08 09 10 11 12 ; do
#for fhr in $fhrs ; do
  >run_narre_plot_py.f${fhr}.sh 
  echo "#!/bin/sh" >> run_narre_plot_py.f${fhr}.sh
  echo "$wgrib2 $narre_dir/narre.t${cyc}z.mean.grd130.f${fhr}.grib2 -set_grib_type c3 -grib_out $work/narre.t${cyc}z.mean_c3.grd130.f${fhr}.grib2" >> run_narre_plot_py.f${fhr}.sh
  echo "$wgrib2 $narre_dir/narre.t${cyc}z.prob.grd130.f${fhr}.grib2 -set_grib_type c3 -grib_out $work/narre.t${cyc}z.prob_c3.grd130.f${fhr}.grib2" >> run_narre_plot_py.f${fhr}.sh

  #echo ". /u/Binbin.Zhou/.bashrc" >>  run_narre_plot_py.f${fhr}.sh
  echo "python ${plot_py}/plot_narre_mean_prob.py ${ymd}${cyc} $fhr" >> run_narre_plot_py.f${fhr}.sh

  echo "for domain in us ne se mw ms nw sw zny zdc zhu zau zoa sco  ; do" >>run_narre_plot_py.f${fhr}.sh
  echo "sftp  wd20bz@emcrzdm << EOF" >> run_narre_plot_py.f${fhr}.sh
  echo "   mkdir /home/people/emc/www/htdocs/bzhou/wcoss2_plot_py/$ymd" >> run_narre_plot_py.f${fhr}.sh
  echo "   cd /home/people/emc/www/htdocs/bzhou/wcoss2_plot_py/$ymd" >> run_narre_plot_py.f${fhr}.sh
  echo "   mkdir /home/people/emc/www/htdocs/bzhou/wcoss2_plot_py/$ymd/\$domain" >> run_narre_plot_py.f${fhr}.sh
  echo "   cd /home/people/emc/www/htdocs/bzhou/wcoss2_plot_py/$ymd/\$domain" >> run_narre_plot_py.f${fhr}.sh
  echo "   lcd $work/\$domain" >> run_narre_plot_py.f${fhr}.sh
  echo "   mput *.png " >> run_narre_plot_py.f${fhr}.sh
  echo "EOF" >> run_narre_plot_py.f${fhr}.sh

  echo "done" >> run_narre_plot_py.f${fhr}.sh

  chmod +x run_narre_plot_py.f${fhr}.sh
  echo "run_narre_plot_py.f${fhr}.sh" >> run_narre_plot_py.sh

done
chmod +x run_narre_plot_py.sh 

if [ $run_mpi = yes ] ; then
   mpiexec -n 24 -ppn 12 --cpu-bind core --depth=2 cfp ./run_narre_plot_py.sh
   #mpiexec -n 12 -ppn 12 --cpu-bind core --configfile ./run_narre_plot_py.sh
   #mpiexec  --cpu-bind core --configfile ./run_narre_plot_py.sh
else
   sh ./run_narre_plot_py.sh
fi

