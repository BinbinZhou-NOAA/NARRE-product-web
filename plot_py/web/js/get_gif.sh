#!/usr/bin/ksh

ftp -n << EOF
verbose
open snow
user wx20bz yuan1964
bi
prompt

cd /ptmp/wx20bz/web_sref/ETA12km/ens.YYYYMMDDTT
lcd /export/lnx255/wd20bz/web_sref/ETA12km_new/ens.YYYYMMDDTT
mget *.gif

cd /ptmp/wx20bz/web_sref/COM/ens.YYYYMMDDTT
lcd /export/lnx255/wd20bz/web_sref/COM_new/ens.YYYYMMDDTT
mget *.gif

close
EOF


