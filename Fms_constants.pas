unit Fms_constants;

interface
uses
  sysutils;
const
  FFAM_RUS: array [1..28] of String = ('N10','R10','V10','Z10','AD10','AH10','AL10','AP10',
  'AT10','AX10','BB10','BF10','BJ10','BN10','BR10','BV10','BZ10','CD10','CH10','CL10','CP10',
  'CT10','CX10','DB10','DF10','DJ10','DN10','DR10');

  FFAM_EN: array [1..22] of string =('AL12','AP12','AT12','AX12','BB12', 'BF12','BJ12','BN12','BR12','BV12','BZ12','CP12','CH12','CL12','CP12',
  'CT12','CX12','DB12','DF12','DJ12','DN12','DR12');

  FNAME_RUS: array [1..28] of String = ('N14','R14','V14','Z14','AD14','AH14','AL14','AP14','AT14',
  'AX14','BB14','BF14','BJ14','BN14','BR14','BV14','BZ14','CD14','CH14','CL14','CP14','CT14','CX14','DB14','DF14','DJ14','DN14','DR14');

  FNAME_EN: array [1..23] of string = ('AH16','AL16','AP16','AT16','AX16','BB16',
  'BF16','BJ16','BN16','BR16','BV16','BZ16','CD16','CH16','CL16','CP16','CT16','CX16','DB16','DF16','DJ16','DN16','DR16');

  FGRAZD: array [1..26] of string  = ('V24','Z24','AD24','AH24','AL24','AP24',
  'AT24','AX24','BB24','BF24','BJ24','BN24','BR24','BV24','BZ24','CD24',
  'CH24','CL24','CP24','CT24','CX24','DB24','DF24','DJ24','DN24','DR24');

  FOTH_RU: array [1..24] of string=('AD18','AH18','AL18','AP18','AT18','AX18',
  'BB18','BF18','BJ18','BN18','BR18','BV18','BZ18','CD18','CH18','CL18','CP18','CT18','CX18',
  'DB18','DF18','DJ18','DN18','DR18');

  FOTH_EN: array [1..22] of string=('AL20','AP20','AT20','AX20',
  'BB20','BF20','BJ20','BN20','BR20','BV20','BZ20','CD20','CH20','CL20','CP20','CT20','CX20',
  'DB20','DF20','DJ20','DN20','DR20');

   COUNTRY_ROZ: array [1..25] of string=('Z29','AD29','AH29','AL29','AP29',
  'AT29','AX29','BB29','BF29','BJ29','BN29','BR29','BV29','BZ29','CD29','CH29','CL29','CP29',
  'CT29','CX29','DB29','DF29','DJ29','DN29','DR29');

  PASPORT_TYPE: array [1..29] of string = ('J35','N35','R35','V35','Z35','AD35','AH35','AL35','AP35',
  'AT35','AX35','BB35','BF35','BJ35','BN35','BR35','BV35','BZ35','CD35','CH35','CL35','CP35',
  'CT35','CX35','DB35','DF35','DJ35','DN35','DR35');

  PASSPORT_SER: array [1..6] of string  = ('J37','N37','R37','V37','Z37','AD37');

  PASSPORT_NUM: array [1..21] of string = ('AP37','AT37','AX37',
  'BB37','BF37','BJ37','BN37','BR37','BV37','BZ37','CD37','CH37','CL37','CP37','CT37','CX37',
  'DB37','DF37','DJ37','DN37','DR37');

  NUM_AKT_ROZ: array [1..21] of string =('B45','F45','J45','N45','R45','V45','Z45','AD45','AH45','AL45','AP45','AT45',
  'AX45','BB45','BF45','BJ45','BN45','BR45','BV45','BZ45','CD45');

  DATE_AKT_ROZ: array [1..8] of string = ('CP45','CT45','CX45','DB45','DF45','DJ45','DN45','DR45');

  AKT_ORG:array [1..93] of string = ('B47','F47','J47','N47','R47','V47','Z47','AD47','AH47','AL47','AP47','AT47',
'AX47','BB47','BF47','BJ47','BN47','BR47','BV47','BZ47','CD47',
'CH47','CL47','CP47','CT47','CX47','DB47','DF47','DJ47','DN47','DR47',
'B49','F49','J49','N49','R49','V49','Z49','AD49','AH49','AL49','AP49','AT49',
'AX49','BB49','BF49','BJ49','BN49','BR49','BV49','BZ49','CD49',
'CH49','CL49','CP49','CT49','CX49','DB49','DF49','DJ49','DN49','DR49',
 'B51','F51','J51','N51','R51','V51','Z51','AD51','AH51','AL51','AP51','AT51',
'AX51','BB51','BF51','BJ51','BN51','BR51','BV51','BZ51','CD51',
'CH51','CL51','CP51','CT51','CX51','DB51','DF51','DJ51','DN51','DR51');

