cd /usr/share/locale
rm -fr C
rm -fr a.txt
rm -fr aa
rm -fr af
rm -fr am
rm -fr ang
rm -fr ar
rm -fr ara
rm -fr as
rm -fr ast
rm -fr az
rm -fr az_IR
rm -fr bal
rm -fr be
rm -fr be@latin
rm -fr bg
rm -fr bn
rm -fr bn_IN
rm -fr bo
rm -fr br
rm -fr bs
rm -fr byn
rm -fr ca
rm -fr ca@valencia
rm -fr ckb
rm -fr crh
rm -fr cs
rm -fr cs_CZ
rm -fr csb
rm -fr cy
rm -fr da
rm -fr de
rm -fr de_AT
rm -fr de_CH
rm -fr de_DE
rm -fr de_DE.ISO-8859-1
rm -fr de_DE.UTF-8
rm -fr de_DE@euro
rm -fr dv
rm -fr dz
rm -fr ee
rm -fr el
rm -fr el_GR
rm -fr eo
rm -fr es
rm -fr es_AR
rm -fr es_CL
rm -fr es_CO
rm -fr es_CR
rm -fr es_DO
rm -fr es_EC
rm -fr es_ES
rm -fr es_ES.ISO-8859-1
rm -fr es_ES.UTF-8
rm -fr es_ES@euro
rm -fr es_GT
rm -fr es_HN
rm -fr es_MX
rm -fr es_NI
rm -fr es_PA
rm -fr es_PE
rm -fr es_PR
rm -fr es_SV
rm -fr es_UY
rm -fr es_VE
rm -fr et
rm -fr et_EE
rm -fr eu
rm -fr eu_ES
rm -fr fa
rm -fr fi
rm -fr fi_FI
rm -fr fo
rm -fr fr
rm -fr fr_CA
rm -fr fr_CH
rm -fr fr_FR
rm -fr fr_FR.ISO-8859-1
rm -fr fr_FR.UTF-8
rm -fr fr_FR@euro
rm -fr fur
rm -fr fy
rm -fr ga
rm -fr gd
rm -fr gez
rm -fr gl
rm -fr gn
rm -fr gu
rm -fr gv
rm -fr ha
rm -fr haw
rm -fr he
rm -fr hi
rm -fr hr
rm -fr hu
rm -fr hy
rm -fr ia
rm -fr id
rm -fr io
rm -fr is
rm -fr it
rm -fr it_CH
rm -fr it_IT
rm -fr it_IT.ISO-8859-1
rm -fr it_IT.UTF-8
rm -fr it_IT@euro
rm -fr iu
rm -fr ja
rm -fr ja_JP.EUC
rm -fr ja_JP.SJIS
rm -fr ja_JP.UTF-8
rm -fr ja_JP.eucJP
rm -fr ka
rm -fr kk
rm -fr kl
rm -fr km
rm -fr kn
rm -fr ko
rm -fr ko_KR.UTF-8
rm -fr ko_KR.eucKR
rm -fr kok
rm -fr ks
rm -fr ku
rm -fr kw
rm -fr ky
rm -fr lg
rm -fr li
rm -fr lo
rm -fr locale.alias
rm -fr lt
rm -fr lv
rm -fr mai
rm -fr md
rm -fr mg
rm -fr mi
rm -fr mk
rm -fr ml
rm -fr mn
rm -fr mr
rm -fr ms
rm -fr mt
rm -fr mus
rm -fr my
rm -fr nb
rm -fr nb_NO
rm -fr nds
rm -fr nds@NFE
rm -fr nds_DE
rm -fr ne
rm -fr nl
rm -fr nl_BE
rm -fr nn
rm -fr nn_NO
rm -fr nso
rm -fr oc
rm -fr om
rm -fr or
rm -fr pa
rm -fr pl
rm -fr pl_PL
rm -fr ps
rm -fr pt
rm -fr pt_BR
rm -fr pt_BR.UTF-8
rm -fr pt_PT
rm -fr rm
rm -fr ro
rm -fr ru
rm -fr ru_RU
rm -fr ru_UA.koi8u
rm -fr rw
rm -fr sa
rm -fr se
rm -fr si
rm -fr sid
rm -fr sk
rm -fr sl
rm -fr sl_SI
rm -fr so
rm -fr sp
rm -fr sq
rm -fr sq_AL
rm -fr sr
rm -fr sr@Latn
rm -fr sr@ije
rm -fr sr@latin
rm -fr ss
rm -fr st
rm -fr sv
rm -fr sw
rm -fr syr
rm -fr ta
rm -fr te
rm -fr tg
rm -fr th
rm -fr ti
rm -fr tig
rm -fr tk
rm -fr tl
rm -fr tr
rm -fr tt
rm -fr ug
rm -fr uk
rm -fr uk_UA
rm -fr ur
rm -fr ur_PK
rm -fr urd
rm -fr uz
rm -fr uz@cyrillic
rm -fr ve
rm -fr ven
rm -fr vi
rm -fr wa
rm -fr wal
rm -fr wo
rm -fr xh
rm -fr yi
rm -fr yo
rm -fr zh
rm -fr zh_CN
rm -fr zh_CN.GB18030
rm -fr zh_CN.GB2312
rm -fr zh_CN.GBK
rm -fr zh_CN.UTF-8
rm -fr zh_HK
rm -fr zh_TW
rm -fr zh_TW.Big5
rm -fr zh_TW.UTF-8
rm -fr zh_TW.eucTW
rm -fr zu

rm -fr /usr/share/doc/*
rm -fr /usr/share/backgrounds/cosmos
rm -fr /usr/share/backgrounds/glass

rpm -e --nodeps cups-client-1.3.9-8.44.1
rpm -e --nodeps cups-libs-32bit-1.3.9-8.44.1
rpm -e --nodeps cups-libs-1.3.9-8.44.1
rpm -e --nodeps cups-drivers-1.3.9-2.31 
rpm -e --nodeps cups-1.3.9-8.44.1
rpm -e --nodeps cups-autoconfig-0.1.0-158.28.7

rm -fr /usr/share/cups

rpm -e --nodeps emacs-x11-22.3-4.36.1
rpm -e --nodeps emacs-info-22.3-4.36.1
rpm -e --nodeps emacs-22.3-4.36.1

rm -fr /usr/share/emacs

rpm -e --nodeps libgweather1-32bit-2.28.0-1.4.8
rpm -e --nodeps libgweather1-2.28.0-1.4.8
rpm -e --nodeps libgweather-lang-2.28.0-1.4.8
rpm -e --nodeps libgweather-2.28.0-1.4.8

rm -fr /usr/share/libgweather

rpm -e --nodeps poppler-data-0.4.0-1.1.38
rpm -e --nodeps libpoppler5-0.12.3-1.3.1
rpm -e --nodeps poppler-tools-0.12.3-1.3.1
rpm -e --nodeps libpoppler-glib4-0.12.3-1.3.1

rm -fr /usr/share/poppler

rpm -e --nodeps ghostscript-library-8.62-32.28.1
rpm -e --nodeps ghostscript-x11-8.62-32.28.1
rpm -e --nodeps ghostscript-fonts-other-8.62-32.28.1
rpm -e --nodeps ghostscript-fonts-std-8.62-32.28.1
rpm -e --nodeps ghostscript-omni-8.62-32.28.1

rm -fr /usr/share/ghostscript

rpm -e --nodeps dasher-lang-4.10.1-2.1.186
rpm -e --nodeps dasher-4.10.1-2.1.186

rm -fr /usr/share/dasher
