#!/bin/ksh


TODAY=$1
cyc=$2
grid=130
typeset -Z2 cyc
cycles=""

if [ $grid = '130' ] ; then
 s=/lfs/h2/emc/vpppg/noscrub/binbin.zhou/NARRE_TL/plot_py/web
else
 s=/lfs/h2/emc/vpppg/noscrub/binbin.zhou/NARRE_TL/plot_py/web_242
fi


cd /lfs/h2/emc/vpppg/noscrub/binbin.zhou/NARRE_TL/plot_py/web/base


for c in 23 22 21 20 19 18 17 16 15 14 13 12 11 10 09 08 07 06 05 04 03 02 01 00 ; do 
 
if [ $c -le $cyc ] ; then
 if [ $c -eq $cyc ] ; then
  cycles="$cycles <option value=${c} style='color:black' selected > ${c}Z"
 else
  cycles="$cycles <option value=${c} style='color:black' > ${c}Z"
 fi
fi

done     

echo ${cycles}


PAST=`$NDATE -24 ${TODAY}01`
PAST1=`echo ${PAST} | cut -c 1-8`

echo $s 

sed -e "s!YYYYMMDD!$TODAY!g" -e "s!PASTDAY1!$PAST1!g"  -e "s!CYCLES!${cycles}!g" -e "s!IMAGE!ceiling.t${cyc}z.01.gif!g" $s/base/html.base > $s/html/narre.html.base
sed -e "s! > Icing! selected > Icing!g" -e "s!PRODS!<option value=prb_icing.at.FL240 > Prob: FL240 <option value=prb_icing.at.FL180 > Prob: FL180 <option value=prb_icing.at.FL150 > Prob: FL150 <option value=prb_icing.at.FL120 > Prob: FL120 <option value=prb_icing.at.FL090 > Prob: FL090 <option value=prb_icing.at.FL060 > Prob: FL060 <option value=prb_icing.at.FL030 > Prob: FL030 <option value=prb_icing.at.FL000 > Prob: FL000!g" $s/html/narre.html.base > $s/html/icing.html

sed -e "s! > Turbulence! selected > Turbulence!g" -e "s!PRODS!<option value=prb_3cat8.FL420 > Prob: severe FL420   <option value=prb_3cat8.FL390 > Prob: severe FL390 <option value=prb_3cat8.FL360 > Prob: severe FL360 <option value=prb_3cat8.FL330 > Prob: severe FL330 <option value=prb_3cat8.FL300 > Prob: severe FL300 <option value=prb_3cat8.FL270 > Prob: severe FL270 <option value=prb_3cat8.FL240 > Prob: severe FL240 <option value=prb_3cat8.FL210 > Prob: severe FL210 <option value=prb_3cat8.FL180 > Prob: severe FL180 <option value=prb_2cat8.FL420 > Prob: moderate FL420  <option value=prb_2cat8.FL390 > Prob: moderate FL390 <option value=prb_2cat8.FL360 > Prob: moderate FL360 <option value=prb_2cat8.FL330 > Prob: moderate FL330 <option value=prb_2cat8.FL300 > Prob: moderate FL300 <option value=prb_2cat8.FL270 > Prob: moderate FL270 <option value=prb_2cat8.FL240 > Prob: moderate FL240 <option value=prb_2cat8.FL210 > Prob: moderate FL210 <option value=prb_2cat8.FL180 > Prob: moderate FL180 <option value=prb_1cat8.FL420 > Prob: light FL420 <option value=prb_1cat8.FL390 > Prob: light FL390 <option value=prb_1cat8.FL360 > Prob: light FL360 <option value=prb_1cat8.FL330 > Prob: light FL330 <option value=prb_1cat8.FL300 > Prob: light FL300 <option value=prb_1cat8.FL270 > Prob: light FL270 <option value=prb_1cat8.FL240 > Prob: light FL240 <option value=prb_1cat8.FL210 > Prob: light FL210 <option value=prb_1cat8.FL180 > Prob: light FL180 !g" $s/html/narre.html.base > $s/html/cat.html