DOCPRVSER:array [1..6] of string =('J56','N56','R56','V56','Z56','AD56');

DOCPRVNUM : array [1..21] of string = ('AP56','AT56','AX56',
  'BB56','BF56','BJ56','BN56','BR56','BV56','BZ56','CD56','CH56','CL56','CP56','CT56','CX56',
  'DB56','DF56','DJ56','DN56','DR56');
TELNUM : array [1..10] of string = ('CD62','CH62','CL62','CP62','CT62','CX62',
  'DB62','DF62','DJ62','DN62');

MGRSER: array [1..4] of string =('AH68','AL68','AP68','AT68');
MGRNUM: array [1..13] of string = ('BB68','BF68','BJ68','BN68','BR68','BV68','BZ68','CD68','CH68','CL68','CP68',
  'CT68','CX68');
 KIDS_FAM:array [1..26] of string = ('V70','Z70','AD70','AH70','AL70','AP70',
  'AT70','AX70','BB70','BF70','BJ70','BN70','BR70','BV70','BZ70','CD70','CH70','CL70','CP70',
  'CT70','CX70','DB70','DF70','DJ70','DN70','DR70');
 KIDS_NAME :array [1..26] of string = ('V72','Z72','AD72','AH72','AL72','AP72',
  'AT72','AX72','BB72','BF72','BJ72','BN72','BR72','BV72','BZ72','CD72','CH72','CL72','CP72',
  'CT72','CX72','DB72','DF72','DJ72','DN72','DR72');
 KIDS_OTH: array [1..26] of string = ('V74','Z74','AD74','AH74','AL74','AP74',
  'AT74','AX74','BB74','BF74','BJ74','BN74','BR74','BV74','BZ74','CD74','CH74','CL74','CP74',
  'CT74','CX74','DB74','DF74','DJ74','DN74','DR74');
 KIDS_DATE: array [1..26] of string =(
'V76','Z76','AD76','AH76','AL76','AP76',
  'AT76','AX76','BB76','BF76','BJ76','BN76','BR76','BV76','BZ76','CD76','CH76','CL76','CP76',
  'CT76','CX76','DB76','DF76','DJ76','DN76','DR76');
 ADRES_PREBYVANIJA:array [1..124] of string= ('B97','F97','J97','N97','R97','V97','Z97','AD97','AH97','AL97','AP97','AT97',
'AX97','BB97','BF97','BJ97','BN97','BR97','BV97','BZ97','CD97',
'CH97','CL97','CP97','CT97','CX97','DB97','DF97','DJ97','DN97','DR97',
'B99','F99','J99','N99','R99','V99','Z99','AD99','AH99','AL99','AP99','AT99',
'AX99','BB99','BF99','BJ99','BN99','BR99','BV99','BZ99','CD99',
'CH99','CL99','CP99','CT99','CX99','DB99','DF99','DJ99','DN99','DR99',
 'B101','F101','J101','N101','R101','V101','Z101','AD101','AH101','AL101','AP101','AT101',
'AX101','BB101','BF101','BJ101','BN101','BR101','BV101','BZ101','CD101',
'CH101','CL101','CP101','CT101','CX101','DB101','DF101','DJ101','DN101','DR101',
'B103','F103','J103','N103','R103','V103','Z103','AD103','AH103','AL103','AP103','AT103',
'AX103','BB103','BF103','BJ103','BN103','BR103','BV103','BZ103','CD103',
'CH103','CL103','CP103','CT103','CX103','DB103','DF103','DJ103','DN103','DR103');

