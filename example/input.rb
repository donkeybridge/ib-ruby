
require 'bundler/setup'
require 'ib-ruby'
require 'yaml'


# First, connect to IB TWS and subscribe for events. 

 IB::Symbols.allocate_collection :w500
 IB::Symbols::W500.purge_collection

 IB::Symbols.allocate_collection :w500


symbols = %w(
DD
MMM
WBAI
WUBA
EGHT
AHC
ATEN
AAC
AIR
AAN
ABB
ABT
ABBV
ANF
ACP
JEQ
ABM
AKR
ACN
ACCO
ATV
ATU
AYI
GOLF
ADX
PEO
AGRO
ADNT
ADT
ATGE
AAP
ADSW
WMS
ASIX
AAV
AVK
AGC
LCM
ACM
ANW
AEB
AED
AEG
AEH
AER
HIVE
AJRD
AET
AMG
AFL
MITT
AGCO
A
AEM
ADC
AL
APD
AYR
AKS
ALG
AGI
ALK
AIN
ALB
AA
ALEX
ALX
ARE
AQN
BABA
Y
ATI
ALLE
AGN
ALE
AKP
ADS
AFB
AOI
AWF
AB
LNT
CBH
NCV
NCZ
ACV
NIE
NFJ
ALSN
ALLY
AGD
AWP
AOD
AYX
ATUS
MO
ACH
AMBR
ABEV
AMC
AEE
AMRC
AMOV
AMX
AAT
AXL
ACC
AEO
AEP
AEL
AXP
AFG
AFGE
AFGH
AMH
AIG
AMID
ARL
ARA
AWR
AMT
AVD
AWK
COLD
APU
AMP
ABC
ANFI
AMN
AP
APH
AXR
AME
AFSS
AFST
AEUA
APC
ANDV
ANDX
AU
BUD
AXE
NLY
AMGP
AM
AR
ANTM
ANH
AON
APA
AIV
ARI
APO
AIY
AFT
AIF
APLE
AIT
ATR
APTV
WTR
AQ
WAAS
ARMK
ABR
ARC
MT
ARCH
ADM
AROC
ARNC
ARCO
RCUS
ARD
ASC
AFC
ACRE
ARDC
ARES
AGX
ANET
AI
AIC
AIW
AHH
ARR
AFI
AWI
ARW
AJG
APAM
ASA
ABG
ASX
ASGN
AHT
ASH
APB
ASPN
AHL
ASB
AC
AIZ
AIZP
AGO
AZN
HOME
T
TBB
ATTO
ATH
ATKR
AT
ATO
AUO
ATHM
ALV
AN
AZO
AVB
AGR
AVYA
AVY
AVH
AVA
AVT
AVP
AVX
AXTA
AXS
AZUL
AZRE
AZZ
BGS
BW
BGH
BMI
BHGE
BBN
BLL
BANC
BBVA
BBD
BBDO
BCH
BLX
BSMX
BSBR
BSAC
SAN
CIB
BXS
BAC
NTB
BK
BNS
BKU
BCS
MCI
MPV
BNED
BKS
B
ABX
BAS
BAX
BTE
BBT
BFR
BBX
BCE
BZH
BDX
BDXA
BDC
BXE
BEL
BMS
BHE
BHLB
BERY
BBY
BSTI
BGCA
BHP
BBL
BIG
BH
BHVN
BIO
BITA
BKH
BKHU
BKI
BSM
BB
BGIO
BJZ
BFZ
CII
BHK
HYT
BTZ
DSU
BGR
BDJ
EGF
FRA
BFO
BGT
BOE
BME
BAF
BKT
BGY
BKN
BTA
BIT
MUI
MNE
MUA
BPK
BKK
BBK
BBF
BYM
BFK
BTT
MEN
MUC
MUH
MHD
MFL
MUJ
MHN
MUE
MUS
MVT
MYC
MCA
MYD
MYF
MFT
MIY
MYJ
MYN
MPA
MQT
MYI
MQY
BNJ
BNY
BLH
BQH
BSE
BCX
BST
BSD
BUI
BLK
BGB
BGX
BSL
APRN
BCRH
BXG
BXC
BWP
BA
BCC
BCEI
BOOT
BAH
BWA
SAM
BXP
BSX
BOX
BYD
BPMP
BP
BPT
BRC
BHR
BDN
BWG
LND
BAK
BRFS
BPI
BGG
BFAM
BEDU
BSA
BSIG
EAT
BCO
BMY
BRS
BTI
BRX
BR
BKD
BAM
BBU
INF
BIP
RA
BEP
BRO
BRT
BC
BT
BPL
BKE
BVN
BBW
BG
BURL
BWXT
BY
CJ
GYB
PFH
CABO
CBT
COG
CACI
WHD
CADE
CAE
CAI
CAL
CRC
CWT
CALX
ELY
CPE
CBM
CPT
CCJ
CPB
CWH
GOOS
CM
CNI
CNQ
CP
CNNE
CAJ
CMD
COF
CSU
BXMT
CIC
CMO )

symbols.each_with_index{ |sy,i| IB::Symbols::W500.add_contract i, IB::Stock.new( symbol: sy) }

puts IB::Symbols::W500.size