sed -e "s! > Convection! selected > Convection!g" -e "s!PRODS!<option value=prb_cnv > Convection probability!g"  $s/html/narre.html.base > $s/html/conv.html 

sed -e "s! > Ceiling! selected  > Ceiling!g" -e "s!PRODS!<option value=ceiling> Mean: Ceiling  <option value="prb_ceiling.lt.1000feet" > Prob: Ceiling < 1000 feet <option value=prb_ceiling.lt.2000feet > Prob: Ceiling < 2000 feet <option value=prb_ceiling.lt.3000feet > Prob: Ceiling < 3000 feet <option value=prb_ceiling.lt.6000feet > Prob: Ceiling < 6000 feet <option value=prb_ceiling.lt.10000feet > Prob: Ceiling < 10000 feet!g"   $s/html/narre.html.base > $s/html/ceiling.html

sed -e "s! > Visibility! selected > Visibility!g"  -e "s!PRODS!<option value=visb > Mean: Visibility <option value=prb_vis.lt.400m > Prob: Visibility < 1/4 mile <option value=prb_vis.lt.800m > Prob: Visibility < 1/2 mile <option value=prb_vis.lt.1600m > Prob: Visibility < 1 mile <option value=prb_vis.lt.3200m > Prob: Visibility < 2 miles <option value=prb_vis.lt.6400m > Prob: Visibility < 4 miles !g"  $s/html/narre.html.base > $s/html/visib.html

sed -e "s! > Flight Restr! selected > Flight Restr!g" -e "s!PRODS!<option value=prb_LIFR > Prob: LIFR <option value=prb_IFR > Prob: LIFR and IFR <option value=prb_MVFR > Prob: MVFR <option value=prb_VFR > Prob: VFR!g" $s/html/narre.html.base > $s/html/fltr.html  

sed -e "s! > Wind! selected > Wind!g" -e "s!PRODS!<option value=llws > Mean/spread: Low level wind shear <option value=prb_llws.gt.20knt > Prob: LLWS > 20 knots/2000ft <option value=prb_jet35000.gt.60knt > Prob: > 60 knots at 35000ft <option value=prb_jet35000.gt.80knt > Prob: > 80 knots at 35000ft <option value=prb_jet35000.gt.100knt > Prob: > 100 knots at 35000ft <option value=prb_jet15000.gt.60knt > Prob: > 60 knots at 15000ft <option value=prb_jet15000.gt.80knt > Prob: > 80 knots at 15000ft <option value=prb_jet15000.gt.100knt > Prob: > 100 knots at 15000ft   <option value=prb_jet4500.gt.20knt > Prob: > 20 knots at 4500ft <option value=prb_jet4500.gt.40knt > Prob: > 40 knots at 4500ft <option value=prb_jet4500.gt.60knt > Prob: > 60 knots at 4500ft      <option value=prb_jet10.gt.20knt > Prob: > 20 knots at Surface <option value=prb_jet10.gt.40knt > Prob: > 40 knots at Surface <option value=prb_jet10.gt.60knt > Prob: > 60 knots at Surface!g" $s/html/narre.html.base > $s/html/wind.html



sed -e "s! > Reflectivity! selected > Reflectivity!g" -e "s!PRODS!<option value=prb_reflectivity.gt.10dbz > Prob: Reflectivity > 10 dBZ <option value=prb_reflectivity.gt.20dbz > Prob: Reflectivity > 20 dBZ <option value=prb_reflectivity.gt.30dbz > Prob: Reflectivity > 30 dBZ <option value=prb_reflectivity.gt.40dbz > Prob: Reflectivity > 40 dBZ <option value=prb_reflectivity.gt.50dbz > Prob: Reflectivity > 50 dBZ!g" $s/html/narre.html.base > $s/html/refl.html 