FAM_P2_T:array [1..28] of string =('N5','R5','V5','Z5','AD5','AH5','AL5','AP5','AT5',
'AX5','BB5','BF5','BJ5','BN5','BR5','BV5','BZ5','CD5',
'CH5','CL5','CP5','CT5','CX5','DB5','DF5','DJ5','DN5','DR5');

FAM_P2_B: array [1..28] of string =('N111','R111','V111','Z111','AD111','AH111','AL111','AP111','AT111',
'AX111','BB111','BF111','BJ111','BN111','BR111','BV111','BZ111','CD111',
'CH111','CL111','CP111','CT111','CX111','DB111','DF111','DJ111','DN111','DR111');

NAME_P2_T: array [1..28] of string =('N7','R7','V7','Z7','AD7','AH7','AL7','AP7','AT7',
'AX7','BB7','BF7','BJ7','BN7','BR7','BV7','BZ7','CD7',
'CH7','CL7','CP7','CT7','CX7','DB7','DF7','DJ7','DN7','DR7');

NAME_P2_B: array [1..28] of string = ('N113','R113','V113','Z113','AD113','AH113','AL113','AP113','AT113',
'AX113','BB113','BF113','BJ113','BN113','BR113','BV113','BZ113','CD113',
'CH113','CL113','CP113','CT113','CX113','DB113','DF113','DJ113','DN113','DR113');

OTH_P2_T: array [1..23] of string = ('AH9','AL9','AP9','AT9',
'AX9','BB9','BF9','BJ9','BN9','BR9','BV9','BZ9','CD9',
'CH9','CL9','CP9','CT9','CX9','DB9','DF9','DJ9','DN9','DR9');

OTH_P2_B:array [1..23] of string = ('AH115','AL115','AP115','AT115',
'AX115','BB115','BF115','BJ115','BN115','BR115','BV115','BZ115','CD115',
'CH115','CL115','CP115','CT115','CX115','DB115','DF115','DJ115','DN115','DR115');

PASSPORT_TYPE_P2: array [1..10] of string = ('J11','N11','R11','V11','Z11','AD11','AH11','AL11','AP11','AT11');
PASSPORT_SER_P2:  array [1..4] of string = ('BF11','BJ11','BN11','BR11');
PASSPORT_NUM_P2: array  [1..12] of string = ('BZ11','CD11','CH11','CL11','CP11','CT11','CX11','DB11','DF11','DJ11','DN11','DR11');

ADRES_V_P2:array [1..124] of string = ('B16','F16','J16','N16','R16','V16','Z16','AD16','AH16','AL16','AP16','AT16',
'AX16','BB16','BF16','BJ16','BN16','BR16','BV16','BZ16','CD16',
'CH16','CL16','CP16','CT16','CX16','DB16','DF16','DJ16','DN16','DR16',
'B18','F18','J18','N18','R18','V18','Z18','AD18','AH18','AL18','AP18','AT18',
'AX18','BB18','BF18','BJ18','BN18','BR18','BV18','BZ18','CD18',
'CH18','CL18','CP18','CT18','CX18','DB18','DF18','DJ18','DN18','DR18',
'B20','F20','J20','N20','R20','V20','Z20','AD20','AH20','AL20','AP20','AT20',
'AX20','BB20','BF20','BJ20','BN20','BR20','BV20','BZ20','CD20',
'CH20','CL20','CP20','CT20','CX20','DB20','DF20','DJ20','DN20','DR20',
'B22','F22','J22','N22','R22','V22','Z22','AD22','AH22','AL22','AP22','AT22',
'AX22','BB22','BF22','BJ22','BN22','BR22','BV22','BZ22','CD22',
'CH22','CL22','CP22','CT22','CX22','DB22','DF22','DJ22','DN22','DR22');

