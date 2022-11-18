#!/bin/bash -l

set -x 

TODAY=`date +%Y%m%d`
yyyymmdd=${TODAY:0:8}
cyc=$1

if [ $cyc = '23' ] ; then
 x=`$NDATE -24 ${TODAY}01`
 yyyymmdd=${x:0:8}
 echo x=$x
fi

PAST=`$NDATE -48 ${yyyymmdd}01`
PASTDAY=${PAST:0:8}

#ssh -l wd20bz emcrzdm "rm -rf /home/www/emc/htdocs/mmb/SREF_avia/FCST/NARRE/$PASTDAY"
#ssh -l wd20bz emcrzdm "rm -rf /home/www/emc/htdocs/mmb/SREF_avia/FCST/NARRE_Alaska/$PASTDAY"


export script=/lfs/h2/emc/vpppg/noscrub/binbin.zhou/NARRE_TL/plot_py/scripts
export dev=/lfs/h2/emc/vpppg/noscrub/binbin.zhou/NARRE_TL/plot_py/dev
export work=/lfs/h2/emc/ptmp/binbin.zhou/narre/plot_py/${yyyymmdd}${cyc}
mkdir -p $work
mkdir -p $work/ms
mkdir -p $work/mw
mkdir -p $work/ne
mkdir -p $work/nw
mkdir -p $work/sco
mkdir -p $work/se
mkdir -p $work/sw
mkdir -p $work/us
mkdir -p $work/zau
mkdir -p $work/zdc
mkdir -p $work/zhu
mkdir -p $work/zny
mkdir -p $work/zoa

for fhr in 01 02 03 04 05 06 07 08 09 10 11 12 ; do
 
 sed -e "s!YYYYMMDD!$yyyymmdd!g" -e "s!CYC!$cyc!g" -e "s!FHR!$fhr!g" $dev/narre_plot_py.ecf.base > $dev/narre_plot_py.t${cyc}z.f${fhr}.ecf
 sed -e "s!YYYYMMDD!$yyyymmdd!g" -e "s!CYC!$cyc!g" -e "s!FHR!$fhr!g" $script/run_narre_plot_py.FHR.sh > $work/run_narre_plot_py_${fhr}.sh
 
 chmod +x $work/run_narre_plot_py_${fhr}.sh

 qsub $dev/narre_plot_py.t${cyc}z.f${fhr}.ecf

done

sleep 1800 

/lfs/h2/emc/vpppg/noscrub/binbin.zhou/NARRE_TL/plot_py/scripts/sftp.sh $yyyymmdd $cyc

if [ $cyc -gt 0 ] ; then
  cyc=$(($cyc-1))
fi

/lfs/h2/emc/vpppg/noscrub/binbin.zhou/NARRE_TL/plot_py/web/base/get_html_days.sh $yyyymmdd $cyc 130