sed -e "s! > 3hr Precip! selected > 3hr Precip!g" -e "s!PRODS!<option value=prb_apcp3hr.gt.01 > Prob: APCP > 0.01 in <option value=prb_apcp3hr.gt.25 > Prob: APCP > 0.25 in <option value=prb_apcp3hr.gt.50 > Prob: APCP > 0.50 in!g" $s/html/narre.html.base > $s/html/apcp3hr.html

sed -e "s! > 6hr Precip! selected > 6hr Precip!g" -e "s!PRODS!<option value=prb_apcp6hr.gt.01 > Prob: APCP > 0.01 in <option value=prb_apcp6hr.gt.25 > Prob: APCP > 0.25 in <option value=prb_apcp6hr.gt.50 > Prob: APCP > 0.50 in!g"  $s/html/narre.html.base > $s/html/apcp6hr.html


#sed -e "s! > Tropopause! selected > Tropopause!g" $s/html/narre.html.base > $s/html/trop.html

sed -e "s! > Freezing! selected > Freezing!g" -e "s!PRODS!<option value=frzh > Mean/spread: Freezing height!g"  $s/html/narre.html.base > $s/html/frzh.html

#sed -e "s! > Fog! selected > Fog!g" -e "s!PRODS!<option value=prb_fog > Prob: Fog Occurrence <option value=prb_fog.light > Fog(2) prob: Fog occ. <option value=prb_fog.med > Fog(2) prob: medium <option value=prb_fog.dense > Fog(2) prob: dense <option value=foglwc > Fog(2) LWC mean!g"  $s/html/narre.html.base > $s/html/fog.html
sed -e "s! > Fog! selected > Fog!g" -e "s!PRODS!<option value=prb_fog.light > Prob. of Fog  <option value=prb_fog.dense> Prob. of dense fog !g"  $s/html/narre.html.base > $s/html/fog.html

sed -e "s! > Precip! selected > Precip!g" -e "s!PRODS!<option value=prb_rain > Prob: Rain <option value=prb_snow > Prob: Snow <option value=prb_frzr > Prob: Freezing rain!g" $s/html/narre.html.base  > $s/html/prcp.html

sed -e "s! > Thunderstorm! selected > Thunderstorm!g" -e "s!PRODS!<option value=prb_lightning > Prob: Lightning <option value=prb_severe > Prob: Severe storm!g" $s/html/narre.html.base  > $s/html/cptp.html

if [ $grid = '130' ] ; then

sftp wd20bz@vm-lnx-emcrzdm01.ncep.noaa.gov<<EOF
prompt
mkdir /home/www/emc/htdocs/mmb/SREF_avia/FCST/NARRE
mkdir /home/www/emc/htdocs/mmb/SREF_avia/FCST/NARRE/web_site
mkdir /home/www/emc/htdocs/mmb/SREF_avia/FCST/NARRE/web_site/html
cd /home/www/emc/htdocs/mmb/SREF_avia/FCST/NARRE/web_site/html
lcd /lfs/h2/emc/vpppg/noscrub/binbin.zhou/NARRE_TL/plot_py/web/html
mput *.html

mkdir /home/www/emc/htdocs/mmb/SREF_avia/FCST/NARRE/web_site/js
cd /home/www/emc/htdocs/mmb/SREF_avia/FCST/NARRE/web_site/js
lcd /lfs/h2/emc/vpppg/noscrub/binbin.zhou/NARRE_TL/plots/web/js
mput *.*

close
EOF

else

sftp wd20bz@vm-lnx-emcrzdm01.ncep.noaa.gov<<EOF
prompt
cd /home/www/emc/htdocs/mmb/SREF_avia/FCST/NARRE_Alaska/web_site/html
lcd /lfs/h2/emc/vpppg/noscrub/binbin.zhou/NARRE_TL/plot_py/web_242/html
mput *.html


close
EOF

fi

exit