FFAM_RUS_P2: array [1..28] of String = ('N31','R31','V31','Z31','AD31','AH31','AL31','AP31',
  'AT31','AX31','BB31','BF31','BJ31','BN31','BR31','BV31','BZ31','CD31','CH31','CL31','CP31',
  'CT31','CX31','DB31','DF31','DJ31','DN31','DR31');

NAME_RUS_P2: array [1..28] of String = ('N33','R33','V33','Z33','AD33','AH33','AL33','AP33',
  'AT33','AX33','BB33','BF33','BJ33','BN33','BR33','BV33','BZ33','CD33','CH33','CL33','CP33',
  'CT33','CX33','DB33','DF33','DJ33','DN33','DR33');

OTH_RUS_P2: array [1..23] of String = ('AH35','AL35','AP35',
  'AT35','AX35','BB35','BF35','BJ35','BN35','BR35','BV35','BZ35','CD35','CH35','CL35','CP35',
  'CT35','CX35','DB35','DF35','DJ35','DN35','DR35');

GRAZD_P2: array [1..27] of String = ('R37','V37','Z37','AD37','AH37','AL37','AP37',
  'AT37','AX37','BB37','BF37','BJ37','BN37','BR37','BV37','BZ37','CD37','CH37','CL37','CP37',
  'CT37','CX37','DB37','DF37','DJ37','DN37','DR37');
PTYPE_P2: array [1..10] of string = ('J42','N42','R42','V42','Z42','AD42','AH42','AL42','AP42','AT42');
PSER_P2: array  [1..6] of string  = ('BF42','BJ42','BN42','BR42','BV42','BZ42');
PNUM_P2: array [1..10] of string  = ('CH42','CL42','CP42','CT42','CX42','DB42','DF42','DJ42','DN42','DR42');

PADRES_P2: array [1..124] of string = ( 'B47','F47','J47','N47','R47','V47','Z47','AD47','AH47','AL47','AP47','AT47',
'AX47','BB47','BF47','BJ47','BN47','BR47','BV47','BZ47','CD47',
'CH47','CL47','CP47','CT47','CX47','DB47','DF47','DJ47','DN47','DR47',
'B49','F49','J49','N49','R49','V49','Z49','AD49','AH49','AL49','AP49','AT49',
'AX49','BB49','BF49','BJ49','BN49','BR49','BV49','BZ49','CD49',
'CH49','CL49','CP49','CT49','CX49','DB49','DF49','DJ49','DN49','DR49',
'B51','F51','J51','N51','R51','V51','Z51','AD51','AH51','AL51','AP51','AT51',
'AX51','BB51','BF51','BJ51','BN51','BR51','BV51','BZ51','CD51',
'CH51','CL51','CP51','CT51','CX51','DB51','DF51','DJ51','DN51','DR51',
'B53','F53','J53','N53','R53','V53','Z53','AD53','AH53','AL53','AP53','AT53',
'AX53','BB53','BF53','BJ53','BN53','BR53','BV53','BZ53','CD53',
'CH53','CL53','CP53','CT53','CX53','DB53','DF53','DJ53','DN53','DR53');

DOC_BASE: array [1..44] of string = ('AL111','AP111','AT111',
'AX111','BB111','BF111','BJ111','BN111','BR111','BV111','BZ111','CD111',
'CH111','CL111','CP111','CT111','CX111','DB111','DF111','DJ111','DN111','DR111',
'AL113','AP113','AT113',
'AX113','BB113','BF113','BJ113','BN113','BR113','BV113','BZ113','CD113',
'CH113','CL113','CP113','CT113','CX113','DB113','DF113','DJ113','DN113','DR113');

implementation

end.
