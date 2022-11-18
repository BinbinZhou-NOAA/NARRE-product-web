#!/bin/sh


export narre_dir=/lfs/h1/ops/prod/com/narre/v1.2/narre.YYYYMMDD/ensprod
export work=/lfs/h2/emc/ptmp/binbin.zhou/narre/plot_py/YYYYMMDDCYC
export TODAY=YYYYMMDD

$WGRIB2  $narre_dir/narre.tCYCz.mean.grd130.fFHR.grib2 -set_grib_type c3 -grib_out $work/narre.tCYCz.mean_c3.grd130.fFHR.grib2
$WGRIB2  $narre_dir/narre.tCYCz.prob.grd130.fFHR.grib2 -set_grib_type c3 -grib_out $work/narre.tCYCz.prob_c3.grd130.fFHR.grib2

python /lfs/h2/emc/vpppg/noscrub/binbin.zhou/NARRE_TL/plot_py/scripts/plot_narre_mean_prob.py YYYYMMDDCYC FHR


exit

for reg in us ne se mw ms nw sw zny zdc zhu zau zoa sco  ; do

LOCATION=NARRE

sftp wd20bz@vm-lnx-emcrzdm01.ncep.noaa.gov<<EOF
mkdir /home/www/emc/htdocs/mmb/SREF_avia/FCST/$LOCATION/$TODAY
cd /home/www/emc/htdocs/mmb/SREF_avia/FCST/$LOCATION/$TODAY
mkdir /home/www/emc/htdocs/mmb/SREF_avia/FCST/$LOCATION/$TODAY/${reg}
cd /home/www/emc/htdocs/mmb/SREF_avia/FCST/$LOCATION/$TODAY/${reg}
lcd ${work}/${reg}
mput *FHR.png
EOF

done

