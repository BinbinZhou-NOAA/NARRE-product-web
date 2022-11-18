#!/bin/sh

TODAY=$1
CYC=$2

export narre_dir=/lfs/h1/ops/prod/com/narre/v1.2/narre.${TODAY}/ensprod
export work=/lfs/h2/emc/ptmp/binbin.zhou/narre/plot_py/${TODAY}${CYC}

for reg in us ne se mw ms nw sw zny zdc zhu zau zoa sco  ; do

LOCATION=NARRE

sftp wd20bz@vm-lnx-emcrzdm01.ncep.noaa.gov<<EOF
mkdir /home/www/emc/htdocs/mmb/SREF_avia/FCST/$LOCATION
mkdir /home/www/emc/htdocs/mmb/SREF_avia/FCST/$LOCATION/$TODAY
cd /home/www/emc/htdocs/mmb/SREF_avia/FCST/$LOCATION/$TODAY
mkdir /home/www/emc/htdocs/mmb/SREF_avia/FCST/$LOCATION/$TODAY/${reg}
cd /home/www/emc/htdocs/mmb/SREF_avia/FCST/$LOCATION/$TODAY/${reg}
lcd ${work}/${reg}
mput *.png
EOF

done

