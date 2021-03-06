CoB1w  Barionet.MIB��  BARIONETAPPVERSION� J  d0.gif��  d0s.gif��  d0ss.gif� F  d1.gif��  d1s.gif��#  d1ss.gif� X'  d2.gif
r(  errors.hlpT�8  logo.jpg� �N  notauthorized.html	�-vO  picfw.hex	 }  PICFW.VER�+}  seadistus.gif	 �  Thumbs.dbX�  uiconfig.html�!=�  uicontrol.html��  uidefaults.html`��  uidefaults2.html[S�  uifappsetup1.htmlY��  uifcontrol.htmlg�  uifdefaults.html
On�  uifio.htmld��  uifitemp.htmlY!�  uifnetwork.htmlcz�  uifreboot.html[��  uifsecurity.htmlW8�  uifserial.htmlS��  uifsnmp.htmlW��  uifstatus.htmlS9�  uiftemp.htmlS��  uiftime.htmlW��  uifupdate.html$6�  uigconf.gifGZ�  uigd.gifT ��  uigg.gif� ��  uigl.gif�	��  uiglogo.gif�x�  uigmconf.gif�2 uigmstat.gif� � uigs.gif3� uigstat.gifa� uihcontrol.html< uihdefaults.html
6C uihio.html@y uihnetwork.html�$ uihreboot.html?�% uihsecurity.htmls( uihserial.html��. uihsnmp.htmlDG3 uihstatus.html��6 uihtemp.html�v8 uihtime.html��; uihupdate.html	��A uiio.htmlISa uilogout.html��b uinetwork.htmlMWt uireboot.html��w uireboot2.html
�y uireboot3.html� �z uisaved.html��{ uisecurity.htmlrg� uiserial.html٩ uisnmp.htmlO�� uistatus.htmloC� uistatus2.html=�� uistatusn.html�$� uitemp.html��= uitime.htmln W uiupdate.html<�\ updateex.html��_ util.js HTTP/1.0 200
Content-type: text/plain

-- The Barix Barionet MIB leaf
-- The Barix MIB Registration Authority is barix.mib
-- Version:	2.1 
-- Date:	18 January, 2010
-- Copyright (c) 2005 Barix AG
--
-- Changes:
-- 20050322 KPS  Updated according to Barix MIB registration authority
-- 20050525 KPS  Cosmetic. Made sure comments start at beginning of line
-- 20100118 KPS  Cosmetic. Pointless changes to suit some new validation tools 

--          BARIX-MIB DEFINITIONS ::= BEGIN      --
         BARIONET-MIB DEFINITIONS ::= BEGIN

          IMPORTS
                  enterprises
                          FROM RFC1155-SMI
                  OBJECT-TYPE
                          FROM RFC-1212; 
                          
          DisplayString ::=
              OCTET STRING
          -- This data type is used to model textual information taken
          -- from the NVT ASCII character set.  By convention, objects
          -- with this syntax are declared as having
          --
          --      SIZE (0..255)

          PhysAddress ::=
              OCTET STRING
          -- This data type is used to model media addresses.  For many
          -- types of media, this will be in a binary representation.
          -- For example, an ethernet address would be represented as
          -- a string of 6 octets.

                          
 
 
                barix          OBJECT IDENTIFIER ::= { enterprises 17491 }
--                software       OBJECT IDENTIFIER ::= { barix 1 }          --
--                barionet       OBJECT IDENTIFIER ::= { software 1 }       --
               products       OBJECT IDENTIFIER ::= { barix 1 }
               barionet       OBJECT IDENTIFIER ::= { products 1 }

 
-- Barionet MIB, subject to change   --  
-- Parameters (Prefix  Par)          --
 
		bariState OBJECT-TYPE
			SYNTAX INTEGER (0..1)
			ACCESS read-only
			STATUS mandatory
			DESCRIPTION
				"a value which indicates the operational status
				 of the Barionet.
				 	0: down (The Barionet is in startup phase)
					1: up   (The Barionet has actual port data)"
			::= { barionet 1 }

-- The Barionet input table   --

		bariInputTable OBJECT-TYPE
			SYNTAX SEQUENCE OF BariInputEntry
			ACCESS not-accessible
			STATUS mandatory
			DESCRIPTION 
                  "A list of Barionet I/O variables, indexed 1..1000
                   The function of the various addresses can be looked up in the manual"
                        ::= { barionet 2 }

		bariInputEntry OBJECT-TYPE
			SYNTAX BariInputEntry
			ACCESS not-accessible
			STATUS mandatory
			DESCRIPTION
				"A specific digital input entry."
			INDEX   { bariInputIndex }
			::= { bariInputTable 1 }

		BariInputEntry ::= 
			SEQUENCE {
                bariInputIndex     INTEGER (1..1000),
				bariInputValue	   INTEGER (0..4294967295)
			}

		bariInputIndex OBJECT-TYPE
            SYNTAX  INTEGER (1..1000)
			ACCESS	read-only
			STATUS	mandatory
			DESCRIPTION
				"The variable number. one to 1000"
                        ::= { bariInputEntry 1 }
		

		bariInputValue OBJECT-TYPE
			SYNTAX	INTEGER
			ACCESS	read-write
			STATUS	mandatory
			DESCRIPTION
				"The current value of the variable "
                        ::= { bariInputEntry 2 }
				
          END


0230
/* * * * * * * * * * * * * * * * * * * * * * * * * * *
Vers  Date     Who  What
01.00 01.02.07 PK - initial revision based on v202_20061008
02.02 17.08.07 KS - the actual version V02.02 20061008 with following files updated:
                    index.html, uiconfig.html, uigconf.gif, uiglogo.gif, uigstat.gif, uihio.html,
                    uihserial.html, uimenu.html, uimenu0.html, 
                    Barionet.MIB, Barionet_MIB.zip 
      20.11.07 KS   Barionet.MIB, Barionet_MIB.zip Correct versions of mib added                 
02.25 27.02.09 DB - removed version information from the main page
                  - added DHCP hostname help
                  - added "TCP protocol subscriptions"
                  - added data.txt
02.30 19.01.10 JP - added security tab in configuration for password
                  - added password protection in all configuration pages (except TEMP)
               DB - added logout button in all configuration pages (except TEMP)
                  - added link to temperature sensor ID's page
02.30 15.03.10 DB - added production test files rdipt.bas, rdipt.tok, errors.hlp
                  - replaced corrected MIB files Barionet.MIB, Barionet_MIB.zip
*/
HTTP/1.0 200
Content-type: image/gif

GIF89a# " �  �&5���,    # "  S�����U�4DXs�R{��8q��ꣶN�2���qb�H~<���:B��9"A���,)����fmDYTn1%�B>j<���;Q  ;HTTP/1.0 200
Content-type: image/gif

GIF89a  �  ����&5կ���߮cm���S^�\g������2@�~����������Ҫ����ɗ�ҩ�ƒ�������������ݴox���fq�OZ���KX�+:�0>˜�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ,       � @�  p`P��tPHQ!f��Q�+t	��H�����#8$ ��� j��@'ɞ>;Zq(Q�F�Hz4��	-�	���JPx���4}8�+L8d<�Ue��l� \�"� ;HTTP/1.0 200
Content-type: image/gif

GIF89a  �  ����&5Ƒ���ɫ\g                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ,       J @@ ��\8�C�>� b �'
�HQ F�?�<(rdI�F:@%I�*Y
l�raJ�2
��P�E� ;HTTP/1.0 200
Content-type: image/gif

GIF89a# " �  �&5 � ,    # "  S�����U�4DXs�R{��8q��ꣶN�2���qb�H~<���:B��9"A���,)����fmDYTn1%�B>j<���;Q  ;HTTP/1.0 200
Content-type: image/gif

GIF89a  �   � �&5�:��ak$mY(��
����	��
�
 �/��0�0�2�3���F�G�N�Wy ^o#�df%ee%0�nV)uL+wI,yF-zD-zE-{C-�61�31�02�-3�*46�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ,       � H����XH@B�& �H��*�@P�#�
x	 ��H������*?� &��T9p�J}�@�H�F="MZq)ӉD/<�x@�Ω9�؂��%$uap�Q ������4 � ܁(�uBK� Ln@ ;HTTP/1.0 200
Content-type: image/gif

GIF89a  �   � �&5H�l]($�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ,       U H�`� ($ ��@
#FP�ċ&��q Ǐ7~�@�Ȉ%O�4�2� �	����K�2Z�q�K�9
�P@O�H ;HTTP/1.0 200
Content-type: image/gif

GIF87a  �  �!1�                    			


,       M�Ii�5�z��[��`ȑh`Ji�mnǭF�֍���8`PX�Sƣr��$�/hI��Q���5Ǵ-gJ�q�����3ڥ�� ;0  BCL file not exisiting or invalid tokencode version (use correct tokenizer version)
1  PRINT was not last statement in line or wrong delimiter used (allowed ',' or ';')
2  Wrong logical operator in IF statement (allowed '=','>','>=','<','<=','<>')
3  ONLY String VARIABLE can be used as parameter in OPEN,READ,MIDxxx,EXEC
4  Wrong delimiter/parameter is used in list of parameters for this statement/function
5  ON statement must be followed by GOTO/GOSUB statement
6  First parameter of TIMER statement must be 1..4 (# for ON TIMER# GOSUB...)
7  Wrong element is used in this string/numeric expression, maybe a type mismatch
8  Divided by Zero
9  Wrong label is used in GOTO/GOSUB statement (allowed only a numeric constant)
10 Wrong symbol is used in source code, syntax error, tokenization is impossible
11 Wrong size of string/array is used in DIM (allowed only a numeric constant)
12 Wrong type in DIM statement used (only string variable or long variable/array allowed)
13 DIM was not last statement in line or wrong delimiter used (allowed only ',')
14 Missing bracket in expression or missing quote in string constant
15 Maximum nesting of calculations exceeded (too many brackets)
16 Assignment assumed (missing equal sign)
17 Wrong size of external tokenized TOK file (file might be corrupt)
18 Too many labels needed, tokenization is impossible
19 Identical labels in source code found, tokenization is impossible
20 Undefined label in GOTO/GOSUB statement found, tokenization is impossible
21 Missing THEN in IF/THEN statement
22 Missing TO in FOR/TO statement
23 Run-time warning: Possibly, maximum nesting of FOR-NEXT loops exceeded
24 NEXT statement without FOR statement or wrong index variable in NEXT statement
25 Maximum nesting of GOSUB-RETURN calls exceeded
26 RETURN statement without proper GOSUB statement
27 Lack of memory for temporary 1 kilobyte buffer in WRITE
28 String variable name conflict or too many string variables used
29 Long variable name conflict or too many long variables used
30 Insufficient space in memory for temp string, variable or program allocation
31 Current Array index bigger then maximal defined index in DIM statement
32 Wrong current number of file/stream handler (allowed only 0..4)
33 Wrong file/stream type/type name or file/stream is already closed
34 This file/stream handler is already used or file/stream already opened
35 Missing AS statement in OPEN AS statement
36 Wrong address in IOCTL or IOSTATE
37 Wrong serial port number in OPEN statement
38 Wrong baudrate parameter for serial port in OPEN statement
39 Wrong parity parameter for serial port in OPEN statement
40 Wrong data bits parameter for serial port in OPEN statement
41 Wrong stop bits parameter for serial port in OPEN statement
42 Wrong serial port type parameter in OPEN statement
43 Run-time warning: You lost data during PLAY -- Please, increase string size
44 For TCP/CIFS file/stream only handler with number 0..5 are allowed
45 Only standard size (256 bytes) string variable allowed for READ and WRITE in STP file
46 Wrong or out of string range parameters in MID$ or MIDxxx
47 Only one STP/F_C file can be opened at a time
48 '&' can be used ONLY at the end of a line
49 Syntax error in multiline IF...ENDIF (maybe wrong nesting)
50 Length of Search Tag must not exceed size of target String Variable for READ
51 DIM string/array variable name already used
52 Wrong user function name or array declaration missing
53 General syntax error: wrong or not allowed delimiter or statement at this position
54 Run-time warning: Lost data during UDP READ -- Please, increase string size
55 Run-time warning: Lost data during UDP receiving -- 1k buffer limit
56 Run-time warning: Impossible to allocate 6 TCP handles, if 6 are needed free up TCP command port and/or serial local ports
57 Run-time warning: Lost data during concatenation of strings -- Please, increase target string size (DIM statement)
58 Run-time warning: Lost data during assignment of string -- Please, increase target string size (DIM statement)
59 Indicated flash page (WEBx) is out of range for this HW
60 COB file (F_C type) exceeds 64k limit
HTTP/1.0 200
Content-type: image/jpeg

���� JFIF  H H  �� C �� C��  ) � ��             	
��           ��    ��P H A@@A@ �}~X�Ұ�3f^k��'�n:������1��}mY9mT-�-a�!�69FTX�Y�gQ��a��S�Њ�����_�̙8�K��^��֗����
�ĝ�Rc�=��m0�Ueq.B|V��䧞_̧�ǂH�z���2�;��U�N�������
͗ũ6j���$S���a�Fq6=Y�	o1��k�?��|��zx">"O��C�o�i��J3������N� C���        �� %         735@ !4��  ��C��<b�/w�`�FZ����1���)<%�l�u�[�,{�[��,M���c�8ȯK}�Cm�|µcU$�\㳻C�=~}n��P}i��F��yh��Ж{S�XS���*���˱u�����Q{g��S=pXH�9��d��<��C�17��]��^8�����iUԈ��Y(U����qE�
��ս���b�+;k��vݻ��5l�w_�WnT�Y��Rbo��"�^,<��Q.��]U�=P�X���FH1 �_��1�L@�K��&醮��Ȯ�R��e'M����Eq���b؆	8���-�5U~�(eK\�(P������ 9 	        1!QaqA� "235@r����0cs�������� ?�w^i�p4صʍ��a��5!�8ڶ�
 ��Xf��-b�_�Q�#��5dY��>��;�\�`�:��00�C�t��Bv���a�A#�P�l3��l�H�������hx�J};�?�5�c�3՛�Lw�B�x����+�F[��]�;S�iIW£J�	��wU��6����'�e�Cjt4rR�,�s=����y(a�>�\��s�G߀��)��n{տ����4(�B�v�G*Ruw�Z�J@Z�"��T���]MР���67�4�l���!��� 3Q���Z�'�o��hj45dho�QʆT(q΍�e���rܑΫ%˨�Х��/�g
���QnQLv�|������nU��Q0�)1��9n���6���]�[��_�� >         !1Aq"Qa� #02@Rb����456rt������� ?�vXza��)�U{%"��l' LK��7.˩�N!*�W�t9OQ���.꿂�TNH�S�,N˪]ѹC>�rP��T�,�H�vZ޵`���U4v^�J\�p�5��|�.q���U�a�n�=�}�q_�\U�4��m�`&��iq<�]�r<����N)U��O��jܳ���\˩['�MII�Y�SL"i�s������4N�#:��u&�JVv���7��^���h���I���� �&*�)V�j���)�S��}� �A���3��+P�v�-Ɩ�Ym�b�b8�<�˰�J�{��$�/'Eų�]x�ڨ�cҿ.ϻR���#�k�Hq_�B���f8A��ps�A�({����P̤�]�&�	�hH��V���W�JZ���TˋH䔔l炉� 7�*��QĮ`��_e `���d������?�� C  
      !"12Aav#$3BQRbu�� @qst����Scr�����  ?��,%Q�m$�h�51�#�F"��MW�k⑻�_.@
ͯn��y����TOV9�ך7݊��wo��֣_�<2}-�[��qȎV/�0�A'��"/���%#M[���>)?ݦ�dX	�|a��3V�������7\U�X�5�62�IF�	�爈�1�v�D�"��N��6�D�O
`���h�g G�u����������p�|l���	lm[��,!�z�U�	�LN;x��{����ޢr1�Xvyz��>,�	5v��t]9�'���WT�L���FR�N ����j�����&��SCc�iuJ�R,WFs��A�]5]���ӗ� ��xU.�K}�8
��n ����wl_���}E1`[Wǂ��� B��A�EA���DR'6����Q����-,��&l�BS�&�Q��c{���LgRf{W�>�1u(
����#l*�"Gf�mNn�}���e�HX<;B���� �����\����UM��}��ҫ�CR��O����9���k�u�5"i�v�a%�ΗY0J�s��	ڵy��^OM{��T�u� @3^h�|Jᮈ������ͩ�@\����E�'��=k���;!A� {h֕����w�n����=��������P�'�+�*o��~�����9>�β�/��q�l�EY��V|R4N���#~PQŊl��b�P6Ț�x�X�Ln�{-{�#>�����&K��Wa6K.3E�y�D���@���۬~9�7 �i��GogZ�3Lx2�i�Y�X07�(�~�E�ݮ��Ο�V~7Y��� >�q�/���3��՝�c7�Q}���J4J��R<� I�dt��~�vm�Ӧ[:�1+.�f�y�5�bb+[��zoEw'vtک�2�ch�����Pw�_*;
Ak�#�����$y!���iDF/{^Ǧ�L�/hf
X$�*"���24�F��˧�]��_�5{Cs���3��_y����?�#џ=��������P�%�+�*o��~��c��"��^h�%EO4����^,����fj��s#͌���O�UV�2|� �Mq�z\�mW�g���F�D#{����O ؉��1�mE�A����g�u�ȟ`�"�Y� ���!:\ti�������{!Ƃ��lf*2CY�-jv��D�n��l�A�?+�p	I
��D�d�E��Xb����*+��6����n�͗mI%���Y&aǯ�$�R=�j���U�X���Z�����uS�̕���_��_��S���	�Ro�v�f�uN�i{���.��3&W�"̊]xg�V� ��Qv�W,`dʈ�����F��&9P����׵�zo���m��� :\�2�BPL�D�q�N\��S]�$���m8���y���^���Pn�
��:��25��r.����vq 4H`h��ݢ��6�sQ�D�����-�U�I�:�� ��M40�=;|��bU-� ���k*�p�ѕ�?j��(ؿ��J����[ )@�� [��f�UӚ�h��DZ�X��s�~�$�N)7�{Z*� <$�ǖ`O��Fu��D�����ȄQ�Ȟ[�t�ō<�V6�@Y1XB�hZ�{Byf"��G�.��k�u5QG
� Ak� �7*���'�� #        ! 1AQ a��0@q���  ?!�y��ã�590�!)�4�O��y��f�}��p(������y��	���[|���_�8ZMK��R�XZhn�+M��F=�s���"j�� PL�HS�uL������T_Tyw�Qє��sYY��89R�ƥT��MT�#�' ��>�rL�J� ��$Pm���<��O���2Qd.xx�X�d�'�C)��4ʇ� �80�x�KG�}c�oЌzN �ޙa�����HJ�|#Yq���ZAs%�Em�4��jBD>�hv�JEjhȚ�L�}�C�^��x����"af+�=�
����Ȍ��s�F�1,����� �u"D��R�aQ��ٰ�`�	�1%����Ϝ~��P^wuY;5����Q�� �|(�����g�8�s�3���g��I�����aU� �7�<�j�HA�$��`��M�]� " 3�{ۏO��&K��1&F5��r=`�BӾܞ�A�{P��,�a**�v.�;uypzb��ģT��X,�[��l$M�rK��*�_Ӟ������       ��  ����;. .��ن?D��O��]$1"�DI;p       �� #         !1AQqa� @����� ?�vm CB����*5Ur9/����v�5�s�Uɀ\��x1B]7xj��Un&8�qH���F���1�|��f[7�TT,V������s��9��R���ٳ��ȸq`L�����M4��(���C�cji�w��!��L��Pr�v��� ��4}Cdt�����+�V!�SSt�9G+m�ZZ��h`t��*u�8ƶ���Pu����]�sve� �>�ǿ�_~6t���-���5Nr��B�?؄��ۥm!���lE�R�h��j�U���~iwT�C� k���C���h�; ��� #        !1AQqa� @����� ?�T2����ti#gA
�Z0Cg/�R�
:����[CX���N�� _�Δy��p"�U�;E-�;M��H�?5V��j��{��2qO�2xrVnB P�*��T������T�AE &���8�f�����-Mآ�|��g��L�c���A�X��d���26�:m��4x�7J^K�� Y���7N��qlBF���<p�pP�����&�xK�G�+.{��m~��q�}�nǹ��Sw��M=&��t�G��˂l�����@ D�F��J�R�B:3G�Kih�]c�|�o�k�����Wl�*��g���k��� �� %        !1AQ aq����@��  ?śpF�1�S^�}��Y ���ۂ%��z.�yz�n����L]�_.��?{� ����z�U�L7��'�"]�,�@�FTT���Q�LY�S�҅>|���/G��8-YZ
u�i`���g:�JbaQ�D�#� 4��]O���i��b����'�O�T�|M߀��(�	�Y����QR�ȑ'QEH���pp� *� �/�J��"͢��jK{^tk�҄�w�����)����j{�f�A}*a}�a/R�����$����C\;�"�2���f�M���q[B�y��`���)T�w�o���տ���#�D\�)�kʆ����X	��J/��`aE;�mgE��Y|�^�[$�����IE+7I*�H�����N�f�)���0�\��d-��繸E ��5��� f 
 ���|S����,�{`O=��x鹐���"����A��lD��"!ƋGV�c?���p��h����P��J���&�����]�0x�3Y��`B#u���W�Xx?�`lx�?��5�+�b��9��[%�(CXL�0U-��*�O<al�`	<���\�h�C���r����]��
��PC[��7�MFGj� ��@sHݭ�gPUw��'�� /ycy�����R���HĀث}�B15�
��L�i��#/�`���'��2PH�,��{�N1���9�������HTTP/1.0 200
Content-type: text/html

<html>
<body><br>
<font size=2 face="Arial, Helvetica, sans-serif"><b>Your are not authorized!
</body>
</html>:040000008B010F2B36
:08000800F000030EF10083017A
:100010000408F2008A018C102E0803197828AF0B0F
:100020002F28820700005028612861286128612854
:10003000612861285B285E287128F41EAD11AD1976
:100040002E28320884002A080310741B2A0C800012
:10005000B20AC8303206B6300319B200AE01AC0B9A
:10006000AE287308AC002B0882078E28A528A72885
:10007000832880288828882888288828882888280D
:100080000610AD12290E2906C000C00DC00DC00615
:1000900020304019AD06C019AD06741EAD06AD285E
:1000A000061A2E28F801AA01AD11741EAD157308A9
:1000B000AF00AE0A2F28741F6128AE0AF41A612817
:1000C000AE0A061A69280310AA0C7308AF00AE0A1C
:1000D0002F280314AA0C0830AD067308AF00AE0A2F
:1000E0002F280830061AAD067308AF00AE0A2F2875
:1000F000061A2F280310730CAF00AF03AE0A2F2887
:10010000741F8828AB03F41A8828AB03F41FAB03D1
:10011000A90C03180614031C0610AD280614300899
:1001200031060319AE28741D97280619AE28F80168
:100130000B30AB00300884000008A900B00AB630CC
:100140003006A0300319B000AE280614AD28AD1A51
:100150000614AD1E0610F41FAB03AB0339080319D8
:100160003629BA0BD12882070000FB281129112952
:1001700011291129112911290B290E292729F61EC8
:10018000B811B819D0283D08840035080310761B33
:10019000350C8000BD0AF0303D06DE300319BD008D
:1001A000B901B70B83297508B700360882075E29A5
:1001B0007A297C294D294A29522952295229522922
:1001C000522952290512B812340E3406C000C00D4F
:1001D000C00DC00620304019B806C019B806761EFA
:1001E000B806822982078034403420341034083421
:1001F000043402340134F6190829861AD028F9018A
:10020000B501B811761EB8157508BA00B90AD1281B
:10021000061BD028FF28761F1129B90AF61A1129C2
:10022000B90A08300310F6191E29861A0314031898
:10023000B806B50C7508BA00B90AD128061B031414
:100240000318B806B50C7508BA00B90AD1280830E9
:10025000F6193029861AB8067508BA00B90AD128E5
:10026000061BB8067508BA00B90AD128F619422942
:100270008718D128861AD1280310750CBA00BA0342
:10028000B90AD128061BD1280310750CBA00BA038D
:10029000B90AD128761F5229B603F61A5229B60395
:1002A000F61FB603B40C03180516031C05128229A9
:1002B000F6185C2987108329F610832905163B0858
:1002C0003C0603195829F6196A29B908031D832920
:1002D000861E83298714F901F6140B30B6003B08FB
:1002E00084000008B400BB0ADE303B06C8300319A6
:1002F000BB00832905168229B81A0516B81E0512F7
:10030000F61FB603B603FA0B9729771D89298814BF
:100310008B29F70A8810781D8F2908159129F80A6A
:100320000811791D952988159729F90A88116E1CDD
:10033000252AFD080319082AFD1BF5297D1FCE2952
:100340007D1EB32986138316861383017D12000058
:10035000000000000000000000007E1C082A831638
:1003600086178301082AFD1DB729FD11082A7D1D66
:10037000BB297D11082AFD1CBF29FD10082A831600
:1003800086178301FF030319C929FE0C5E30FD00A7
:10039000082A8617831686138301072A7D1EDF2904
:1003A00086138316861383010000000000000000FE
:1003B000000000008316861783017D12082AFD1DA8
:1003C000E729FD110310FE0C861BFE17082A7D1D70
:1003D000EB297D11082AFD1CEF29FD10082AFF03D7
:1003E0000319072A3E30FD00082A7D1FFC298613C9
:1003F000831686138301042A8316861783017D18CA
:10040000042A861B042A3F14FD03FD1B082AFD0154
:100410008C1E172A9818212AF7016C0884001A08E4
:100420008000EC0A6C306C0643300319EC008C1829
:100430000B280A1572088400710E8300F00E700EEE
:1004400009001A0818121816172A7A18502A091DB6
:10045000392A891C392AFE1FFE0A8C1A0A2A8C188E
:100460000B280A1572088400710E8300F00E700EBE
:100470000900FE080319082AFE017F0CC000C00C09
:10048000C00C07304005483E840083177F080739B9
:1004900003198001F220891C80048313FF0A082AB3
:1004A000091C622A861D622AEF1FEF0A8C1A0A2A8B
:1004B0008C180B280A1572088400710E8300F00E48
:1004C000700E0900EF080319082AEF013F0CC00065
:1004D000C00CC00C07304005403E840083173F0825
:1004E000073903198001F220861D80048313BF0A97
:1004F000082A203094008316403094008312A4010F
:10050000A501A6010800240893008316141C862A5E
:1005100083128C1107160712250E93008316141CE4
:100520008F2A83128C11071507118512A2018619D3
:10053000A217091822178918A216091922162208CB
:10054000A2007C060319A72A2208FC00A92A220877
:10055000A6007B18D42A1F19CF2A18301F050310B4
:100560008400840C840C20308407831783161E08B3
:1005700083128000840A1E0880008313831686304D
:100580009F00831205080F392604A60083168230C7
:100590009F0083121F08083EDF399F007B14080864
:1005A0002606F039880608001F157B1027080F392A
:1005B0002604A600CF2A4330EC00ED008C128316EF
:1005C00018150430990018129817831298171816E6
:1005D0008316981683120800F70164000C1EED2A9A
:1005E0009900080010108E01C0308F00013090007B
:1005F00064006C086D06031D012B0C1CF82A0C10FE
:10060000E02B6D0884006B3004064330031D040AA0
:10061000ED000008080064006C086D060800830106
:10062000303085000130860040308700FE30880081
:100630000030890081309F0083166400CF30810034
:1006400082309F00CF308500FC30860080308700EC
:1006500000308800073089008130990026309800EA
:10066000830103173F308D0003131D26013E03193C
:10067000482BFF3E031D482B831686118612091056
:100680008910091183018615861609148914091524
:10069000031701308D0003131D26F300FC390830C9
:1006A0000319F3001D26F4001D26F500FC3908305F
:1006B0000319F5001D26F60083160E088312023971
:1006C000031D832B83168E1483120130A200A10117
:1006D000A001871F0610871B0614061E0713061AA3
:1006E000071700000000A00B692BA10B692B640009
:1006F0000314881F7D2B880D692B0310880D061F9E
:10070000822DA20B692BFE308800FD01A030B000C5
:10071000B100B630B300B2007308AC00AD01AE0159
:100720000130AB008610C830BB00BC00DE30BE001C
:10073000BD00750AB700B801B9010130B600033039
:10074000FA00920191018D104030831692008C14B2
:1007500083121215DB22FB017B14792203178D0112
:1007600003131D26A400031705308D0003131D2657
:10077000EE00EE090130EE05F030A800832283225E
:100780002608FF3AA7008230A000A101A10BC62BCA
:10079000A00BC52B0B178B17AD17B817FF018030B7
:0807A000FE00BF01EF00E02B99
:1007C000AD1BE725B81BC7256E18322CFF0803198F
:1007D0000C2CFE1F0C2C8C30EC22483084007F0C3B
:1007E000A200A20CA20C07302205A00007307F0552
:1007F000031DA00A200A0C1EFB2B99007F080C1E6B
:10080000FF2B9900831700080C1E042C9900840A02
:10081000A00B032C8313FF01BF080319322CEF1F19
:10082000322C8D30EC22403084003F0CA200A20C10
:10083000A20C07302205A00007303F05031DA00AC7
:10084000200A0C1E212C99003F080C1E252C990013
:10085000831700080C1E2A2C9900840AA00B292C4F
:100860008313BF01330832060319502C8430EC2265
:100870003308320203183E2C003C123CA0000C1E30
:100880003F2C99003308840000080C1E452C990069
:10089000C7300406B630031D040AB300A00B432C76
:1008A0003E083D0603196E2C8530EC223E083D02C1
:1008B00003185C2C003C123CA0000C1E5D2C99001F
:1008C0003E08840000080C1E632C9900EF300406DB
:1008D000DE30031D040ABE00A00B612C8322270812
:1008E0002606031D752CA80B832C8730EC220130C3
:1008F0000C1E782C990026080C1E7C2C99002608CA
:10090000A700F030A80004308A0010108E01F030EB
:100910008F00013090006D086C020318912C003C90
:10092000293CA200FE3E031CA02C6D0A84006C3AF8
:100930004330031984000008023EA2020318AD2CC4
:100940006D0884006C060319A82C80080319F22294
:100950000C1C8B2C0C101010E02B10100C10F22221
:10096000C100C1080319E02B163C031CE02BF22246
:10097000C200410882072F2D392DA22D8B2D6E2DFF
:10098000482D5B2D072ED32CB02D062D0D2D1B2DA4
:10099000202DFB2C0F2B2A2D252D262E582E5B2E9D
:1009A000672E5F2EE02B4210C208031DD92C832234
:1009B000E02B8030C100F2228207C10CC10CC10CB7
:1009C000C10CC10CC10CC10CEA2CF222013A031972
:1009D000F72CF92CF222013A0319F42C4108FF3AC2
:1009E000A505C203C203D42C4108A504F12C86142A
:1009F000F12C8610F12C8B30EC2201300C1EFE2CD9
:100A00009900F2220C1E022D9900E02BEE0803192A
:100A1000122D79260319122DE02BEE080319122D41
:100A20003F1D192D8930EC2200300C1E152D990028
:100A3000E02B8526E02BEE080319E02B3427E02B72
:100A4000EE080319E02B4A27E02BEE080319E02BF0
:100A5000BC27E02BEE080319E02BE227E02BC208AD
:100A6000031DE02B8030EC2200300C1E352D990048
:100A7000E02B8130EC220530EC223130EC222E309C
:100A8000EC223730EC223630EC220030EC22E02B26
:100A9000AD17C2080319E02B0123A200310884001E
:100AA00022088000B5300406A030031D040AB100FE
:100AB000C20B4C2DE02BB817C2080319E02B012301
:100AC000A2003C08840022088000DD300406C83003
:100AD000031D040ABC00C20B5F2DE02B0430C206CC
:100AE000031D872DF222313A031D872DF2222E3A63
:100AF000031D872DF222373A031D872DF222363A45
:100B0000031D872D8B0164001E308A00602E433048
:100B1000EC00ED00E02B02304206031D072EF2220E
:100B200003178D000313F222A0008230EC2220086C
:100B30000C1E982D99001D260C1E9C2D9900A00BB3
:100B40009B2DE02BF22203178D0003134203A0001C
:100B5000F22203178C0003130826A00BA82DE02B0C
:100B6000F222033903108400840D2030840788307A
:100B7000EC2202300C1EBA2D990083170008831353
:100B8000EC22840A831700088313EC22E02B3B0835
:100B90003C020318CD2D003C163C153C063C0318C6
:100BA00008008330EC2202300C1ED42D9900013055
:100BB0000C1ED82D99003B083C020318E12D003C87
:100BC000163C153C0C1EE22D9900B81308003008A5
:100BD00031020318ED2D003C163C153C063C031871
:100BE00008008330EC2202300C1EF42D99000030F6
:100BF0000C1EF82D9900300831020318012E003C1C
:100C0000163C153C0C1E022E9900AD130800E02B7B
:100C10000B08A200031783168C130C158B13553089
:100C20008D00AA308D008C148C18142E0C11831298
:100C30008D0A830122088B000800031783168C138A
:100C40000C1483120C088D0A830108008B13831285
:100C500098138316981283126400061E3C2E871B7D
:100C60002C2E0610A001061E432E871B3A2EA00B29
:100C7000332E4D2E06142C2E0713871F432E061ECF
:100C80003D2E07172C2E06100713871B4B2E061E12
:100C9000452E0717322E06143D2E0614871F4D2EA3
:100CA0008312981718168316981683128B17E02B49
:100CB000F222EE00E02B8E27FF30FD00E02B8E2786
:100CC000F222FE000830FF005E30FD00E02B8E2790
:100CD0008F30EC220130EC22FE010830FF003E3064
:100CE000FD008E277E08EC22E02BFF30FD008E27D2
:100CF00008000830A0004830840083178001831367
:100D0000840AA00B7D2EBF01BF147526F030FE00B3
:100D10000830FF005E30FD008E274030A000A301A8
:100D2000FE010230FF003E30FD008E277E0C7E0665
:100D30004039031DF52E7E1B0800BF1CB12E200379
:100D40008400840C840C840C0730840548308407AC
:100D5000200307399B272208831780048313FE0191
:100D6000F52E20038400840C840C840C0730840549
:100D7000483084072003073993272208831700058A
:100D80008313031DE22E0408483A0319CE2E840370
:100D9000831780088313031DE22EC32EBF14200384
:100DA0008400840C840C840C07308405483084074C
:100DB000200307399B272209831780058313FF30FF
:100DC000FE00F52EFE0120038400840C840C840CAC
:100DD0000730840540308407200307399B27220809
:100DE000831700058313031DFE097E1B7E14031069
:100DF000A30C7E18A3170130FF005E30FD008E2784
:100E000020030739031D122F20038400840C840C57
:100E1000840C073084054030840723088317800042
:100E20008313A301A00B902EBF108930EC22083051
:100E3000EC220830A0004030840020038407831790
:100E400000088313EC22A00B1B2F0830A0004830B1
:100E50008400831780088313031D0800840AA00BF5
:100E6000292F03153F1508006F2775265530FE0002
:100E70000830FF005E30FD008E277D274430FE00E5
:100E80000830FF005E30FD008E278617831686131C
:100E9000830108006F278316861783017526553056
:100EA000FE000830FF005E30FD008E277D27BE303B
:100EB000FE000830FF005E30FD008E278A30EC22F5
:100EC0000930EC220930A000FE010830FF003E305E
:100ED000FD008E277E08EC22A00B642F080047300F
:100EE000A200F222A30022088400230883178000B6
:100EF0008313A203C20B712F08004730840008300F
:100F0000A000831700088313FE000830FF005E3046
:100F1000FD0084038E27A00B812F08006400FD08CC
:100F2000031D8E2F0800A201FF39031908000314C6
:100F3000A20CFF3E942FA201A217FF39031908004B
:100F40000310A20CFF3E9D2F0F39A2003030A207E4
:100F50003A30220207300318A20731083006031D79
:100F6000AD2F3108840022088000B5300406A0307F
:100F7000031D040AB10008006F278316861783013A
:100F800075265530FE000830FF005E30FD008E27CC
:100F90007D276630FE000830FF005E30FD008E27A2
:100FA0008E30EC220530EC220530A000FE01083026
:100FB000FF003E30FD008E277E08EC22A00BD62FCE
:100FC000752608000830C2006F2783168617830134
:100FD00075265530FE000830FF005E30FD008E277C
:100FE0007D279930FE000830FF005E30FD008E271F
:100FF00064000530A000F222FE000830FF005E30E1
:10100000FD008E27A00BFB2F75260800A200220EE4
:101010000F39A3003030A3073A30230207300318FA
:10102000A3072308EC2222080F39A3003030A307BE
:101030003A30230207300318A3072308EC220800E4
:02400E00763FFB
:00000001FF
1.76 - digital output fix
HTTP/1.0 200
Content-type: image/gif

GIF89ao  �  ����Zc�9J�!1   ������������������������BBB������������   ��������������������������ؔ����������������������������������ぁ�rrrfff���___hhh


������UUU222���555888���������KKK�����������ķ��MMM������!!!������LLL������������������NNN�����ȣ�����ccc"""������DDD���PPPCCC���$$$)))��ݏ����ߌ��;;;���:::999���%%%���������444������111zzzxxxttt000VVV			llljjj...,,,��ʳ��***                                                                                                                                                                                                                                                                                                                                                      ,    o   � (����*\Ȱ�Ç�81� h�ȱ�Ǐ C�I��� ^4ɲ�˗0;V�	`A#	4z(�� �T�	�BO (�@c�n4��Y�M�4��1��$h� #Lzl�T���h4¢���r�q��� `#�7p	�Q@��� hP���.bA@���Rh �L��4ҨA�
^!0I����d��cā0�D���1 � �� � ͊���	�RK�!�{�j�����4��
G �~�BƋ�Rh�����38��@�ӽ�6�QC[�5�DԱ� ���1� 
G���W_c�� ���W�u`Kh� R$�iyX`cND�!��!w�� �E��"���y� ��+$��1�)v�ALH��3��i<���?�@�N ��y���
C,a[E��,��$}JMP �@P�f���F���RI�w��W� #�B^o��H_��v"Cj 8	�>�u� `1���Ĥ�e�I(�Q��,	'���(��*e@j
��-pG`����%@EǺ+��TV����)M$@  ,��l��'����o@ ;��ࡱ�                >  ��	                               ����        ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������                  	   
   ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������R o o t   E n t r y                                               ��������                               ��ؖa�   �       1                                                                ����   ����                                       �      C a t a l o g                                                     ������������                                        p                                                                           ������������                                                      �  ���� JFIF  ` `  �� C 


�� C		��  ` `" ��           	
�� �   } !1AQa"q2���#B��R��$3br�	
%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������        	
�� �  w !1AQaq"2�B����	#3R�br�
$4�%�&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������   ? ��Ϗ-�=�0�6�t�}B�ʵ�2�V��|��NL|K� �p����� ��C��@<i�+�)M��#�JFJ���$@H�zt^i� "�̳<u\]NJ�
2�RW�-��Z���k%���4���͢}:��g	�="Ln���o4� �5S�{�� �I�� 4� �5]����Q��+���c� Ar�� s�����'>+i�� h-��Ef�l��}gʞ��*���]�'�4'�� ��O�i���]���ߕi�����q�Ї"�_�)��ȇ�%�����H�� �<?� >���L� �?�<?� >���L� ����o��/�>$x���Z7�%��uk�$���24qL襈��(� �+�)����𚯯خ�"��x��?k:�K�+�Ϯ��72�XL?4������K͟u� �Bx�}�� ���� �t�Bx�}�� ���� �u��� ��|M�΋�2{es� ���Q�(�]�n}>�s� �5��5��V"?�� ?��Z�g�z~�XD�Wv��_%��\����� ��'�4��K����Kp��b��x%YYFYU�E�ʹ�H@![�?��ω� ����� �E}���nOi� <U{o:��7W�J�d�'����3��I#'�N}��0x�+8�3�cnT�in�K��cr���z���i_es��'���"� �Z�\����x���r��1��;,-O
��}�$�'Ǻṟmcs)`F�zW[��?0��y�C���S��u�b߿?�)�<�J6�$u��\�����0�6����� ;�~P~_�����#�"���f�-�]-��"RAV��$����^���+#��{)=��o�}r��?�n��T�֕\��l>�Ђ?R�x����m��ՖF*�����O��]�
���G���ps��c�S�l%�;|Dr>Q�=D����2W']���GƟ�9��-D�wRW^�+,D�{%e�����ynOB1^��J��V�-�W�QEq�bV��ȡ�d��rk�����ÿ����֟�h��&�����W��WO��H��ሔ����X[�4-���ӡ*8�k���]���k��Y6<W�/�	�� �6��d��ho��b?�%���և�^N5� �W� � ��;��1�_�,���y��[̣̮+�!g��귙G�EÐ�����3�@��G���� ORW]/Ʃ���?	$)����	����d]�r+鱘I�ji{�I�ק�������a�Q��U)�E���R\�og��㨢�@<
�m%v��� �5���e�x�NNO�u�� �L��)wp$Q�����g�� ���k� ��k�xYa�u4r�;ZH�R�W7��N�ԡIO�N�G[[K+[��ߍ|O� b|O׾����{�����Zm��݃�;q�g���m��Ӭ������8���p2p��}����ύ���n���x��1�3i>���tԾ{�/g��<$�&;
�=G8��zyv]���qN�n�I�k�>��s�0?X���(��W�}O{�{����ZJ]��d�0U��U�w��?3�dm�zQ��� ����� ׭�+��e��]��� 3�*cjNW�Q]���;�V�߅�x�W"��B�Xm�E�~���~\g����|7�t_k4O
�n4[�GP��ss��x<�Ucku'�c#>��诖i�����m��28u�E`�%���q?3`�Ɋ�0�Jp��O������m
��8�-vwk_=l|��Wx�?�-݋�3Ě�溏�M,ս�q��nECg!�(H%����>M�7���v>�}�͐ۻ2xy�3^��sh�"��X��Γ@�����$� �T����8hd�E��;6Ь��J��5�y�}����T�Rq�]����q���^�Pq�.q�"�խ�4�j��i��ǜ[�?��-�E�}⽮����$`��A�#5�����&^�a��&�n�8���{��������kV�g������*� ��W��8�ӭ�[[��$ץ���~'��Mq5z��oMN�ѨN�����I��x�t��1񞁠�?�?�]B����[?��ȩ�o��n�23���M�1����4�l�[=-͔/9FH���K '
3�{
���� ���� ��"I��:����HؿkO�$��1�{��z6|s���� �� H�+�f.�+����p������u���Jٮ;��f	�Q�	I={5�f�i��������Ʊ� N7_�j���|�-�|9H�j���Fs�[�Ԛ��͏
|i��s� ��k������� g���Q�������g<z�2�k�r��o�|����/��I��� �ON��+�ϗ
����i��v��מ�)�����m4])7�� ��-G8�enzJ��� ~��5�����|�;��kM��sC�Et9<7��\�L:�V~>^-��5�F��q�e�H�E���ফW�s}f�� �6�[���5Ƥx�<����oO{o��w
(��T�θ���<]��Bhw����w���F���+p@��&��x������� �+���� �0i�6�.�"H��:������� c��#����,[>=�o�O� �w�f@��x?i{:����ᷗ77���g�T�q��,M��ww\��>^��)��s=�8ߏ'��?���� MP����[o��#�G�5�ъ��.�X!��
'�O:Ve?3מ8�}U�k�׈�F<o���s^Zx���K�i`� G�h��rI,d�([����>F� �r���5��� ���C.�<'�i�sT�V�6�m�b���XF����WQꮚG�֝��j�P^Y�Euk2,���VR�j�|a����b���"�(E�p\�X]D�6�%�e
  d��k������yk/��	�)vy��6��N-��>r����_J�zi�� �U?���et���&�_��}��V�E��w�1ZZǍ�O D\�I H�|]�@�Ԗ>/�����>�#�����T��Ȟ���E"�p��Nzt��3��@���쵯��֎<6�~�j����n�<��A\�`oxG����_�f_A{�}��<�.E}���q���3ҹqY�*R�!N��� ˪����e�,^�����d��y��u�Mi�F�	^	WB�l��V��G��-�(����e�A��$u\��9�^����H�g������ F�=�Yy;9�m�Gݻ�k����;u��/�'W���d��Q�E9V[;0A���𸬳�e���ԍH-�SN��_�<1�.�l��me
���j�WMlӷ]�Ve���H��������X~(����b����{���L7�'��8�]��~ �����<�_�O���_�O���S�.����b�M�|��0񪥈�G�R��� ���e4�Q�a���M7���~���[m��~�t�2�����TƋ�Y$q�,~Ԥu����c��|������ H�+�O���,����=w̿��̾����-�y�\��w}��;q�g�}o�����:%���6�k�K-��sq���Q�wf@y a[����a��:x:3P���&�Ji���S�Z�r�8<�QT���)=�v[ݟ��                                                                                                                                                                                                                                                                                                                                                   ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������     `   `   `      Fqؖa�{ A 4 2 C D 7 B 6 - E 9 B 9 - 4 D 0 2 - B 7 A 6 - 2 8 8 B 7 1 A D 2 8 B A }                                                                                                                                                                                                                                                                                                                                                                                                                     HTTP/1.0 200
Content-type: text/html

<html>
<head>
<title>Configuration</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<frameset rows="116,*,0" frameborder="NO" border="0" framespacing="0">
  <frame src="uimenu.html" name="menu" scrolling="NO" noresize marginwidth=5 marginheight=5 frameborder=0 framespacing=0>>
  <frame src="uifnetwork.html" name="config" marginwidth=5 marginheight=5 noresize frameborder=0 framespacing=0>>
  <frame src="UntitledFrame-2" name="empty" scrolling="no" noresize></frame>
</frameset><noframes></noframes>
</html>
HTTP/1.0 200
Content-type: text/html

<html>&L(0,"*",2);
  <head>
    <script language=JavaScript src=util.js></script>
  </head>
  <body bgcolor=#FFFFFF link=#FFFFFF vlink=#FFFFFF leftmargin="0">
    <font size=3 face=Arial>
	<form action=setup.cgi method=get target=_top>
		<table width=640 height="55" border=0 cellpadding="0" cellspacing="0">
			<tr>
				<td valign="middle"><font size=3><b>&nbsp;SETTINGS</td>
				<td align="right" valign="middle">&LSetup(3,"%s",125,W,0,"<!--");<input type=hidden name=L value=uilogout.html><input type=hidden name=D><input type=submit value=" Logout ">&LSetup(3,"%s",125,W,0,"-->");</td>
			</tr>
		</table>
	</form>
    <table width=720 cellpadding="0" cellspacing="0" bgcolor=#8F2635>
      <tr align="center">
        <td width=80 height=30 background="uigl.gif"><font size=1><a href="uifnetwork.html" title="NETWORK SETTINGS" target="config">NETWORK</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifserial.html" title="SERIAL SETTINGS" target="config">SERIAL</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifio.html" title="INPUT/OUTPUT SETTINGS" target="config">I/O</a></td>
        <td width=80 background="uigs.gif"><font size=1>CONTROL</td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifsnmp.html" title="SNMP SETTINGS" target="config">SNMP</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uiftime.html" title="NTP TIME SETTINGS" target="config">TIME</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uiftemp.html" title="1-WIRE TEMPERATUR SENSOR SETTINGS" target="config">TEMP</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifsecurity.html" title="PASSWORD SETTINGS" target="config">SECURITY</a></td>
        <td width="80" valign="bottom" bgcolor="#FFFFFF"><img src="uigg.gif" width="80" height="1"></td>
      </tr>
    </table><br>
	<table>
      <form action=setup.cgi method=get><td><input type="hidden" type="text" name=L value=uisaved.html>
      <tr>
        <td><b><font size=2>UDP command port</td>
        <td>
          <input name=W56 size=5 maxlength=5 value=&LSetup(1,"%u",56,W); onChange=PortCheck(this)></td>
        </tr>
      <tr>
        <td><b><font size=2>TCP command port</td>
        <td>
          <input name=W62 size=5 maxlength=5 value=&LSetup(1,"%u",62,W); onChange=PortCheck(this)>
        <b><font size=2> &nbsp Timeout
          <input name=B96 size=3 maxlength=3 value=&LSetup(1,"%u",96,B); onChange=ByteCheck(this)>
        </b><font size=2> seconds</td>
      </tr>
      <tr>
        <td><b><font size=2>TCP protocol default subscriptions</td>
        <td>
           <select size=1 name=B71b0>
                  <option value=1&LSetup(3,"%s",71,b0,1," selected");>None</option>
                  <option value=0&LSetup(3,"%s",71,b0,0," selected");>Legacy</option>
                </select>
        </td>
      </tr>
      <tr>
        <td><b><font size=2>TCP protocol add subscriptions</td>
        <td>
           <select size=1 name=B71b1>
                  <option value=1&LSetup(3,"%s",71,b1,1," selected");>With getio/setio</option>
                  <option value=0&LSetup(3,"%s",71,b1,0," selected");>None</option>
                </select></td>
      </tr>
       <tr>
        <td><b><font size=2>Modbus/TCP timeout</td>
        <td>
          <input name=B97 size=3 maxlength=3 value=&LSetup(1,"%u",97,B); onChange=ByteCheck(this)>
        </b><font size=2> seconds</td>
      </tr>
      <tr>
        <td><b><font size=2>WEB server port</td>
        <td>
          <input name=W8 size=5 maxlength=5 value=&LSetup(1,"%u",8,W); onChange=PortCheck(this)></td>
        </tr>
      <tr>
        <td><b><font size=2>Lockdown mode</td>
        <td>
          <input name=W10 size=5 maxlength=5 value=&LSetup(1,"%u",10,W); onChange=PortCheck(this)></td>
        </tr>
       <tr>
        <td><b><font size=2>BCL Program Name</td>
        <td>
          <input name=S100 size=8 maxlength=8 value=&LSetup(1,"%s",100,S); ></td>
	</tr>
      <tr>
        <td><b><font size=2>UDP info send to</td>
        <td><font size=2>
        <input name=B52 size=3 maxlength=3 value=&LSetup(1,"%u",52); onChange=IPCheck(this)><b> . </b>
        <input name=B53 size=3 maxlength=3 value=&LSetup(1,"%u",53); onChange=IPCheck(this)><b> . </b>
        <input name=B54 size=3 maxlength=3 value=&LSetup(1,"%u",54); onChange=IPCheck(this)><b> . </b>
        <input name=B55 size=3 maxlength=3 value=&LSetup(1,"%u",55); onChange=IPCheck(this)> (0.0.0.0 for no info)</font></td>
      </tr>
      <tr>
        <td><b><font size=2>UDP destination port&nbsp;</td>
        <td colspan="3">
          <input name=W58 size=5 maxlength=5 value=&LSetup(1,"%u",58,W); onChange=PortCheck(this)></td>
        </tr>
      <tr>
        <td><b><font size=2>UDP interval</td>
        <td colspan="3">
          <input name=W60 size=5 maxlength=5 value=&LSetup(1,"%u",60,W); onChange=PortCheck(this)></td>
        </tr>
        <tr>
              <td><font size=2><b>Interface</td>
              <td><font size=2><b>Usage / Status Change</td>
        </tr>
            <tr>
              <td><b><font size=2>Input #1</td>
              <td>
                <select size=1 name=B67b0>
                  <option value=1&LSetup(3,"%s",67,b0,1," selected");>Analog
                  / Change not sent</option>
                  <option value=0&LSetup(3,"%s",67,b0,0," selected");>Digital
                  / Change sent</option>
                </select>
              </td>
            </tr>
            <tr>
              <td><b><font size=2>Input #2</td>
              <td>
                <select size=1 name=B67b1>
                  <option value=1&LSetup(3,"%s",67,b1,1," selected");>Analog
                  / Change not sent</option>
                  <option value=0&LSetup(3,"%s",67,b1,0," selected");>Digital
                  / Change sent</option>
                </select>
              </td>
            <tr>
              <td><b><font size=2>Input #3</td>
              <td>
                <select size=1 name=B67b2>
                  <option value=1&LSetup(3,"%s",67,b2,1," selected");>Analog
                  / Change not sent</option>
                  <option value=0&LSetup(3,"%s",67,b2,0," selected");>Digital
                  / Change sent</option>
                </select>
              </td>
            </tr>
            <tr>
              <td><b><font size=2>Input #4</td>
              <td>
                <select size=1 name=B67b3>
                  <option value=1&LSetup(3,"%s",67,b3,1," selected");>Analog
                  / Change not sent</option>
                  <option value=0&LSetup(3,"%s",67,b3,0," selected");>Digital
                  / Change sent</option>
                </select>
              </td>
            </tr>
      <tr>
        <td>&nbsp;</td>
	  </tr>
      <tr>
        <td><b><font size=2>Syslog Server</td>
        <td><font size=2>
        <input name=B80 size=3 maxlength=3 value=&LSetup(1,"%u",80); onChange=IPCheck(this)><b> . </b>
        <input name=B81 size=3 maxlength=3 value=&LSetup(1,"%u",81); onChange=IPCheck(this)><b> . </b>
        <input name=B82 size=3 maxlength=3 value=&LSetup(1,"%u",82); onChange=IPCheck(this)><b> . </b>
        <input name=B83 size=3 maxlength=3 value=&LSetup(1,"%u",83); onChange=IPCheck(this)></td>
      </tr>

      <tr>
        <td><b><font size=2>Syslog Debug Level</td>
        <td><font size=2>
         <select size=1 name=B92>
           <option value=0;&LSetup(3,"%s",92,B,0," selected");>0</option>
           <option value=1;&LSetup(3,"%s",92,B,1," selected");>1</option>
           <option value=2;&LSetup(3,"%s",92,B,2," selected");>2</option>
           <option value=3;&LSetup(3,"%s",92,B,3," selected");>3</option>
           <option value=4;&LSetup(3,"%s",92,B,4," selected");>4</option>
           <option value=5;&LSetup(3,"%s",92,B,5," selected");>5</option>
           <option value=6;&LSetup(3,"%s",92,B,6," selected");>6</option>
           <option value=7;&LSetup(3,"%s",92,B,7," selected");>7</option>
           <option value=8;&LSetup(3,"%s",92,B,8," selected");>8</option>
           <option value=9;&LSetup(3,"%s",92,B,9," selected");>9</option>
         </select>
        </font><b><font size=2> &nbsp Flags
          <input name=B93 size=3 maxlength=3 value=&LSetup(1,"%u",93); >
        </td>
      </tr>
      <tr><td>&nbsp;</td></tr>
	  <tr>
        <td>
          <input type="submit" value=" OK ">
          <input type="reset" value=" Cancel ">
       </td>
      </tr>
      </form>
    </table>
</body>
</html>
HTTP/1.0 200
Content-type: text/html

<html>
<body BGCOLOR=#ffffff vlink=#000000 link=#000000><br>
<table border="0" cellspacing="0">
  <tr>
    <td height="15" valign="baseline"><font size="3" face="Arial"><b>Defaults</b></font></td>
    <td valign="baseline"><font size="2" face="Arial">&nbsp; </font></td>
  </tr>
  <tr>
    <td height="3" colspan="2"><img src="uigg.gif" width="550" height="1">    </td>
  </tr>
  <tr>
    <td valign="baseline" bordercolor="#CCCCCC">&nbsp;</td>
    <td valign="baseline">&nbsp;</td>
  </tr>
  <tr>
    <td valign="baseline" bordercolor="#CCCCCC"><font size="2" face="Arial"><b><a href="setup.cgi?L=uidefaults2.html&F" >Factory
    defaults</a></b></font></td>
    <td valign="baseline"><p><font size="2" face="Arial">Reverts
          all settings except &quot;Network configuration&quot; to factory defaults.<br>
      
      To apply the change reboot the device
    </font></p>
    </td>
  </tr>
</table>
</body>
</html> 
HTTP/1.0 200
Content-type: text/html

<html>
<head>
  <meta http-equiv="refresh" content="2; url=uireboot.html">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head>
    <body bgcolor=#FFFFFF link=#8F2635 vlink=#8F2635><br>
	<p><font size="3" face="Arial"><b>Settings reverted to factory defaults.</b></font>
</html>HTTP/1.0 200
Content-type: text/html

<html>
<frameset cols="680,*" frameborder="NO" border="0" framespacing="0">
  <frame src="uiappsetup1.html" marginwidth=5 marginheight=5 frameborder=0 framespacing=0>>
  <frame src="uihappsetup1.html" marginwidth=5 marginheight=5 frameborder=3 framespacing=5>>
</frameset><noframes></noframes>
</html>HTTP/1.0 200
Content-type: text/html

<html>
<frameset cols="680,*" frameborder="NO" border="0" framespacing="0">
  <frame src="uicontrol.html" marginwidth=5 marginheight=5 frameborder=0 framespacing=0>>
  <frame src="uihcontrol.html" marginwidth=5 marginheight=5 frameborder=3 framespacing=5>>
</frameset><noframes></noframes>
</html>
HTTP/1.0 200
Content-type: text/html

<html>
<frameset cols="680,*" frameborder="NO" border="0" framespacing="0">
  <frame src="uidefaults.html" marginwidth=5 marginheight=5 frameborder=0 framespacing=0>>
  <frame name="help" src="uihdefaults.html" marginwidth=5 marginheight=5 frameborder=3 framespacing=5>>
</frameset><noframes></noframes>
</html>
HTTP/1.0 200
Content-type: text/html

<html>
<frameset cols="680,*" frameborder="NO" border="0" framespacing="0">
  <frame src="uiio.html" marginwidth=5 marginheight=5 frameborder=0 framespacing=0>>
  <frame src="uihio.html" marginwidth=5 marginheight=5 frameborder=3 framespacing=5>>
</frameset><noframes></noframes>
</html>
HTTP/1.0 200
Content-type: text/html

<html>
<head>
<title>BARIX Barionet configuration</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<frameset rows="116,*,0" frameborder="NO" border="0" framespacing="0">
  <frame src="uimenu.html" name="menu" scrolling="NO" noresize marginwidth=5 marginheight=5 frameborder=0 framespacing=0>>
  <frame src="uiftemp.html" name="config" marginwidth=5 marginheight=5 noresize frameborder=0 framespacing=0>>
  <frame src="UntitledFrame-2" name="empty" scrolling="no" noresize></frame>
</frameset><noframes></noframes>
</html>
HTTP/1.0 200
Content-type: text/html

<html>
<frameset cols="680,*" frameborder="NO" border="0" framespacing="0">
  <frame src="uinetwork.html" marginwidth=5 marginheight=5 frameborder=0 framespacing=0>>
  <frame src="uihnetwork.html" marginwidth=5 marginheight=5 frameborder=3 framespacing=5>>
</frameset><noframes></noframes>
</html>
HTTP/1.0 200
Content-type: text/html

<html>
<frameset cols="680,*" frameborder="NO" border="0" framespacing="0">
  <frame src="uireboot.html" marginwidth=5 marginheight=5 frameborder=0 framespacing=0>>
  <frame name="help" src="uihreboot.html" marginwidth=5 marginheight=5 frameborder=3 framespacing=5>>
</frameset><noframes></noframes>
</html>
HTTP/1.0 200
Content-type: text/html

<html>
<frameset cols="680,*" frameborder="NO" border="0" framespacing="0">
  <frame src="uisecurity.html" marginwidth=5 marginheight=5 frameborder=0 framespacing=0>>
  <frame src="uihsecurity.html" marginwidth=5 marginheight=5 frameborder=3 framespacing=5>>
</frameset><noframes></noframes>
</html>
HTTP/1.0 200
Content-type: text/html

<html>
<frameset cols="680,*" frameborder="NO" border="0" framespacing="0">
  <frame src="uiserial.html" marginwidth=5 marginheight=5 frameborder=0 framespacing=0>>
  <frame src="uihserial.html" marginwidth=5 marginheight=5 frameborder=3 framespacing=5>>
</frameset><noframes></noframes>
</html>
HTTP/1.0 200
Content-type: text/html

<html>
<frameset cols="680,*" frameborder="NO" border="0" framespacing="0">
  <frame src="uisnmp.html" marginwidth=5 marginheight=5 frameborder=0 framespacing=0>>
  <frame src="uihsnmp.html" marginwidth=5 marginheight=5 frameborder=3 framespacing=5>>
</frameset><noframes></noframes>
</html>
HTTP/1.0 200
Content-type: text/html

<html>
<frameset cols="680,*" frameborder="NO" border="0" framespacing="0">
  <frame src="uistatus.html" marginwidth=5 marginheight=5 frameborder=0 framespacing=0>>
  <frame src="uihstatus.html" marginwidth=5 marginheight=5 frameborder=3 framespacing=5>>
</frameset><noframes></noframes>
</html>
HTTP/1.0 200
Content-type: text/html

<html>
<frameset cols="680,*" frameborder="NO" border="0" framespacing="0">
  <frame src="uitemp.html" marginwidth=5 marginheight=5 frameborder=0 framespacing=0>>
  <frame src="uihtemp.html" marginwidth=5 marginheight=5 frameborder=3 framespacing=5>>
</frameset><noframes></noframes>
</html>
HTTP/1.0 200
Content-type: text/html

<html>
<frameset cols="680,*" frameborder="NO" border="0" framespacing="0">
  <frame src="uitime.html" marginwidth=5 marginheight=5 frameborder=0 framespacing=0>>
  <frame src="uihtime.html" marginwidth=5 marginheight=5 frameborder=3 framespacing=5>>
</frameset><noframes></noframes>
</html>
HTTP/1.0 200
Content-type: text/html

<html>
<frameset cols="680,*" frameborder="NO" border="0" framespacing="0">
  <frame src="uiupdate.html" marginwidth=5 marginheight=5 frameborder=0 framespacing=0>>
  <frame src="uihupdate.html" marginwidth=5 marginheight=5 frameborder=3 framespacing=5>>
</frameset><noframes></noframes>
</html>
HTTP/1.0 200
Content-type: image/gif

GIF89aP J �  �����׼}��&5!� � ,    P J  ���������ڋ�޼���H�扦�ʶ�+��2��7"�3��'�uB��x���a�+&�����	�Ыx<> �U�@{���=7��Y�J����c ��շ��G���(ȅ���ذɇ��T��g�������T���� U:�iKk(�j�$�X`�**�K8Z9���z� '
���<�V��)*���V7H��f̴P>� �#��S.��J'd�N��<�0�qsp���CU�x��!kb1��:��#W(8W�9��JC*5j�fEc涙�F�Έ�F�y�C^ ����;�K16�WM�N�h.���:�E��A	��Yȸm��fl�jJ�>�
$:@o�sd0}��y���۩{�M;����`"kw�31kC���p��v;��ݤ�z�5�$#��
[�~;��ٴk۾�;��ݼ{��<���ċ?�<���̛;�]  ;HTTP/1.0 200
Content-type: image/gif

GIF89aY� �  ����&5   ,    Y�  ���������ڋ�޼���H�扦�ʶ���L��������
�Ģ�L*�̦�	�J�Ԫ���j�ܮ������N�����������������(8HXhx��������)9IYiy��������	*:JZjz���	��
 +��*k{���ۺ���:|��*��[�� ��<=;@�fl<�}�-�LK=.��\>��������H/CK{L�Ϯ�@a	�a�'��{�����:e��I\����t�	"X�� c@��c��BX����/׬�Ǳܧ�/w&�ILϓ}R�ȕ����K�5�X�&K�H]�,�`P1C6̪R�����|i���r�4 �ʥ��=�*3f��ٴ���5V�5�_���C�E`oe�m�1��lA�%����;�Y୪�b虣'S�6�͛�Q^iگ�Ӿ0�5W�V�	`E�^�:\�m�7���lތRA�幠���O	.�$U����Ek�fs���B��wu�P�wN9��ؒA���}#������n u�]�^vz�R�֝w�Ѳ`q�U��a�7`zs�O��T�s���=O��az�YA3�u΄�P��^&ވ�/��(ŋ��`4��t�gN�Cb�;F�20�dBeG�E�pS���Ɲ@�Is,�lץw�PY�Wn)��G1��hwчf���GZG:�٦�W�%��%���=�s挗�U%��2!$�T��Y	���̙���|�h#rJ�(ׅ������ݺ��&� P:	R�9!s�l�AI�hX�F��o��W``M�����}�as��O��-��)�nFkk����}��ݨ ��ĚTi> ��E�'���յ���`�m�C3�}��E)q���U��:oo�i����kw��b�ď�LE&D�P_�q�P��L�˲���x��e>%���RE��U��=Y�[Vrz�a�	��Y�#�ʊ��?kMh��Mc��QCC.��V���i=սz�	��[�sٖ���V���Xd������ll/)�Ӂ>5c��:�2��ޚ�L�ٓ�n��G-ܭ��C��Z�(���X��"鶷��	JQ%�����"4���|{��>$bTb��{�`�*��-�z���|�9�����7��+���+��)�޿V�G7��v�(y�3��n���,�	�|�ަF<���4�Sҩb� "c�TL���%M�^��	H���
��S'=�~�K��7�ng\"��!"-��S���
��p�h!�Am�0e�	�JC"Jqi��	���8$���X�2�!�)�Q�-<�����gk:�S���ڍ�M�U9�Ӫ�`�����$E>ܙys�P�vGy�x�i�DB<�����1J�x6���x�BS*�*��b����hX�D�Ѝ��_��ƣ�$���4%*1	�V"nU|�,?�CE���� .�H��ph��$��wE2-�$�y�w�Rj���pB����a@k� V_���2i�,��K�bB?�B���:;���ΎT ئ�r6���r�,��������J�L�}���=��i�qf�^D!0Q��͢p��2���6�����0ω�t�T�ڊ'%,Ry+v�[����8�q�!�TP��ZD&�n����K���L�ً�b ��sQ_���X�%��g�C�Һ��A!&�mCj��x��ũ�AK�V�~�MO��(�v��GOh�k_UW�FN���kB�J{�M������b����כL
|��Ki͋b�IRGjK���OR�:��nന��2kŻq�3�I����5�6�:��-�Nk�w��Rj$Cד��T��<�I�R��`s��6O�9���n��Q��]�����[^��^����ȩ�0��Lx�;_��tW����$ ����Fo��`�w�5k0���њp��l�K�ݫ�af��_ͯ�\�KE8Q%+��8�b����]�W� ��MW��]-���9�a"�*��H'�%Y����g�{�u�]�Ò�Wan���.3n� ׁg�A�2F�u����b�i���;?w	�os��>,gyc[n���X�2�(p���\m�,��2W�+��F���tZ�dZW��(/T�P�,�;0ͮ��t���7��\]��T"vO-&IcVX�Fy�ER��Se�}P�z��V�M��� )ʎj���j�'m�m�J��i\��1�o*S٣E���-��Q���խQ�|�<�K��W����l$�*��x� fk��'���=׎9|�Z0&�/�"sc|����]��|�$/��O����|�90��Y�9�4�������|�ϩ�"h�f��l�>�ӑ[ ,�*}�LO\��.��T�����S$��V��޺��m��M_�����h�d_���>1��}��l۫�v��#�s7�I�v�7K�S��G�n�7���}_{�[�x�<��)3rl^.��W�Rφ�� ��4��\z����4���N�������S����^ǺI��{�C����c�������˥��.�6�2���?|ֳ�����ŭ���Ͼ���������~C�ĝ�����o��#�������/|��~��~��~7B1��A�|(�{�7�^�K�cj^A|L�M�CX�W~�W��: (�hxڷ}�5R�F'z"��7�I�}���#ŗy����^ ���4��CW������A(��^E(}5h����҄�$K�'�r{2h�#��[�EIȅ*��_�a8~Tme8U5�>'X�)X��G���p�rX�"Xy�gg��:h/z�P�8��h�=f��GOӅ��x���q�'�����7����l��ho؉�U��}Y�7h�z{؆�Ê��	3x�Gh�vH�����[7���H�H�x�9��5���-<�aKr����8��H��#���L��6ԇ?��q��������h2�X��ȇ�ĉ��C�3�Ȏi�����6�{�����hw�،���s��(��X��|�V�x���Gj���8u�i{�7����)�򘊺 �)��=����א��C��r|u�1	$y��H���И�y��;�}>�Y�@��}��z���x��8��׋��k �X���~7i���Zɔ��_�a�{�xw �;���wn����s�tv	w��S��C�J�g'��;���1z�I?ɘ��P��H�Y��p��+�i�ٙ�r	���`X�A9��	�����p�M���Yf�)|yB�	���m�Y�i��yS���ɜ�e��yq�)����9�ԉ�Vv��ɝ���՝�YiBI��圞�6.'�	t��MB���G\�?��y������]�����g쉟}�3��o�i���M�3k�Md��o��>Z���
���b�ԡ���C~;#���
ʟ�zi�qo�]*_��(
V�'ՠ�ԣ=�+�i>���k�Q�75�l�t
'7z�Uj�W��Y��[ʥ]�_
�a*�cJ�ej�g��i��kʦ��m�9�gq2�o�4�'�vZ�(����Nx�"t�|:��Zo$�S������j<Ex �q�[���u�rZ����st<�:� ��l����Z��z��ک��S�R���������:������1��.����ګ���z���eiD�b�ڬ�Sк�5����V�ں���ؚ���:��ڭ?�蚮,v�dY�z�ܺ��2��Z��z��Z�����f������گ;�DV�;��z��]�Z��a�ڮ���۰������ڱ
����"[������ �������v�&��V�㵲 [�{��:�:��۲(����*��H;�@�;�.{�4{�;����F[�$�B��T;�nZ�X��R�@ڵd;�2۪V{�6��>{�<۳`۴D[�h��p{�8��J;�n[�v[�Z�r����z۷j;��;����۶�۸\��x��{����|{��󶘛�������۹���L��[��󹨛�����;����bۺ����٨��3�ϗ�ز8�/��ƛ�w��m�t4�������������۳&��һ�ڛ�Lz;MB�뽣{�ٛ���a�[��;�뛶�k;��+�Gפ�{��ۮl���t��5��ۭ�[�諺 lh�u1��l:�[�rx��Y�\�'Z%�۾�+��+�����+��[�G����f����a���;�Âò$\�|{V�0<��k�����E,qT�":��D,���I�qZk�;8]��C��(|�[�R쪶*���Xl�����F����a�j�m*�sL�ul�w��y��{��}��ȁ,ȃLȅlȇ�ȉ�ȋ�ȍ�ȏɑ,ɓLɕlɗ,  ;HTTP/1.0 200
Content-type: image/gif

GIF89a  �  ���   !�     ,       D ;HTTP/1.0 200
Content-type: image/gif

GIF89aP  � ���   !�   ,    P   Z�����\������^��%�&v���|�{�l�����>�����	!h<�J�I{Ba�)�jUa�5�n���9r�<�Q뗺y��V  ;HTTP/1.0 200
Content-type: image/gif

GIF89a@J �  ������������������ܼ�ծ�Ρ�Ǔ�����}��x��jt�\h�O[�AN�4B�&5                                       !� � ,    @J  ��$�di�h��l�p,�tm�x��|�����+�Ȥ�5l:�Ш�)X�جv��z��xL���z͞U��|N�s���~ϗ�퀁��ex}���@���K�*V��������s��&����|���d��o����P���_������B�[���r�e��p���y��<	
:��9�:
	9��5��8���3����Db(p#��&�c-�V��$ ��8�"�ݍ��g�K ���p K��8����Z
��X����zfT���_�{ Y4r��̚)��0�&T�,��H��8����@�[�H�qIIS����&�/@m���s��"3}ZI{B(�~��@��X.%kx9`����\���ի��3:rQ9#��=ziY1�]�k��t��H�} >Bh���{y$U��k� <����ϰ�L�0����[i���m���������Мt��"���uj����;7|{�	���K_���gD^ܪ���YA�����~J��I����[�DBz�W�{癗^P��֡��f�knԷCR�XC�� ��H��蠀`a�N�6�$=f�8!k�����z��tZ�9�x��9��#�6�(�\��#U8:�����fB�f�:�ÑP2�a�za�����${�MyP|*�1�!Y��b�c�8f��X㤕I�f��
�)�}�Yj|��a���e�0�	"�Sh�鋓~�奎�X)��&� ����Âz'��n���w�ʬ�~&��{T�!k��:6J����-�gi9@~����%k��#܉j�M"K޺�"1-��"�Ƶ�:��������Y��/�皛n�Ԫ��\�>�n���;�\��پI�q�
����vjHC��v��wg衲L�퓮��j��*ǌz�+ȼ�\� �*���&�7@���J���[��(P��<��/@?]+�wJr�=Q NsZl�s/j��>����~�u�G`v	v�Q��ۢ]r������V@ ��uG���-K�A}C�y�Zn���8+�������˅�]�54�+���G�q^�բU|��ݥ@��_��c���r�>�M��F? ��}�W�9�z�m��#,��N������v1�v�I�84{�ڶ K���>��}��Z�@�}�B]�|�� �B�& &�~�+���{��� @auЃn�Y�0<pX��֧�%Ap.(�B���=�z�R[㌘��	� ��� �=��j�ZR�n���@0@��⧨�"���'L"��36��i��5���Yy��ֶH�լJg`��p�)�hs\tX��A��"�3�U2b����30�&c� 
iDE&r�sd��@�:��3��8�rI�����{I&�|)�hJ�}�v�[����J���w�,��򱇻��|)�`:a��,��Pi�7��~���$�M
Y�sYLU.�Mi��b[]�ELr���I�KpEuΑ�X��%�yެ��Ӈ��GH"�3��T"@�6,-5����s�+��NZ����CIQI���$��̈э�΄�\��  �W�@�8��4�Gk�s���gdƤP6�gmc)3��4J�`��d:���VR�(e�zV�<F�oN��L/�%��̭��Ճ��H���3yM�2"��b�7�`A��E��U4��8�{!e�Ub� z����R/��aZe���R���G��:s��M���Ꚓ~�������K�j�u�;�`�7�%'n�F&6J@2Y�,#��A %����l�۽斷{��-o�T��>���+�  �m�l�UZAvߚ�Z �(���������H�e��A��p@klG[��F�)��]P��0$6����� v���@b��(N1!V����Ƈ���A�:x=����bȀdo������P���pLesW�X�����e*\9�`V�S�Lf)4��h.B��̆4���)`���L�:���xγ����>��π��M�B�ЈN����F;�ѐ����'M�J[�Ҙδԗ�� u�a�yZ��A��qjp�
�F5 N�j�� ����g=�Zo	���t��>\�:R�F�H�k^�Z���5LM�RK���^�/Tmc���5����g�Ω�J��=�4�:ڱ.6���o��ޫ����}�c�f��>ξ�-�y�o.���g��+;�n8�㍅��;Ⱎ^�gl������v¿��]��7���k�j�_���6��ANV3����x�w�n��Z��B���2k���涆9�+�rr\�8/3͕��#}��v�ԇ�r����~�ħ�Ff_=� ;HTTP/1.0 200
Content-type: image/gif

GIF89aD �     $$$^^^�&5����>I�Xb���������������         !�    ,    D  ���I��8�ͻ�`(�di�h��l�p,�tm�x��|��7�pH,�ȤҘZ:��g3J�
Uשu{\eQܰxL�j��͡�h���|N���������xzl��o�&m'{��v�%�&�������y"��u�l����������
 ��������������%�&��ƪ�$�%�����ѭ��
ҵ��ܵ��������#�z���"������j���֥  0J�@�8x��B� P0bER 8
�@���lR㯔A�Vl8�!E&(5�TM7B��q�)���b��$,G%x(@�R�*�92�<BI��+��`G����Vƒ�:��2$��* ��A3q��+p( RK6%E�L�9���p �|��B`p�ރ�k�.� �CV� ��K����g���X��SV,�vޟ{���� �'g�@���vy�$�A��w�nY<tc��o�ܸ^��a8g3����]V������/۔zW�c��V]�U�Fl��(i!�����[Y���A��X�R�}��B^ՆTG�	p�j0u8�c# ��d��b����
d����8��sU7Tx/�b�=�ބ�IP�]���9�tj+���N ��W��(���RJ֜dSZ9T y��xW�F�@��"&db9i�	�B*5���)g*w��dh�
�([]M�hW�器U���gL'!����E�d4�g0$��ٜ�*R���P>�d-r���v���5�G׍�d�K@����j���g-�0�e�Z�⢋yb[�J>
���Ǫyh�ծ����f��T�*Kk����E@�`(l)�:��5	{U���Y�V��iy��Bt�_����O!�*b�?*�_R�t2��R���KU¹��+,0߿C{�r�Vt�������*n�a�^�s�X�"4��L�F$�O���窂^+�[$4�U�^��T�>�ե|�	7�����k_�T}�S�kvJ���g�������%�)	(�2�ؾ"eͩP����TOxS@ƒ\� H�uH�k��Szٵ�]o�rL6�4;�V�ժ�Q|���D�q7!�W�����[�ě']����ޫX��ԭsq,�4ؠJ�&�wBt�u����s@a�,�����Y�� yAD%���T���lч�2j�(-2���g�C�!|9֘�m�I#���������lOݒ
�t�fc4�ɓQRR&��&mZc-ӳUU	�n�@i��.�K �	�D�"E"��N8�X\N���H~�Y�&��`�o�xR@(Ǖ��*1�ˌ`�F�Hq���@����' x��^E
:�d7
�ޔ�մ&'RcH	�D}D��(�%��Ishr������IP��~�e&M��V����=:9Y�����-o��쒗D�J��\f ��2�a�ZS���3�نfƲ��-I9MKV��Td7��k^ �J�f6���o�q��p'p�z���̧>���~�f ��?JЂ��A�� +Y�BJ�>>�D+�юz����(6
��(M�JW�Җ���0��LgJӚ���8ͩNw�Ӟ���@*
"  ;HTTP/1.0 200
Content-type: image/gif

GIF89aq  �  ������ZZZ�&5��ͩXb�>I!�     ,    q   �H���0�I��8�ͻ:`(�di�h��deE,�tm�x���-X`H,�Ȥr�l:���axZ�ج�(h
�`�y8&���; ����8x���cu~C� {�n�g@UE�ib�}wo�eBo��l�y��e���p�����F]{��k����s� �����g��x�su�v�D���ìi��yթ��~�{ih�ϛEy��ES
��F��y�ݿ��Ł����������hr�Tp��~��r5�&bm
��f�_"�7e1�"�Y�>�@��FG��p-��H�C�1�l�ϟ@�Dy@2�ѣGg����S'1�F8`��իX�j�ʵ�ׯ`���@��ٳhӪ]˶��	  ;HTTP/1.0 200
Content-type: image/gif

GIF89aP  �  ������!�     ,    P   a������3ы�޼{n�G��yY!ʶn�Ʋ9�����n�����%!�B*;ƥ��TB��)uh�����{��g�q�l��k"�M������{��;?W  ;HTTP/1.0 200
Content-type: image/gif

GIF89a� J �  �����׼}��&5!� � ,    � J  ���������ڋ�޼���H�扦�ʶ���L��������
�D��
��h��1`@2�+5��W�d�X�$U�X����X���������F7 w ��'U�x�rX�%'5�P�G�I�vi8z�)� )�P�R�:��e@H
`+����["{�fk�[�{�f2�Vl�d���Z���ݸ�ڹ
����-��Y��̹����n��Y�� >N��e�o����f`�0�;��N�?�Y��m��ĨIcő$K�<�2�ʕ,QrI��#�p�BVӴ�啙�jN���O�����L��'�nM�״��~Ѵ�95<6K�����ګC��8S�.
��&�i�rq�����?��!��(�.'X��'w-"�7�:�y,���X�Z3�re�[畒J�Ah���]k@�3����A���_��b�l+��lj����f���y���"Y.ͻ;�Fv�7���2k�u-��~����������dފ����_E��q\�O�>����ֺͫ?�O<�p	g�|�ٷ[h�d�q�Ղ�%�_.�ew�Q��nu��O���@Me��̈́H"���"@��"`x#a�U^F�4�ܳG��3W�yE��ND�~U��b��Y)=˕�V�G�%sʢ�1��Tq�8�-6Ƅb!vB`)_�&qM�R�~�	h��Jh���h��.�h��>
i��NJi��^�i��n�i��~
j���Jj����j���Zh ;HTTP/1.0 200
Content-type: text/html

<html>
<body bgcolor="#CCCCCC">
<p><b><font face="Arial">Help<br>
</font></b><br>
<font size=2 face="Arial"><b>UDP command port<br>
</b>Define the port on which the device will receive API commands via UDP. To disable set this port number to <em>"0"</em>. Barix uses <em>"12301"</em> on other products.<br>
Default: <em>"0"</em><br>
<b><br>TCP command port and Timeout<br>
</b>Define the port on which the device will receive API commands via TCP. To disable set this port number to <em>"0"</em>. Barix uses <em>"12302"</em> on other products.<br>
Default: <em>"0"</em><br>
The timeout defines the time in seconds after which the TCP connection to the port will be closed due to inactivity.<br>
Enter <em>&quot;0&quot;</em> to disable the Timeout (default).<br>
Enter <em>&quot;1&quot;</em> to <em>&quot;255&quot;</em> to enable the Timeout.<br>
<b><br>TCP default subscriptions<br>
</b>Defines if a change of value for the standard I/O set (Relays, digital inputs, digital outputs) will trigger a "statechange" message (Legacy) or not (None).<br>
Default: <em>"Legacy"</em><br>
<b><br>TCP add subscriptions<br>
</b>Defines if a "getio" command using the TCP control protocol will automatically subscribe for future statechange messages (With getio/setio) or not (None).<br>
The subscription will be active as long the TCP command connection is established. The disconnection can be forced by the host or by a timeout (see parameter above).<br>
Default: <em>"None"</em><br>
<b><br>Modbus/TCP Timeout</b><br>
Defines the time in seconds after which a Modbus/TCP connection on port 502 will be closed due to inactivity.<br>
Enter <em>&quot;0&quot;</em> to disable the Timeout (default).<br>
Enter <em>&quot;1&quot;</em> to <em>&quot;255&quot;</em> to enable the Timeout.<br><br>
<b>Web server port</b><br>
Defines the webserver port of the device.<br>
If set to <em>"0"</em> the default HTTP port (80) is used.<br>
Default: <em>"0"</em><br><br>
<b>Lockdown mode</b><br>
Locks different protocol access to the device (command port, web access etc.). See manual for details. <br>
If set to <em>"0"</em> all access is granted.<br>
Default: <em>"0"</em><br><br>
<b>BCL Program Name</b><br>
Enter the name (up to 8 characters without extension ".tok") of the BCL application to be started at power on or after reboot.<br>
If left empty the default BCL application (barionet.tok) is started.<br>
Default: <em>""</em><br><br>
<b>UDP info send to<br>
</b>Input the 4 values of the desired destination IP address where the I/O
status change information should be sent to using UDP e.g.:<br>
<em>&quot;0.0.0.0&quot;</em> for no info<br>
<em>&quot;192.168.0.12&quot;</em> for
a specific UDP target<br>
<em>&quot;192.168.0.255&quot;</em> for
a subnet UDP broadcast<br>
<b><br>UDP destination port<br>
</b>Define the port to be used when sending I/O
status change information<br>
<b><br>
UDP interval<br>
</b>Define the time interval for sending current I/O
status information in seconds (besides I/O
status change information).<br>
<b><br>
Usage / Status Change<br>
</b>For input #1 to #4 select the input
to be either used as analog input and to supress status change info or be digital input and to include status change info<br>
<br>
<b>Syslog Server IP Address<br>
</b>Syslog is a well known reporting application usually using UDP port 514.
Check the Internet for Syslog deamon freeware.<br>
Enter the 4 values of the desired Syslog Server IP address e. g.:<br>
<em>&quot;0.0.0.0&quot;</em> for subnet broadcast of Syslog messages<br>
<em>&quot;192.168.0.1&quot;</em> for a dedicated Syslog deamon<br>
<br>
<b>Syslog Debug Level</b><br>
Enter the level of Syslog debug information e. g.:<br>
<em>&quot;0&quot;</em> for no debug information<br>
<em>&quot;1&quot;</em> for system debug information (default setting)<br>
<em>&quot;2&quot; to &quot;9&quot;</em> for user defined BCL debug information<br>
<br>
<b>Support Mode/Flags</b><br>
Enter the debug mode here when asked by Barix technical support.<br>
Leave at <em>&quot;0&quot;</em> for no support debug information
</body>
</html>
HTTP/1.0 200
Content-type: text/html

<html>
<body bgcolor="#CCCCCC">
<p><b><font face="Arial">Help<br>
  </font></b><font size="2" face="Arial"><br>
  <font size="2" face="Arial"><b>Defaults<br>
  </b>Click on &quot;Defaults&quot; to revert all settings except &quot;Network
  configuration&quot; to
  factory defaults.<br>
  <br>
  The screen will show &quot;Settings reverted to factory defaults.&quot; and the load
  the
&quot;Reboot&quot; page.<br>
  </font><font size="2" face="Arial"><br>
  To apply the change click on &quot;Reboot&quot;<br>
  </font><br>
<font size="2" face="Arial">The screen will show &quot;Device will boot now.
Please wait.&quot; and after a succesfull boot it will load the &quot;Reboot&quot; page.</font>
</body>
</html>
HTTP/1.0 200
Content-type: text/html

<html>
<body bgcolor="#CCCCCC">
<p><b><font face="Arial">Help<br>
  </font></b><font size="2" face="Arial"><br>
  <font size="2" face="Arial"><b>Pullup<br>
  </b>For each input switch the internal pull-up resistor (10 KOhms) on or off (no pullup)<br>
<b><br>
Polarity<br>
</b>For each input select active state polarity e.g.:<br>
<em>"Low Act"</em> to obtain an activate state when an attached button is pressed (Pullup=ON, button to connected between input and ground)<br>
<em>"Low Act"</em> to obtain an activate state when an attached external power source(Pullup=OFF) is missing.<br>
<em>"Hi Act"</em> to obtain an activate state when an attached external power source(Pullup=OFF) is present (>1.2Volt).<br>
<br>
<b>I/O Protocol</b><br>
Choose between Dallas 1-Wire&reg; on J5 (default setting) and Wigand&reg; protocol interface on J6 connector.<br>
Selecting Wiegand disables the Dallas 1-Wire temperature sensors and displays 0.0 &deg;C for all 8 sensors on the status page (HOME, index.html).<br>
</body>
</html>HTTP/1.0 200
Content-type: text/html

<html>
<body bgcolor="#CCCCCC">
<p><b><font face="Arial">Help<br>
  </font></b><font size="2" face="Arial"><br>
  <b>IP Address<br>
  </b>Enter the 4 values of the desired device IP address e.g.:<br>
  <em>&quot;0.0.0.0&quot;</em> for automatic discovery (DHCP, IPzator&#8482;,
  AutoIP).<br>
    <em>&quot;192.168.0.12&quot;</em> for
a static IP address.<br>
<br>
<b>Netmask<br>
</b>Enter the 4 values of the desired netmask e. g.:<br>
<em>&quot;0.0.0.0&quot;</em> will use the standard netmask matching the IP address<br>
<em>&quot;255.0.0.0&quot;</em> for a class A network<br>
<em>&quot;255.255.0.0&quot;</em> for a class B network<br>
<em>&quot;255.255.255.0&quot;</em> for a class C network<br>
<b><br>
Gateway IP Address<br>
</b>Enter the 4 values of the desired Gateway IP address e. g.:<br>
<em>&quot;0.0.0.0&quot;</em> for no Gateway<br>
    <em>&quot;192.168.0.1&quot;</em> for
a specific Gateway in order to access the Internet or a WAN<br>
<br>
<b>DNS Server IP Address</b><br>
Enter the 4 values of the desired Domain Name Server IP address to enable URL domain name to IP address look up e. g.:<br>
<em>&quot;0.0.0.0&quot;</em> for no DNS Server<br>
<em>&quot;192.168.0.1&quot;</em> for a reachable DNS Server<br>
<br>
<b>DHCP Host Name</b><br>
Name of the device sent in DHCP request. If left empty, a name based on the device's MAC address is generated automatically (a &quot;C&quot; followed by the last 6 digits of the MAC address, e.g. &quot;C8041B8&quot;). Enter up to 15 Characters.</font>
</body>
</html>HTTP/1.0 200
Content-type: text/html

<html>
<body bgcolor="#CCCCCC">
<p><b><font face="Arial">Help<br>
  </font></b><font size="2" face="Arial"><br>
  <font size="2" face="Arial"><b>Reboot<br>
  </b>Click on &quot;Reboot&quot; to reboot the device.</font>
</body>
</html>
HTTP/1.0 200
Content-type: text/html

<html>
<body bgcolor="#CCCCCC">
<p><b><font face="Arial">Help<br>
  </font></b><font size="2" face="Arial"><br>
  <b>Set Password(no password yet)</b>
  <br>Type new passowrd in "New Password" and "Confirm Password" input box and press OK.
<b>Change Password</b>
<br>Provide "Old Password" to authenticate.
<br>Type new passowrd in "New Password" and "Confirm Password" input box and press OK.
  <b>Clear Password</b>
  <br>Provide Old password,leave "New Password" and "Confirm Password" blank.
</font>
</body>
</html>
HTTP/1.0 200
Content-type: text/html

<html>
<body bgcolor="#CCCCCC">
<p><b><font face="Arial">Help<br>
  </font></b><font size="2" face="Arial"><br>
  <font size="2" face="Arial">Define </font><font size="2" face="Arial"> the
  two serial ports.<br>
<br>
<b>Interface Type</b> (RS-285/422 only)<br>
Choose between 2 wire RS-485 or 4 wire RS-422.<br>
<br>
<b>Serial speed<br>
</b>Select the serial transmission speed in Baud (bits per second).<br>
<br>
<b>Data bits<br>
</b>Select the number of serial data bits. Default setting is 8 data bits.<br>
<br>
<b>Parity bit<br>
</b>Select the parity bit settings. Default setting is disabled.<br>
If enabled select Even or Odd parity.<br><br>
<b>Stop bits<br>
</b>Select the number of serial stop bits. Default setting is 1 stop bit.<br>
<br>
<b>Hardware flow control</b> (RS-232 only)<br>
Select if hardware flow contol (RTS/CTS) is used. Default setting is disabled.<br>
<br>
<b>Local port</b><br>
Define the Port on which the serial gateway can be accessed using TCP.<br>
Default: <em>&quot;10001&quot;</em> for RS-232, <em>&quot;10002&quot;</em> for RS-485/422<br>
Enter <em>&quot;0&quot;</em> to disable TCP access and to free TCP handles for
 BCL application use<br><br>
<b>Disconnect Tout</b><br>
Defines the time in seconds after which the TCP connection to the local serial port will be closed due to inactivity.<br>
  Enter <em>&quot;0&quot;</em> to disable the Disconnect Timeout (default).</font>
  <br>  
  <font size="2" face="Arial">Enter <em>&quot;1&quot;</em> to <em>&quot;255&quot;</em> to enable the Disconnect Timeout.</font>

<p>
</body>
</html>HTTP/1.0 200
Content-type: text/html

<html>
<body bgcolor="#CCCCCC">
<p><b><font face="Arial">Help<br>
  </font></b><font size="2" face="Arial"><br>
  <b>SNMP Trap Receiver<br>
  </b>Enter the 4 values of the desired SNMP
  Trap receiver IP address  e.g.:<br>
  <em>&quot;0.0.0.0&quot;</em> for no receiver<br>
    <em>&quot;192.168.0.12&quot;</em> for
a specific receiver<br>
<em>&quot;192.168.0.255&quot;</em> for
a subnet SNMP broadcast<br>
<b><br>
Repeat time<br>
</b>When an input is active
the trap will be issued repeatedly with this time in seconds until the input
becomes inactive.<br>
Enter <em>&quot;0&quot;</em> to deactivate repetition (results in two traps being
sent, one
for
an input going active
and one for it going inactive)<br>
<b><br>
Trap<br>
</b>For each input select if a trap should be issued when the state changes.Default
setting is <em>&quot;No&quot;</em>.<br>
<b><br>
SNMP definition file (Private MIB)<br>
</b>In order to use the SNMP functions a private MIB definition file called Barionet.MIB is needed.<br><br>
<a href="Barionet.MIB" target="_blank">View MIB in browser</a> or <a href="Barionet_MIB.zip">download zipped MIB file</a>
</body>
</html>HTTP/1.0 200
Content-type: text/html

<html>
<body bgcolor="#CCCCCC">
<p><b><font face="Arial">Help<br><br>
<font size=2>Relay<br></b>
Click on the white or green LED to toggle a relay.<br><br>
<b>Digital Inputs<br>
</b>The white or green LED next to the I/O number shows the digital input
status.<br>
<br><b>
Digital Outputs<br>
</b>Click on the white or green LED below the device to toggle the digital outputs.<br>
Click on the 0.1, 1 or 5 links to toggle a digital out for 0.1, 1 and 5 seconds.<br><br><b>
Analog In<br>
</b>See the values below the I/O # for the measured voltage in Volts as well
as the value in percent (100% = 5V).<br><b><br>
Temperature<br>
</b>Shows the value (in degree Celsius) of all attached Dallas 1-wire&reg; temperature
sensors
(DS18B20, DS18S20, DS18B22).</font>
</body>
</html>
HTTP/1.0 200
Content-type: text/html

<html>
<body bgcolor="#CCCCCC">
<p><b><font face="Arial">Help<br>
  </font></b><font size="2" face="Arial"><br>
  <b>Dallas 1-wire&reg; bus Temp sensors<br>
</b>This page shows the detected unique ID's of the temperature sensors connected to the Barionet.<br>
They will be entered every time in exactly that sequence in the table by the discovery function,
which starts after a reset and on start up of the Barionet.</font>
</body>
</html>
HTTP/1.0 200
Content-type: text/html

<html>
<body bgcolor="#CCCCCC">
<p><b><font face="Arial">Help<br>
  </font></b><font size="2" face="Arial"><br>
<b>NTP Server IP Address</b><br>
Enter the 4 values of the desired NTP Server IP address e. g.:<br>
<em>&quot;0.0.0.0&quot;</em> for no NTP Server<br>
<em>&quot;192.168.0.1&quot;</em> for a NTP Server in a LAN<br>
When a valid NTP Server is given, the Barionet will set the internal clock accordingly
at start up and will synchronize again approximately every 10 hours.
<br>
<br>
<b>Onewire RTC</b><br>
If a Real-Time-Clock chip like the DS1904L is connected to the 1-wire bus then the bus address is shown. The internal clock will take the time from this RTC on start up..<br>
<br>
<b>Time Zone</b><br>
Enter the time zone information for your geographic location in order to display the correct local time.<br>
</body>
</html>
HTTP/1.0 200
Content-type: text/html

<html>
<body bgcolor="#CCCCCC">
<p><b><font face="Arial">Help<br>
  </font></b><font size="2" face="Arial"><br>
<b>Versions</b><br>
Firmware version shows the current version of the XPort firmware and the build date (YYYYMMDD).<br>
Web UI version shows the current version of the Web User Interface and the build date.<br>
PIC Version shows the current versions of the embedded PIC microcontroller.<br>
Setup version shows the current version of the setup table in the EEPROM.<br>
<br>
<b>Update</b><br>
Please visit <a href="http://www.barix.com/en/support/support.php" title="Barix support download section" target="_blank">Barix support web page</a> and verify if your Barionet is up to date.<br>
Download an available update package and read the file <em>&quot;ReadMe.txt&quot;</em> for
instructions on how to use.<br><br>
<b>WEB usage table</b> (for programmers using tftp)<br>
<table border=0 cellspacing=0>
  <tr>
    <td><font size=2>X1</td>
    <td><font size=2>Firmware</td>
  </tr>
  <tr>
    <td><font size=2>WEB1..3&nbsp;</td>
    <td><font size=2>Web UI application , Help, PIC Firmware</td>
  </tr>
  <tr>
    <td><font size=2>WEB4</td>
    <td><font size=2>Sample BCL application Digital I/O Tunnel (incl. Web setup)</td>
  </tr>
  <tr>
    <td><font size=2>WEB5..7</td>
    <td><font size=2>Free for own BCL application / Web UI application</td>
  </tr>
</table>
</body>
</html>HTTP/1.0 200
Content-type: text/html

<html>&L(0,"*",2);
  <head>
    <script language=JavaScript src=util.js></script>
  </head>
  <body bgcolor=#FFFFFF link=#FFFFFF vlink=#FFFFFF leftmargin="0">
    <font size=3 face=Arial>
	<form action=setup.cgi method=get target=_top>
		<table width=640 height="55" border=0 cellpadding="0" cellspacing="0">
			<tr>
				<td valign="middle"><font size=3><b>&nbsp;SETTINGS</td>
				<td align="right" valign="middle">&LSetup(3,"%s",125,W,0,"<!--");<input type=hidden name=L value=uilogout.html><input type=hidden name=D><input type=submit value=" Logout ">&LSetup(3,"%s",125,W,0,"-->");</td>
			</tr>
		</table>
	</form>
    <table width=720 cellpadding="0" cellspacing="0" bgcolor=#8F2635>
      <tr align="center">
        <td width=80 height=30 background="uigl.gif"><font size=1><a href="uifnetwork.html" title="NETWORK SETTINGS" target="config">NETWORK</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifserial.html" title="SERIAL SETTINGS" target="config">SERIAL</a></td>
        <td width=80 background="uigs.gif"><font size=1>I/O</td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifcontrol.html" title="CONTROL/INFO/DEBUG SETTINGS" target="config">CONTROL</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifsnmp.html" title="SNMP SETTINGS" target="config">SNMP</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uiftime.html" title="NTP TIME SETTINGS" target="config">TIME</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uiftemp.html" title="1-WIRE TEMPERATUR SENSOR SETTINGS" target="config">TEMP</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifsecurity.html" title="PASSWORD SETTINGS" target="config">SECURITY</a></td>
        <td width="80" valign="bottom" bgcolor="#FFFFFF"><img src="uigg.gif" width="80" height="1"></td>
      </tr>
    </table><br>
	<table>
      <form action=setup.cgi method=get>
        <tr><input type="hidden" name=L value=uisaved.html>
          <td>
        <tr>
              <td><font size=2><b>Interface</td>
              <td><font size=2><b>Pullup</td>
              <td><font size=2><b>Polarity</td>
        </tr>
            <tr>
              <td><b><font size=2>Input #1</td>
              <td>
                <select size=1 name=B64b0>
                  <option value=1&LSetup(3,"%s",64,b0,1," selected");>OFF</option>
                  <option value=0&LSetup(3,"%s",64,b0,0," selected");>ON</option>
                </select>&nbsp;&nbsp;
              </td>
              <td>
                <select size=1 name=B66b0>
                  <option value=1&LSetup(3,"%s",66,b0,1," selected");>Hi Act</option>
                  <option value=0&LSetup(3,"%s",66,b0,0," selected");>Low Act</option>
                </select>
              </td>
            </tr>
            <tr>
              <td><b><font size=2>Input #2</td>
              <td>
                <select size=1 name=B64b1>
                  <option value=1&LSetup(3,"%s",64,b1,1," selected");>OFF</option>
                  <option value=0&LSetup(3,"%s",64,b1,0," selected");>ON</option>
                </select>
              </td>
              <td>
                <select size=1 name=B66b1>
                  <option value=1&LSetup(3,"%s",66,b1,1," selected");>Hi Act</option>
                  <option value=0&LSetup(3,"%s",66,b1,0," selected");>Low Act</option>
                </select>
              </td>
            <tr>
              <td><b><font size=2>Input #3</td>
              <td>
                <select size=1 name=B64b2>
                  <option value=1&LSetup(3,"%s",64,b2,1," selected");>OFF</option>
                  <option value=0&LSetup(3,"%s",64,b2,0," selected");>ON</option>
                </select>
              </td>
              <td>
                <select size=1 name=B66b2>
                  <option value=1&LSetup(3,"%s",66,b2,1," selected");>Hi Act</option>
                  <option value=0&LSetup(3,"%s",66,b2,0," selected");>Low Act</option>
                </select>
              </td>
            </tr>
            <tr>
              <td><b><font size=2>Input #4</td>
              <td>
                <select size=1 name=B64b3>
                  <option value=1&LSetup(3,"%s",64,b3,1," selected");>OFF</option>
                  <option value=0&LSetup(3,"%s",64,b3,0," selected");>ON</option>
                </select>
              </td>
              <td>
                <select size=1 name=B66b3>
                  <option value=1&LSetup(3,"%s",66,b3,1," selected");>Hi Act</option>
                  <option value=0&LSetup(3,"%s",66,b3,0," selected");>Low Act</option>
                </select>
              </td>
            </tr>
            <tr>
              <td><b><font size=2>Input #5</td>
              <td>
                <select size=1 name=B64b4>
                  <option value=1&LSetup(3,"%s",64,b4,1," selected");>OFF</option>
                  <option value=0&LSetup(3,"%s",64,b4,0," selected");>ON</option>
                </select>
              </td>
              <td>
                <select size=1 name=B66b4>
                  <option value=1&LSetup(3,"%s",66,b4,1," selected");>Hi Act</option>
                  <option value=0&LSetup(3,"%s",66,b4,0," selected");>Low Act</option>
                </select>
              </td>
            </tr>
            <tr>
              <td><b><font size=2>Input #6</td>
              <td>
                <select size=1 name=B64b5>
                  <option value=1&LSetup(3,"%s",64,b5,1," selected");>OFF</option>
                  <option value=0&LSetup(3,"%s",64,b5,0," selected");>ON</option>
                </select>
              </td>
              <td>
                <select size=1 name=B66b5>
                  <option value=1&LSetup(3,"%s",66,b5,1," selected");>Hi Act</option>
                  <option value=0&LSetup(3,"%s",66,b5,0," selected");>Low Act</option>
                </select>
              </td>
            </tr>
            <tr>
              <td><b><font size=2>Input #7</td>
              <td>
                <select size=1 name=B64b6>
                  <option value=1&LSetup(3,"%s",64,b6,1," selected");>OFF</option>
                  <option value=0&LSetup(3,"%s",64,b6,0," selected");>ON</option>
                </select>
              </td>
              <td>
                <select size=1 name=B66b6>
                  <option value=1&LSetup(3,"%s",66,b6,1," selected");>Hi Act</option>
                  <option value=0&LSetup(3,"%s",66,b6,0," selected");>Low Act</option>
                </select>
              </td>
            </tr>
            <tr>
              <td><b><font size=2>Input #8</td>
              <td>
                <select size=1 name=B64b7>
                  <option value=1&LSetup(3,"%s",64,b7,1," selected");>OFF</option>
                  <option value=0&LSetup(3,"%s",64,b7,0," selected");>ON</option>
                </select>
              </td>
              <td>
                <select size=1 name=B66b7>
                  <option value=1&LSetup(3,"%s",66,b7,1," selected");>Hi Act</option>
                  <option value=0&LSetup(3,"%s",66,b7,0," selected");>Low Act</option>
                </select>
              </td>
            <tr>
            </tr>
            <tr>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td><b><font size=2>I/O Protocol</td>
              <td colspan=2><font size=2>
                <select size=1 name=B70b0>
                  <option value=0&LSetup(3,"%s",70,b0,0," selected");>One-Wire ( on J5 )</option>
                  <option value=1&LSetup(3,"%s",70,b0,1," selected");>Wiegand ( on J6 )</option>
                </select>
              </td>
            </tr>
            <tr>
              <td><br>
                <input name="submit" type="submit" value=" OK ">
                <input name="reset" type="reset" value=" Cancel ">
              </td>
            </tr>
      </form>
    </table>
    </body>
</html>
HTTP/1.0 200
Content-type: text/html

<html>
<body leftmargin=0 topmargin=0><font size=2 face="Arial, Helvetica, sans-serif"><b>
<center>
<br>
Thank you for using the Barix Web-based Configuration Utility.<br><br>
GoodBye<br><br>
Close this window.
</center>
<script language=JavaScript>top.close();</script>
</body>
</html>

HTTP/1.0 200
Content-type: text/html

<html>&L(0,"*",2);
  <head>
    <script language=JavaScript src=util.js></script>
  </head>
  <body bgcolor=#FFFFFF link=#FFFFFF vlink=#FFFFFF leftmargin="0">
    <font size=3 face=Arial>
	<form action=setup.cgi method=get target=_top>
		<table width=640 height="55" border=0 cellpadding="0" cellspacing="0">
			<tr>
				<td valign="middle"><font size=3><b>&nbsp;SETTINGS</td>
				<td align="right" valign="middle">&LSetup(3,"%s",125,W,0,"<!--");<input type=hidden name=L value=uilogout.html><input type=hidden name=D><input type=submit value=" Logout ">&LSetup(3,"%s",125,W,0,"-->");</td>
			</tr>
		</table>
	</form>
    <table width=720 cellpadding="0" cellspacing="0" bgcolor=#8F2635>
      <tr align="center">
        <td width=80 height=30 background="uigs.gif"><font size=1>NETWORK</td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifserial.html" title="SERIAL PORT SETTINGS" target="config">SERIAL</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifio.html" title="INPUT/OUTPUT SETTINGS" target="config">I/O</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifcontrol.html" title="CONTROL/INFO/DEBUG SETTINGS" target="config">CONTROL</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifsnmp.html" title="SNMP SETTINGS" target="config">SNMP</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uiftime.html" title="NTP TIME SETTINGS" target="config">TIME</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uiftemp.html" title="1-WIRE TEMPERATUR SENSOR SETTINGS" target="config">TEMP</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifsecurity.html" title="PASSWORD SETTINGS" target="config">SECURITY</a></td>
        <td width="80" valign="bottom" bgcolor="#FFFFFF"><img src="uigg.gif" width="80" height="1"></td>
      </tr>
    </table><br>
    <table>
      <form action=setup.cgi method=get><input type="hidden" type="text" name=L value=uisaved.html>
      <tr>
        <td><b><font size=2>IP Address</b></td>
        <td><font size=2>
        <input name=B0 size=3 maxlength=3 value=&LSetup(1,"%u",0); onChange=IPCheck(this)><b> . </b>
        <input name=B1 size=3 maxlength=3 value=&LSetup(1,"%u",1); onChange=IPCheck(this)><b> . </b>
        <input name=B2 size=3 maxlength=3 value=&LSetup(1,"%u",2); onChange=IPCheck(this)><b> . </b>
        <input name=B3 size=3 maxlength=3 value=&LSetup(1,"%u",3); onChange=IPCheck(this)> (0.0.0.0 for DHCP)<br></td>
      </tr>
      <tr>
        <td><b><font size=2>Netmask</b></td>
        <td><font size=2>
        <input name=N0 size=3 maxlength=3 value=&LSetup(2,"%u",6,0); onChange=netMaskCheck(this)><b> . </b>
        <input name=N1 size=3 maxlength=3 value=&LSetup(2,"%u",6,1); onChange=netMaskCheck(this)><b> . </b>
        <input name=N2 size=3 maxlength=3 value=&LSetup(2,"%u",6,2); onChange=netMaskCheck(this)><b> . </b>
        <input name=N3B6 size=3 maxlength=3 value=&LSetup(2,"%u",6,3); onChange=netMaskCheck(this)> (0.0.0.0 = default)</td>
      </tr>
      <tr>
        <td><b><font size=2>Gateway</b></td>
        <td><font size=2>
        <input name=B12 size=3 maxlength=3 value=&LSetup(1,"%u",12); onChange=IPCheck(this)><b> . </b>
        <input name=B13 size=3 maxlength=3 value=&LSetup(1,"%u",13); onChange=IPCheck(this)><b> . </b>
        <input name=B14 size=3 maxlength=3 value=&LSetup(1,"%u",14); onChange=IPCheck(this)><b> . </b>
        <input name=B15 size=3 maxlength=3 value=&LSetup(1,"%u",15); onChange=IPCheck(this)> (0.0.0.0 for no gateway)</td>
      </tr>
      <tr>
        <td><b><font size=2>DNS Server</b></td>
        <td><font size=2>
        <input name=B88 size=3 maxlength=3 value=&LSetup(1,"%u",88); onChange=IPCheck(this)><b> . </b>
        <input name=B89 size=3 maxlength=3 value=&LSetup(1,"%u",89); onChange=IPCheck(this)><b> . </b>
        <input name=B90 size=3 maxlength=3 value=&LSetup(1,"%u",90); onChange=IPCheck(this)><b> . </b>
        <input name=B91 size=3 maxlength=3 value=&LSetup(1,"%u",91); onChange=IPCheck(this)> (0.0.0.0 for none)</td>
      </tr>
      <tr>
      	<td><b><font size=2>DHCP Hostname</td>
      	<td><font size=2><input name=S109 size=15 maxlength=15 value="&LSetup(1,"%s",109,S);"></td>
      </tr>
      <tr>
        <td>
          <br><input type="submit" value=" OK ">
          <input type="reset" value=" Cancel ">
        </td>
      </tr>
      </form>
    </table>
</body>
</html>
HTTP/1.0 200
Content-type: text/html

<html>
<body BGCOLOR=#ffffff vlink=#000000 link=#000000><br>
<table border="0" cellspacing="0">
  <tr>
    <td height="15" valign="baseline"><font size=3 face="Arial"><b>Reboot</b></font></td>
    <td valign="baseline"><font size="2" face="Arial">&nbsp; </font></td>
  </tr>
  <tr>
    <td height="3" colspan="2"><img src="uigg.gif" width="550" height="1">    </td>
  </tr>
  <tr>
    <td valign="baseline" bordercolor="#CCCCCC">&nbsp;</td>
    <td valign="baseline">&nbsp;</td>
  </tr>
  <tr>
    <td valign="baseline" bordercolor="#CCCCCC"><font size="2" face="Arial"><b><a href="setup.cgi?L=uireboot2.html&R" >Reboot
    </a></b></font></td>
    <td valign="baseline"><font size="2" face="Arial">Reboots
          the device.</font>
    </td>
  </tr>
</table>
</body>
</html> 
HTTP/1.0 200
Content-type: text/html

<html>
<head>
  <meta http-equiv="refresh" content="5; url=uireboot3.html">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head>
    <body bgcolor=#FFFFFF link=#8F2635 vlink=#8F2635><br>
	<p><font size="3" face="Arial"><b>Device will boot now. Please wait.</b><br><br>
<font size="2">If you have changed the IP address type the new address in the URL address field of your browser now and hit the Enter key.
</font>
</html>HTTP/1.0 200
Content-type: text/html

<html>
<head></head>
    <body bgcolor=#FFFFFF link=#8F2635 vlink=#8F2635><br>
	<p><font size="3" face="Arial"><b>Device has succesfully booted.<br><br>
Please click on a menu button above to continue.</b></font>
</html>HTTP/1.0 200
Content-type: text/html

<html>
<head></head>
<font size="4" face="Arial"><b><br>Settings saved. To activate, please reboot unit!<br><br>
<font size=3><a href="setup.cgi?L=uireboot2.html&R" >Reboot</a></b></font>   
</html>HTTP/1.0 200
Content-type: text/html

<html>&L(0,"*",2);
  <head>
    <script language=JavaScript src=util.js></script>
  </head>
  <body bgcolor=#FFFFFF link=#FFFFFF vlink=#FFFFFF leftmargin="0">
<SCRIPT type="text/javascript">

function check_password()
{
     if(  document.getElementById("p1").value != document.getElementById("p2").value)
     {
       alert('New password and confirm password does not match!');
       document.getElementById("p2").value = "";
       document.getElementById("p1").value = "";
       document.getElementById("p1").focus();
       return false;
     }
     //check if password set
    if(document.getElementById("p0_row").style.display == 'none')
    {
        //passoword not set
        if(document.getElementById("p1").value == 0
            && document.getElementById("p2").value ==0)
        {
            return false;
        }
    }
    else
    {
        //password set
        if(document.getElementById("p0").value == "")
        {
            //Old password not provided
            alert("Provide Old Password to set/clear password!");
            return false;
        }

        if(document.getElementById("p1").value == 0
            && document.getElementById("p2").value ==0)
        {
            return confirm("Do you realy want to clear the password?");
        }
    }
    return true;
}

</SCRIPT>
    <font size=3 face=Arial>
	<form action=setup.cgi method=get target=_top>
		<table width=640 height="55" border=0 cellpadding="0" cellspacing="0">
			<tr>
				<td valign="middle"><font size=3><b>&nbsp;SETTINGS</td>
				<td align="right" valign="middle">&LSetup(3,"%s",125,W,0,"<!--");<input type=hidden name=L value=uilogout.html><input type=hidden name=D><input type=submit value=" Logout ">&LSetup(3,"%s",125,W,0,"-->");</td>
			</tr>
		</table>
	</form>
    <table width=720 cellpadding="0" cellspacing="0" bgcolor=#8F2635>
      <tr align="center">
        <td width=80 height=30 background="uigl.gif"><font size=1><a href="uifnetwork.html" title="NETWORK SETTINGS" target="config">NETWORK</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifserial.html" title="SERIAL SETTINGS" target="config">SERIAL</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifio.html" title="INPUT/OUTPUT SETTINGS" target="config">I/O</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifcontrol.html" title="CONTROL/INFO/DEBUG SETTINGS" target="config">CONTROL</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifsnmp.html" title="SNMP SETTINGS" target="config">SNMP</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uiftime.html" title="NTP TIME SETTINGS" target="config">TIME</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uiftemp.html" title="1-WIRE TEMPERATUR SENSOR SETTINGS" target="config">TEMP</a></td>
        <td width=80 background="uigs.gif"><font size=1>SECURITY</td>
        <td width="80" valign="bottom" bgcolor="#FFFFFF"><img src="uigg.gif" width="80" height="1"></td>
      </tr>
    </table><br>
     <table>
      <form action=setup.cgi method=get>
        <tr>
          <input type="hidden" name=L value=uisaved.html>
        </tr>
        <TR id="p0_row" &LSetup(3,"%s",125,W,0,"style='display:none;'"); >
            <TD>
                <font size=2><b>Old password</b>
            </TD>
            <TD>
                <font size=2><INPUT id="p0" TYPE="password" NAME=P VALUE="" MAXLENGTH="12"  SIZE="12">
            </TD>
          </TR>
        <TR>
            <TD>
                <font size=2><b>New password</b>
            </TD>
            <TD>
                <font size=2><INPUT id="p1" TYPE="password" NAME=P1 VALUE="" MAXLENGTH="12"  SIZE="12">
            </TD>
          </TR>
          <TR>
            <TD>
                <font size=2><b>Confirm password</b>
            </TD>
            <TD>
              <font size=2><INPUT id="p2" TYPE="password" MAXLENGTH="12"  SIZE="12">
            </TD>
          </TR>
        <tr>
          <td>
          <br>
            <input type="submit" value="  OK  " onClick="return check_password();">
            <input type="reset" value="Cancel">
          </td>
        </tr>
    </form>
    </table>
    </body>
</html>
HTTP/1.0 200
Content-type: text/html

<html>&L(0,"*",2);
  <head>
    <script language=JavaScript src=util.js></script>
  </head>
  <body bgcolor=#FFFFFF link=#FFFFFF vlink=#FFFFFF leftmargin="0">
    <font size=3 face=Arial>
	<form action=setup.cgi method=get target=_top>
		<table width=640 height="55" border=0 cellpadding="0" cellspacing="0">
			<tr>
				<td valign="middle"><font size=3><b>&nbsp;SETTINGS</td>
				<td align="right" valign="middle">&LSetup(3,"%s",125,W,0,"<!--");<input type=hidden name=L value=uilogout.html><input type=hidden name=D><input type=submit value=" Logout ">&LSetup(3,"%s",125,W,0,"-->");</td>
			</tr>
		</table>
	</form>
    <table width=720 cellpadding="0" cellspacing="0" bgcolor=#8F2635>
      <tr align="center">
        <td width=80 height=30 background="uigl.gif"><font size=1><a href="uifnetwork.html" title="NETWORK SETTINGS" target="config">NETWORK</a></td>
        <td width=80 background="uigs.gif"><font size=1>SERIAL</td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifio.html" title="INPUT/OUTPUT SETTINGS" target="config">I/O</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifcontrol.html" title="CONTROL/INFO/DEBUG SETTINGS" target="config">CONTROL</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifsnmp.html" title="SNMP SETTINGS" target="config">SNMP</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uiftime.html" title="NTP TIME SETTINGS" target="config">TIME</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uiftemp.html" title="1-WIRE TEMPERATUR SENSOR SETTINGS" target="config">TEMP</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifsecurity.html" title="PASSWORD SETTINGS" target="config">SECURITY</a></td>
        <td width="80" valign="bottom" bgcolor="#FFFFFF"><img src="uigg.gif" width="80" height="1"></td>
      </tr>
    </table><br>
    <table>
      <form action=setup.cgi method=get>
        <tr>
          <input type="hidden" name=L value=uisaved.html>
        <tr>
          <td>&nbsp;</td>
          <td><b><u><font size=2>RS-232</td>
          <td><b><u><font size=2>RS-485/422</td>
        </tr>
        <tr>
          <td><b><font size=2>Interface Type</td>
          <td><font size=2>n.a.</td>
          <td><font size=2>
            <select size=1 name=B33b3>
              <option value=0&LSetup(3,"%s",33,b3,0," selected");>RS-485</option>
              <option value=1&LSetup(3,"%s",33,b3,1," selected");>RS-422</option>
            </select>
          </font></td>
        </tr>
        <tr>
          <td><b><font size=2>Serial speed</td>
          <td><font size=2>
            <select size=1 name=B16>
              <option value=4&LSetup(3,"%s",16,B,4," selected");>19200</option>
              <option value=8&LSetup(3,"%s",16,B,8," selected");>9600</option>
              <option value=16&LSetup(3,"%s",16,B,16," selected");>4800</option>
              <option value=32&LSetup(3,"%s",16,B,32," selected");>2400</option>
              <option value=64&LSetup(3,"%s",16,B,64," selected");>1200</option>
              <option value=128&LSetup(3,"%s",16,B,128," selected");>600</option>
              <option value=255&LSetup(3,"%s",16,B,255," selected");>300</option>
            </select>
        Baud</font></td>
          <td><font size=2>
            <select size=1 name=B32>
              <option value=4&LSetup(3,"%s",32,B,4," selected");>19200</option>
              <option value=8&LSetup(3,"%s",32,B,8," selected");>9600</option>
              <option value=16&LSetup(3,"%s",32,B,16," selected");>4800</option>
              <option value=32&LSetup(3,"%s",32,B,32," selected");>2400</option>
              <option value=64&LSetup(3,"%s",32,B,64," selected");>1200</option>
              <option value=128&LSetup(3,"%s",32,B,128," selected");>600</option>
              <option value=255&LSetup(3,"%s",32,B,255," selected");>300</option>
            </select>
        Baud</font></td>
        </tr>
        <tr>
          <td><b><font size=2>Data bits</td>
          <td><font size=2>
            <select size=1 name=B17b6>
              <option value=0&LSetup(3,"%s",17,b6,0," selected");>8</option>
              <option value=1&LSetup(3,"%s",17,b6,1," selected");>7</option>
            </select>
          </font></td>
          <td><font size=2>
            <select size=1 name=B33b6>
              <option value=0&LSetup(3,"%s",33,b6,0," selected");>8</option>
              <option value=1&LSetup(3,"%s",33,b6,1," selected");>7</option>
            </select>
          </font></td>
        </tr>
        <tr>
          <td><b><font size=2>Parity bit</td>
          <td><font size=2>
            <select size=1 name=B17b5>
              <option value=0&LSetup(3,"%s",17,b5,0," selected");>Disabled</option>
              <option value=1&LSetup(3,"%s",17,b5,1," selected");>Enabled</option>
            </select>
            <select size=1 name=B17b4>
              <option value=0&LSetup(3,"%s",17,b4,0," selected");>Odd</option>
              <option value=1&LSetup(3,"%s",17,b4,1," selected");>Even</option>
            </select>&nbsp;
			</font></td>
          <td><font size=2>
            <select size=1 name=B33b5>
              <option value=0&LSetup(3,"%s",33,b5,0," selected");>Disabled</option>
              <option value=1&LSetup(3,"%s",33,b5,1," selected");>Enabled</option>
            </select>
            <select size=1 name=B33b4>
              <option value=0&LSetup(3,"%s",33,b4,0," selected");>Odd</option>
              <option value=1&LSetup(3,"%s",33,b4,1," selected");>Even</option>
            </select>
          </font></td>
        </tr>
        <tr>
          <td><b><font size=2>Stop bits</td>
          <td><font size=2>
            <select size=1 name=B17b7>
              <option value=0&LSetup(3,"%s",17,b7,0," selected");>1</option>
              <option value=1&LSetup(3,"%s",17,b7,1," selected");>2</option>
            </select>
          </font></td>
          <td><font size=2>
            <select size=1 name=B33b7>
              <option value=0&LSetup(3,"%s",33,b7,0," selected");>1</option>
              <option value=1&LSetup(3,"%s",33,b7,1," selected");>2</option>
            </select>
          </font></td>
        </tr>
        <tr>
          <td><b><font size=2>Hardware flow control</td>
          <td><font size=2>
            <select size=1 name=B17b2>
              <option value=0&LSetup(3,"%s",17,b2,0," selected");>Disabled</option>
              <option value=1&LSetup(3,"%s",17,b2,1," selected");>Enabled</option>
            </select>
          </font></td>
		  <td><font size=2>n.a.</td>
        </tr>
        <tr>
          <td><b><font size=2>Local port</td>
          <td><input name=W18 size=5 maxlength=5 value=&LSetup(1,"%u",18,W); onChange=PortCheck(this)></td>
          <td><input name=W34 size=5 maxlength=5 value=&LSetup(1,"%u",34,W); onChange=PortCheck(this)></td>
        </tr>
        <tr>
          <td><b><font size=2>Disconnect Tout</td>
          <td><input name=B26 size=3 maxlength=3 value=&LSetup(1,"%u",26,B); onChange=ByteCheck(this)><font size=2> seconds</td>
          <td><input name=B42 size=3 maxlength=3 value=&LSetup(1,"%u",42,B); onChange=ByteCheck(this)><font size=2> seconds</td>
        </tr>
        <tr>
          <td><br>
            <input type="submit" value=" OK ">
            <input type="reset" value=" Cancel ">
            </tr>
      </form>
    </table>
    </body>
</html>
HTTP/1.0 200
Content-type: text/html

<html>&L(0,"*",2);
  <head>
    <script language=JavaScript src=util.js></script>
  </head>
  <body bgcolor=#FFFFFF link=#FFFFFF vlink=#FFFFFF leftmargin="0">
    <font size=3 face=Arial>
	<form action=setup.cgi method=get target=_top>
		<table width=640 height="55" border=0 cellpadding="0" cellspacing="0">
			<tr>
				<td valign="middle"><font size=3><b>&nbsp;SETTINGS</td>
				<td align="right" valign="middle">&LSetup(3,"%s",125,W,0,"<!--");<input type=hidden name=L value=uilogout.html><input type=hidden name=D><input type=submit value=" Logout ">&LSetup(3,"%s",125,W,0,"-->");</td>
			</tr>
		</table>
	</form>
    <table width=720 cellpadding="0" cellspacing="0" bgcolor=#8F2635>
      <tr align="center">
        <td width=80 height=30 background="uigl.gif"><font size=1><a href="uifnetwork.html" title="NETWORK SETTINGS" target="config">NETWORK</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifserial.html" title="SERIAL SETTINGS" target="config">SERIAL</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifio.html" title="INPUT/OUTPUT SETTINGS" target="config">I/O</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifcontrol.html" title="CONTROL/INFO/DEBUG SETTINGS" target="config">CONTROL</a></td>
        <td width=80 background="uigs.gif"><font size=1>SNMP</td>
        <td width=80 background="uigl.gif"><font size=1><a href="uiftime.html" title="NTP TIME SETTINGS" target="config">TIME</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uiftemp.html" title="1-WIRE TEMPERATUR SENSOR SETTINGS" target="config">TEMP</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifsecurity.html" title="PASSWORD SETTINGS" target="config">SECURITY</a></td>
        <td width="80" valign="bottom" bgcolor="#FFFFFF"><img src="uigg.gif" width="80" height="1"></td>
      </tr>
    </table><br>
	<table>
      <form action=setup.cgi method=get>
        <input type="hidden" name=L value=uisaved.html>
        <tr>
          <td><b><font size=2>Trap Receiver</td>
          <td><font size=2>
            <input name=B48 size=3 maxlength=3 value=&LSetup(1,"%u",48); onChange=IPCheck(this)><b> . </b>
        <input name=B49 size=3 maxlength=3 value=&LSetup(1,"%u",49); onChange=IPCheck(this)><b> . </b>
        <input name=B50 size=3 maxlength=3 value=&LSetup(1,"%u",50); onChange=IPCheck(this)><b> . </b>
        <input name=B51 size=3 maxlength=3 value=&LSetup(1,"%u",51); onChange=IPCheck(this)> (0.0.0.0 for no traps)</td>
        </tr>
        <tr>
          <td><b><font size=2>Repeat time</td>
          <td><font size=2>
            <input name=W68 size=5 maxlength=5 value=&LSetup(1,"%u",68,W); onChange=IntCheck(this)> seconds</td>
	    </tr>
        <tr>
          <td><font size=2><b><br>Digital Input</td>

          <td><font size=2><b><br>Trap</td>
        </tr>
        <tr>
          <td><b><font size=2>Input #1</td>
		  <td>
            <select size=1 name=B65b0>
              <option value=1&LSetup(3,"%s",65,b0,1," selected");>Yes</option>
              <option value=0&LSetup(3,"%s",65,b0,0," selected");>No</option>
            </select>
          </td>
        </tr>
        <tr>
          <td><b><font size=2>Input #2</td>
		  <td>
            <select size=1 name=B65b1>
              <option value=1&LSetup(3,"%s",65,b1,1," selected");>Yes</option>
              <option value=0&LSetup(3,"%s",65,b1,0," selected");>No</option>
            </select>
          </td>
        <tr>
          <td><b><font size=2>Input #3</td>
          <td>
            <select size=1 name=B65b2>
              <option value=1&LSetup(3,"%s",65,b2,1," selected");>Yes</option>
              <option value=0&LSetup(3,"%s",65,b2,0," selected");>No</option>
            </select>
          </td>
        </tr>
        <tr>
          <td><b><font size=2>Input #4</td>
		  <td>
            <select size=1 name=B65b3>
              <option value=1&LSetup(3,"%s",65,b3,1," selected");>Yes</option>
              <option value=0&LSetup(3,"%s",65,b3,0," selected");>No</option>
            </select>
          </td>
        </tr>
        <tr>
          <td><b><font size=2>Input #5</td>
		  <td>
            <select size=1 name=B65b4>
              <option value=1&LSetup(3,"%s",65,b4,1," selected");>Yes</option>
              <option value=0&LSetup(3,"%s",65,b4,0," selected");>No</option>
            </select>
          </td>
        </tr>
        <tr>
          <td><b><font size=2>Input #6</td>
		  <td>
            <select size=1 name=B65b5>
              <option value=1&LSetup(3,"%s",65,b5,1," selected");>Yes</option>
              <option value=0&LSetup(3,"%s",65,b5,0," selected");>No</option>
            </select>
          </td>
        </tr>
        <tr>
          <td><b><font size=2>Input #7</td>
		  <td>
            <select size=1 name=B65b6>
              <option value=1&LSetup(3,"%s",65,b6,1," selected");>Yes</option>
              <option value=0&LSetup(3,"%s",65,b6,0," selected");>No</option>
            </select>
          </td>
        </tr>
        <tr>
          <td><b><font size=2>Input #8</td>
		  <td>
            <select size=1 name=B65b7>
              <option value=1&LSetup(3,"%s",65,b7,1," selected");>Yes</option>
              <option value=0&LSetup(3,"%s",65,b7,0," selected");>No</option>
            </select>
          </td>
        <tr>
          <td><br>
            <input name="submit" type="submit" value=" OK ">
            <input name="reset" type="reset" value=" Cancel ">
          </td>
        </tr>
      </form>
    </table>
</body>
</html>
HTTP/1.0 200
Content-type: text/html

<html>&L(0,"*");
<head><meta http-equiv="refresh" content="4; url=uistatus.html"></head>
<body bgcolor=#FFFFFF link=#8F2635 vlink=#8F2635><font face=Arial><br>
<font size=3><b>DEVICE STATUS</b> &nbsp; &nbsp; &nbsp; <font size=2> Refresh rate: &nbsp; 4 sec. &nbsp; &nbsp; <a href="uistatus2.html" title="refresh this page every 2 seconds" target="_self">2 seconds</a> &nbsp; &nbsp; <a href="uistatusn.html" title="do not refresh this page" target="_self">no refresh</a></font>
<div id="Layer1" style="position:absolute; left:10px; top:64px; width:602px; height:184px; z-index:1"><img src="uigd.gif" width="601" height="247"></div>
<div id="Layer2" style="position:absolute; left:170px; top:254px; width:29px; height:22px; z-index:2"><img src="d&LIO(1,"%u",201);.gif"></div>
<div id="Layer3" style="position:absolute; left:220px; top:254px; width:29px; height:22px; z-index:2"><img src="d&LIO(1,"%u",202);.gif"></div>
<div id="Layer4" style="position:absolute; left:271px; top:254px; width:29px; height:22px; z-index:2"><img src="d&LIO(1,"%u",203);.gif"></div>
<div id="Layer5" style="position:absolute; left:322px; top:254px; width:29px; height:22px; z-index:2"><img src="d&LIO(1,"%u",204);.gif"></div>
<div id="Layer6" style="position:absolute; left:372px; top:254px; width:29px; height:22px; z-index:2"><img src="d&LIO(1,"%u",205);.gif"></div>
<div id="Layer7" style="position:absolute; left:423px; top:254px; width:29px; height:22px; z-index:2"><img src="d&LIO(1,"%u",206);.gif"></div>
<div id="Layer8" style="position:absolute; left:474px; top:254px; width:29px; height:22px; z-index:2"><img src="d&LIO(1,"%u",207);.gif"></div>
<div id="Layer9" style="position:absolute; left:524px; top:254px; width:29px; height:22px; z-index:2"><img src="d&LIO(1,"%u",208);.gif"></div>
<div id="Layer10" style="position:absolute; left:428px; top:84px; width:29px; height:22px; z-index:2"><A href=/rc.cgi?o=1,999 target="empty"><img src="d&LIO(1,"%1u",1);.gif"></A></div>
<div id="Layer11" style="position:absolute; left:428px; top:132px; width:29px; height:22px; z-index:2"><A href=/rc.cgi?o=2,999 target="empty"><img src="d&LIO(1,"%1u",2);.gif"></A></div>
<div id="Layer16" style="position:absolute; left:372px; top:330px; width:39px; height:22px; z-index:2">
  <div align="right"><b><font size="2" face="Arial, Helvetica, sans-serif">
      <A href=/rc.cgi?o=101,999 target="empty"><img src="d&LIO(1,"%1u",101);.gif"></A><br>
      <A href=/rc.cgi?o=101,2 target="empty">0.2</A><br>
      <A href=/rc.cgi?o=101,10 target="empty">1</A><br>
        <A href=/rc.cgi?o=101,50 target="empty">5</A></font></b></div>
</div>
<div id="Layer17" style="position:absolute; left:423px; top:330px; width:39px; height:22px; z-index:2">
  <div align="right"><b><font size="2" face="Arial, Helvetica, sans-serif">
		<A href=/rc.cgi?o=102,999 target="empty"><img src="d&LIO(1,"%1u",102);.gif"></A><br>
        <A href=/rc.cgi?o=102,2 target="empty">0.2</A><br>
        <A href=/rc.cgi?o=102,10 target="empty">1</A><br>
        <A href=/rc.cgi?o=102,50 target="empty">5</A></font></b></div>
</div>
<div id="Layer18" style="position:absolute; left:475px; top:330px; width:39px; height:22px; z-index:2">
  <div align="right"><b><font size="2" face="Arial, Helvetica, sans-serif">
		<A href=/rc.cgi?o=103,999 target="empty"><img src="d&LIO(1,"%1u",103);.gif"></A><br>
    	<A href=/rc.cgi?o=103,2 target="empty">0.2</A><br>
     	<A href=/rc.cgi?o=103,10 target="empty">1</A><br>
    	<A href=/rc.cgi?o=103,50 target="empty">5</A></font></b></div>
</div>
<div id="Layer18" style="position:absolute; left:524px; top:330px; width:39px; height:22px; z-index:2">
  <div align="right"><b><font size="2" face="Arial, Helvetica, sans-serif">
		<A href=/rc.cgi?o=104,999 target="empty"><img src="d&LIO(1,"%1u",104);.gif"></A><br>
      	<A href=/rc.cgi?o=104,2 target="empty">0.2</A><br>
      	<A href=/rc.cgi?o=104,10 target="empty">1</A><br>
      	<A href=/rc.cgi?o=104,50 target="empty">5</A></font></b></div>
</div>
<div id="Layer19" style="position:absolute; left:571px; top:340px; width:63px; height:21px; z-index:2"><b><font size="2" face="Arial, Helvetica, sans-serif">D OUT</font></b></div>
<div id="Layer20" style="position:absolute; left:571px; top:370px; width:63px; height:21px; z-index:2"><b><font size="2" face="Arial, Helvetica, sans-serif">Pulse<br>
  in sec</font></b></div>
<div id="Layer21" style="position:absolute; left:10px; top:326px; width:155px; height:22px; z-index:2">
<strong><font size="2" face="Arial, Helvetica, sans-serif">ANALOG IN VOLT</font></strong><br>
<br>
<strong><font size="2" face="Arial, Helvetica, sans-serif">ANALOG IN %</font></strong></div>
<div id="Layer22" style="position:absolute; left:170px; top:326px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.2F",501,500,0,1023);<br><br>&LIO(2,"%u",501,100,0,1023);</b></font></div>
<div id="Layer23" style="position:absolute; left:220px; top:326px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.2F",502,500,0,1023);<br><br>&LIO(2,"%u",502,100,0,1023);</b></font></div>
<div id="Layer24" style="position:absolute; left:271px; top:326px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.2F",503,500,0,1023);<br><br>&LIO(2,"%u",503,100,0,1023);</b></font></div>
<div id="Layer25" style="position:absolute; left:322px; top:326px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.2F",504,500,0,1023);<br><br>&LIO(2,"%u",504,100,0,1023);</b></font></div>

<div id="Layer26" style="position:absolute; left:10px; top:450px; width:155px; height:22px; z-index:2">
<strong><font size="2" face="Arial, Helvetica, sans-serif">TEMPERATURE   </font></strong><br>
</div>
<div id="Layer27" style="position:absolute; left:170px; top:450px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.1F",601,5,0,8);</b></font></div>
<div id="Layer28" style="position:absolute; left:220px; top:450px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.1F",602,5,0,8);</b></font></div>
<div id="Layer29" style="position:absolute; left:270px; top:450px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.1F",603,5,0,8);</b></font></div>
<div id="Layer30" style="position:absolute; left:320px; top:450px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.1F",604,5,0,8);</b></font></div>
<div id="Layer31" style="position:absolute; left:370px; top:450px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.1F",605,5,0,8);</b></font></div>
<div id="Layer32" style="position:absolute; left:420px; top:450px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.1F",606,5,0,8);</b></font></div>
<div id="Layer33" style="position:absolute; left:470px; top:450px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.1F",607,5,0,8);</b></font></div>
<div id="Layer34" style="position:absolute; left:520px; top:450px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.1F",608,5,0,8);</b></font></div>
<div id="Layer35" style="position:absolute; left:570px; top:450px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b><A href="uifitemp.html" target="_top">ID's</A></b></font></div>

</html>HTTP/1.0 200
Content-type: text/html

<html>&L(0,"*");
<head><meta http-equiv="refresh" content="2; url=uistatus2.html"></head>
<body bgcolor=#FFFFFF link=#8F2635 vlink=#8F2635><font face=Arial><br>
<font size=3><b>DEVICE STATUS</b> &nbsp; &nbsp; &nbsp; <font size=2> Refresh rate: &nbsp; 2 sec. &nbsp; &nbsp; <a href="uistatus.html" title="refresh this page every 4 seconds" target="_self">4 seconds</a> &nbsp; &nbsp; <a href="uistatusn.html" title="do not refresh this page" target="_self">no refresh</a></font>
<div id="Layer1" style="position:absolute; left:10px; top:64px; width:602px; height:184px; z-index:1"><img src="uigd.gif" width="601" height="247"></div>
<div id="Layer2" style="position:absolute; left:170px; top:254px; width:29px; height:22px; z-index:2"><img src="d&LIO(1,"%u",201);.gif"></div>
<div id="Layer3" style="position:absolute; left:220px; top:254px; width:29px; height:22px; z-index:2"><img src="d&LIO(1,"%u",202);.gif"></div>
<div id="Layer4" style="position:absolute; left:271px; top:254px; width:29px; height:22px; z-index:2"><img src="d&LIO(1,"%u",203);.gif"></div>
<div id="Layer5" style="position:absolute; left:322px; top:254px; width:29px; height:22px; z-index:2"><img src="d&LIO(1,"%u",204);.gif"></div>
<div id="Layer6" style="position:absolute; left:372px; top:254px; width:29px; height:22px; z-index:2"><img src="d&LIO(1,"%u",205);.gif"></div>
<div id="Layer7" style="position:absolute; left:423px; top:254px; width:29px; height:22px; z-index:2"><img src="d&LIO(1,"%u",206);.gif"></div>
<div id="Layer8" style="position:absolute; left:474px; top:254px; width:29px; height:22px; z-index:2"><img src="d&LIO(1,"%u",207);.gif"></div>
<div id="Layer9" style="position:absolute; left:524px; top:254px; width:29px; height:22px; z-index:2"><img src="d&LIO(1,"%u",208);.gif"></div>
<div id="Layer10" style="position:absolute; left:428px; top:84px; width:29px; height:22px; z-index:2"><A href=/rc.cgi?o=1,999 target="empty"><img src="d&LIO(1,"%1u",1);.gif"></A></div>
<div id="Layer11" style="position:absolute; left:428px; top:132px; width:29px; height:22px; z-index:2"><A href=/rc.cgi?o=2,999 target="empty"><img src="d&LIO(1,"%1u",2);.gif"></A></div>
<div id="Layer16" style="position:absolute; left:372px; top:330px; width:39px; height:22px; z-index:2">
  <div align="right"><b><font size="2" face="Arial, Helvetica, sans-serif">
      <A href=/rc.cgi?o=101,999 target="empty"><img src="d&LIO(1,"%1u",101);.gif"></A><br>
      <A href=/rc.cgi?o=101,2 target="empty">0.2</A><br>
      <A href=/rc.cgi?o=101,10 target="empty">1</A><br>
        <A href=/rc.cgi?o=101,50 target="empty">5</A></font></b></div>
</div>
<div id="Layer17" style="position:absolute; left:423px; top:330px; width:39px; height:22px; z-index:2">
  <div align="right"><b><font size="2" face="Arial, Helvetica, sans-serif">
		<A href=/rc.cgi?o=102,999 target="empty"><img src="d&LIO(1,"%1u",102);.gif"></A><br>
        <A href=/rc.cgi?o=102,2 target="empty">0.2</A><br>
        <A href=/rc.cgi?o=102,10 target="empty">1</A><br>
        <A href=/rc.cgi?o=102,50 target="empty">5</A></font></b></div>
</div>
<div id="Layer18" style="position:absolute; left:475px; top:330px; width:39px; height:22px; z-index:2">
  <div align="right"><b><font size="2" face="Arial, Helvetica, sans-serif">
		<A href=/rc.cgi?o=103,999 target="empty"><img src="d&LIO(1,"%1u",103);.gif"></A><br>
    	<A href=/rc.cgi?o=103,2 target="empty">0.2</A><br>
     	<A href=/rc.cgi?o=103,10 target="empty">1</A><br>
    	<A href=/rc.cgi?o=103,50 target="empty">5</A></font></b></div>
</div>
<div id="Layer18" style="position:absolute; left:524px; top:330px; width:39px; height:22px; z-index:2">
  <div align="right"><b><font size="2" face="Arial, Helvetica, sans-serif">
		<A href=/rc.cgi?o=104,999 target="empty"><img src="d&LIO(1,"%1u",104);.gif"></A><br>
      	<A href=/rc.cgi?o=104,2 target="empty">0.2</A><br>
      	<A href=/rc.cgi?o=104,10 target="empty">1</A><br>
      	<A href=/rc.cgi?o=104,50 target="empty">5</A></font></b></div>
</div>
<div id="Layer19" style="position:absolute; left:571px; top:340px; width:63px; height:21px; z-index:2"><b><font size="2" face="Arial, Helvetica, sans-serif">D OUT</font></b></div>
<div id="Layer20" style="position:absolute; left:571px; top:370px; width:63px; height:21px; z-index:2"><b><font size="2" face="Arial, Helvetica, sans-serif">Pulse<br>
  in sec</font></b></div>
<div id="Layer21" style="position:absolute; left:10px; top:326px; width:155px; height:22px; z-index:2">
<strong><font size="2" face="Arial, Helvetica, sans-serif">ANALOG IN VOLT</font></strong><br>
<br>
<strong><font size="2" face="Arial, Helvetica, sans-serif">ANALOG IN %</font></strong></div>
<div id="Layer22" style="position:absolute; left:170px; top:326px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.2F",501,500,0,1023);<br><br>&LIO(2,"%u",501,100,0,1023);</b></font></div>
<div id="Layer23" style="position:absolute; left:220px; top:326px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.2F",502,500,0,1023);<br><br>&LIO(2,"%u",502,100,0,1023);</b></font></div>
<div id="Layer24" style="position:absolute; left:271px; top:326px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.2F",503,500,0,1023);<br><br>&LIO(2,"%u",503,100,0,1023);</b></font></div>
<div id="Layer25" style="position:absolute; left:322px; top:326px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.2F",504,500,0,1023);<br><br>&LIO(2,"%u",504,100,0,1023);</b></font></div>

<div id="Layer26" style="position:absolute; left:10px; top:450px; width:155px; height:22px; z-index:2">
<strong><font size="2" face="Arial, Helvetica, sans-serif">TEMPERATURE   </font></strong><br>
</div>
<div id="Layer27" style="position:absolute; left:170px; top:450px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.1F",601,5,0,8);</b></font></div>
<div id="Layer28" style="position:absolute; left:220px; top:450px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.1F",602,5,0,8);</b></font></div>
<div id="Layer29" style="position:absolute; left:270px; top:450px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.1F",603,5,0,8);</b></font></div>
<div id="Layer30" style="position:absolute; left:320px; top:450px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.1F",604,5,0,8);</b></font></div>
<div id="Layer31" style="position:absolute; left:370px; top:450px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.1F",605,5,0,8);</b></font></div>
<div id="Layer32" style="position:absolute; left:420px; top:450px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.1F",606,5,0,8);</b></font></div>
<div id="Layer33" style="position:absolute; left:470px; top:450px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.1F",607,5,0,8);</b></font></div>
<div id="Layer34" style="position:absolute; left:520px; top:450px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.1F",608,5,0,8);</b></font></div>
</html>HTTP/1.0 200
Content-type: text/html

<html>&L(0,"*");
<head></head>
<body bgcolor=#FFFFFF link=#8F2635 vlink=#8F2635><font face=Arial><br>
<font size=3><b>DEVICE STATUS</b> &nbsp; &nbsp; &nbsp; <font size=2> Refresh rate: &nbsp; stopped &nbsp; &nbsp; <a href="uistatus2.html" title="refresh this page every 2 seconds" target="_self">2 seconds</a> &nbsp; &nbsp; <a href="uistatus.html" title="refresh this page every 4 seconds" target="_self">4 seconds</a></font>
<div id="Layer1" style="position:absolute; left:10px; top:64px; width:602px; height:184px; z-index:1"><img src="uigd.gif" width="601" height="247"></div>
<div id="Layer2" style="position:absolute; left:170px; top:254px; width:29px; height:22px; z-index:2"><img src="d&LIO(1,"%u",201);.gif"></div>
<div id="Layer3" style="position:absolute; left:220px; top:254px; width:29px; height:22px; z-index:2"><img src="d&LIO(1,"%u",202);.gif"></div>
<div id="Layer4" style="position:absolute; left:271px; top:254px; width:29px; height:22px; z-index:2"><img src="d&LIO(1,"%u",203);.gif"></div>
<div id="Layer5" style="position:absolute; left:322px; top:254px; width:29px; height:22px; z-index:2"><img src="d&LIO(1,"%u",204);.gif"></div>
<div id="Layer6" style="position:absolute; left:372px; top:254px; width:29px; height:22px; z-index:2"><img src="d&LIO(1,"%u",205);.gif"></div>
<div id="Layer7" style="position:absolute; left:423px; top:254px; width:29px; height:22px; z-index:2"><img src="d&LIO(1,"%u",206);.gif"></div>
<div id="Layer8" style="position:absolute; left:474px; top:254px; width:29px; height:22px; z-index:2"><img src="d&LIO(1,"%u",207);.gif"></div>
<div id="Layer9" style="position:absolute; left:524px; top:254px; width:29px; height:22px; z-index:2"><img src="d&LIO(1,"%u",208);.gif"></div>
<div id="Layer10" style="position:absolute; left:428px; top:84px; width:29px; height:22px; z-index:2"><A href=/rc.cgi?o=1,999 target="empty"><img src="d&LIO(1,"%1u",1);.gif"></A></div>
<div id="Layer11" style="position:absolute; left:428px; top:132px; width:29px; height:22px; z-index:2"><A href=/rc.cgi?o=2,999 target="empty"><img src="d&LIO(1,"%1u",2);.gif"></A></div>
<div id="Layer16" style="position:absolute; left:372px; top:330px; width:39px; height:22px; z-index:2">
  <div align="right"><b><font size="2" face="Arial, Helvetica, sans-serif">
      <A href=/rc.cgi?o=101,999 target="empty"><img src="d&LIO(1,"%1u",101);.gif"></A><br>
      <A href=/rc.cgi?o=101,2 target="empty">0.2</A><br>
      <A href=/rc.cgi?o=101,10 target="empty">1</A><br>
        <A href=/rc.cgi?o=101,50 target="empty">5</A></font></b></div>
</div>
<div id="Layer17" style="position:absolute; left:423px; top:330px; width:39px; height:22px; z-index:2">
  <div align="right"><b><font size="2" face="Arial, Helvetica, sans-serif">
		<A href=/rc.cgi?o=102,999 target="empty"><img src="d&LIO(1,"%1u",102);.gif"></A><br>
        <A href=/rc.cgi?o=102,2 target="empty">0.2</A><br>
        <A href=/rc.cgi?o=102,10 target="empty">1</A><br>
        <A href=/rc.cgi?o=102,50 target="empty">5</A></font></b></div>
</div>
<div id="Layer18" style="position:absolute; left:475px; top:330px; width:39px; height:22px; z-index:2">
  <div align="right"><b><font size="2" face="Arial, Helvetica, sans-serif">
		<A href=/rc.cgi?o=103,999 target="empty"><img src="d&LIO(1,"%1u",103);.gif"></A><br>
    	<A href=/rc.cgi?o=103,2 target="empty">0.2</A><br>
     	<A href=/rc.cgi?o=103,10 target="empty">1</A><br>
    	<A href=/rc.cgi?o=103,50 target="empty">5</A></font></b></div>
</div>
<div id="Layer18" style="position:absolute; left:524px; top:330px; width:39px; height:22px; z-index:2">
  <div align="right"><b><font size="2" face="Arial, Helvetica, sans-serif">
		<A href=/rc.cgi?o=104,999 target="empty"><img src="d&LIO(1,"%1u",104);.gif"></A><br>
      	<A href=/rc.cgi?o=104,2 target="empty">0.2</A><br>
      	<A href=/rc.cgi?o=104,10 target="empty">1</A><br>
      	<A href=/rc.cgi?o=104,50 target="empty">5</A></font></b></div>
</div>
<div id="Layer19" style="position:absolute; left:571px; top:340px; width:63px; height:21px; z-index:2"><b><font size="2" face="Arial, Helvetica, sans-serif">D OUT</font></b></div>
<div id="Layer20" style="position:absolute; left:571px; top:370px; width:63px; height:21px; z-index:2"><b><font size="2" face="Arial, Helvetica, sans-serif">Pulse<br>
  in sec</font></b></div>
<div id="Layer21" style="position:absolute; left:10px; top:326px; width:155px; height:22px; z-index:2">
<strong><font size="2" face="Arial, Helvetica, sans-serif">ANALOG IN VOLT</font></strong><br>
<br>
<strong><font size="2" face="Arial, Helvetica, sans-serif">ANALOG IN %</font></strong></div>
<div id="Layer22" style="position:absolute; left:170px; top:326px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.2F",501,500,0,1023);<br><br>&LIO(2,"%u",501,100,0,1023);</b></font></div>
<div id="Layer23" style="position:absolute; left:220px; top:326px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.2F",502,500,0,1023);<br><br>&LIO(2,"%u",502,100,0,1023);</b></font></div>
<div id="Layer24" style="position:absolute; left:271px; top:326px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.2F",503,500,0,1023);<br><br>&LIO(2,"%u",503,100,0,1023);</b></font></div>
<div id="Layer25" style="position:absolute; left:322px; top:326px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.2F",504,500,0,1023);<br><br>&LIO(2,"%u",504,100,0,1023);</b></font></div>

<div id="Layer26" style="position:absolute; left:10px; top:450px; width:155px; height:22px; z-index:2">
<strong><font size="2" face="Arial, Helvetica, sans-serif">TEMPERATURE   </font></strong><br>
</div>
<div id="Layer27" style="position:absolute; left:170px; top:450px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.1F",601,5,0,8);</b></font></div>
<div id="Layer28" style="position:absolute; left:220px; top:450px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.1F",602,5,0,8);</b></font></div>
<div id="Layer29" style="position:absolute; left:270px; top:450px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.1F",603,5,0,8);</b></font></div>
<div id="Layer30" style="position:absolute; left:320px; top:450px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.1F",604,5,0,8);</b></font></div>
<div id="Layer31" style="position:absolute; left:370px; top:450px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.1F",605,5,0,8);</b></font></div>
<div id="Layer32" style="position:absolute; left:420px; top:450px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.1F",606,5,0,8);</b></font></div>
<div id="Layer33" style="position:absolute; left:470px; top:450px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.1F",607,5,0,8);</b></font></div>
<div id="Layer34" style="position:absolute; left:520px; top:450px; width:29px; height:22px; z-index:2"><font size="2" face="Arial, Helvetica, sans-serif"><b>&LIO(2,"%.1F",608,5,0,8);</b></font></div>
</html>HTTP/1.0 200
Content-type: text/html

<html>&L(0,"*",0);
  <head>
    <script language=JavaScript src=util.js></script>
  </head>
  <body bgcolor=#FFFFFF link=#FFFFFF vlink=#FFFFFF leftmargin="0">
    <font size=3 face=Arial>
	<form action=setup.cgi method=get target=_top>
		<table width=640 height="55" border=0 cellpadding="0" cellspacing="0">
			<tr>
				<td valign="middle"><font size=3><b>&nbsp;SETTINGS</td>
				<td align="right" valign="middle"></td>
			</tr>
		</table>
	</form>
    <table width=720 cellpadding="0" cellspacing="0" bgcolor=#8F2635>
      <tr align="center">
        <td width=80 height=30 background="uigl.gif"><font size=1><a href="uifnetwork.html" title="NETWORK SETTINGS" target="config">NETWORK</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifserial.html" title="SERIAL SETTINGS" target="config">SERIAL</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifio.html" title="INPUT/OUTPUT SETTINGS" target="config">I/O</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifcontrol.html" title="CONTROL/INFO/DEBUG SETTINGS" target="config">CONTROL</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifsnmp.html" title="SNMP SETTINGS" target="config">SNMP</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uiftime.html" title="NTP TIME SETTINGS" target="config">TIME</a></td>
        <td width=80 background="uigs.gif"><font size=1>TEMP</td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifsecurity.html" title="PASSWORD SETTINGS" target="config">SECURITY</a></td>
        <td width="80" valign="bottom" bgcolor="#FFFFFF"><img src="uigg.gif" width="80" height="1"></td>
      </tr>
    </table><br>
    <table>
  <tr>
    <td><b><font size=2>Temperature&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td><b><font size=2>One-Wire Address</td>
    <td><b><font size=2>Temp deg C</td>
  </tr>
   <tr>
    <td><b><font size=2>Sensor #1</td>
    <td><font size=2 face=courier>&LIO(3,"",0);</td>
    <td>&LIO(2,"%.1F",601,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #2</td>
    <td><font size=2 face=courier>&LIO(3,"",1);</td>
    <td>&LIO(2,"%.1F",602,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #3</td>
    <td><font size=2 face=courier>&LIO(3,"",2);</td>
    <td>&LIO(2,"%.1F",603,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #4</td>
    <td><font size=2 face=courier>&LIO(3,"",3);</td>
    <td>&LIO(2,"%.1F",604,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #5</td>
    <td><font size=2 face=courier>&LIO(3,"",4);</td>
    <td>&LIO(2,"%.1F",605,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #6</td>
    <td><font size=2 face=courier>&LIO(3,"",5);</td>
    <td>&LIO(2,"%.1F",606,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #7</td>
    <td><font size=2 face=courier>&LIO(3,"",6);</td>
    <td>&LIO(2,"%.1F",607,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #8</td>
    <td><font size=2 face=courier>&LIO(3,"",7);</td>
    <td>&LIO(2,"%.1F",608,5,0,8);</td>
  </tr>
   <tr>
    <td><b><font size=2>Sensor #9</td>
    <td><font size=2 face=courier>&LIO(3,"",8);</td>
    <td>&LIO(2,"%.1F",609,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #10</td>
    <td><font size=2 face=courier>&LIO(3,"",9);</td>
    <td>&LIO(2,"%.1F",610,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #11</td>
    <td><font size=2 face=courier>&LIO(3,"",10);</td>
    <td>&LIO(2,"%.1F",611,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #12</td>
    <td><font size=2 face=courier>&LIO(3,"",11);</td>
    <td>&LIO(2,"%.1F",612,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #13</td>
    <td><font size=2 face=courier>&LIO(3,"",12);</td>
    <td>&LIO(2,"%.1F",613,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #14</td>
    <td><font size=2 face=courier>&LIO(3,"",13);</td>
    <td>&LIO(2,"%.1F",614,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #15</td>
    <td><font size=2 face=courier>&LIO(3,"",14);</td>
    <td>&LIO(2,"%.1F",615,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #16</td>
    <td><font size=2 face=courier>&LIO(3,"",15);</td>
    <td>&LIO(2,"%.1F",616,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #17</td>
    <td><font size=2 face=courier>&LIO(3,"",16);</td>
    <td>&LIO(2,"%.1F",617,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #18</td>
    <td><font size=2 face=courier>&LIO(3,"",17);</td>
    <td>&LIO(2,"%.1F",618,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #19</td>
    <td><font size=2 face=courier>&LIO(3,"",18);</td>
    <td>&LIO(2,"%.1F",619,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #20</td>
    <td><font size=2 face=courier>&LIO(3,"",19);</td>
    <td>&LIO(2,"%.1F",620,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #21</td>
    <td><font size=2 face=courier>&LIO(3,"",20);</td>
    <td>&LIO(2,"%.1F",621,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #22</td>
    <td><font size=2 face=courier>&LIO(3,"",21);</td>
    <td>&LIO(2,"%.1F",622,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #23</td>
    <td><font size=2 face=courier>&LIO(3,"",22);</td>
    <td>&LIO(2,"%.1F",623,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #24</td>
    <td><font size=2 face=courier>&LIO(3,"",23);</td>
    <td>&LIO(2,"%.1F",624,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #25</td>
    <td><font size=2 face=courier>&LIO(3,"",24);</td>
    <td>&LIO(2,"%.1F",625,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #26</td>
    <td><font size=2 face=courier>&LIO(3,"",25);</td>
    <td>&LIO(2,"%.1F",626,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #27</td>
    <td><font size=2 face=courier>&LIO(3,"",26);</td>
    <td>&LIO(2,"%.1F",627,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #28</td>
    <td><font size=2 face=courier>&LIO(3,"",27);</td>
    <td>&LIO(2,"%.1F",628,5,0,8);</td>  </tr>
  <tr>
    <td><b><font size=2>Sensor #29</td>
    <td><font size=2 face=courier>&LIO(3,"",28);</td>
    <td>&LIO(2,"%.1F",629,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #30</td>
    <td><font size=2 face=courier>&LIO(3,"",29);</td>
    <td>&LIO(2,"%.1F",630,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #31</td>
    <td><font size=2 face=courier>&LIO(3,"",30);</td>
    <td>&LIO(2,"%.1F",631,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #32</td>
    <td><font size=2 face=courier>&LIO(3,"",31);</td>
    <td>&LIO(2,"%.1F",632,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #33</td>
    <td><font size=2 face=courier>&LIO(3,"",32);</td>
    <td>&LIO(2,"%.1F",633,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #34</td>
    <td><font size=2 face=courier>&LIO(3,"",33);</td>
    <td>&LIO(2,"%.1F",634,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #35</td>
    <td><font size=2 face=courier>&LIO(3,"",34);</td>
    <td>&LIO(2,"%.1F",635,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #36</td>
    <td><font size=2 face=courier>&LIO(3,"",35);</td>
    <td>&LIO(2,"%.1F",636,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #37</td>
    <td><font size=2 face=courier>&LIO(3,"",36);</td>
    <td>&LIO(2,"%.1F",637,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #38</td>
    <td><font size=2 face=courier>&LIO(3,"",37);</td>
    <td>&LIO(2,"%.1F",638,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #39</td>
    <td><font size=2 face=courier>&LIO(3,"",38);</td>
    <td>&LIO(2,"%.1F",639,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #40</td>
    <td><font size=2 face=courier>&LIO(3,"",39);</td>
    <td>&LIO(2,"%.1F",640,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #41</td>
    <td><font size=2 face=courier>&LIO(3,"",40);</td>
    <td>&LIO(2,"%.1F",641,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #42</td>
    <td><font size=2 face=courier>&LIO(3,"",41);</td>
    <td>&LIO(2,"%.1F",642,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #43</td>
    <td><font size=2 face=courier>&LIO(3,"",42);</td>
    <td>&LIO(2,"%.1F",643,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #44</td>
    <td><font size=2 face=courier>&LIO(3,"",43);</td>
    <td>&LIO(2,"%.1F",644,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #45</td>
    <td><font size=2 face=courier>&LIO(3,"",44);</td>
    <td>&LIO(2,"%.1F",645,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #46</td>
    <td><font size=2 face=courier>&LIO(3,"",45);</td>
    <td>&LIO(2,"%.1F",646,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #47</td>
    <td><font size=2 face=courier>&LIO(3,"",46);</td>
    <td>&LIO(2,"%.1F",647,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #48</td>
    <td><font size=2 face=courier>&LIO(3,"",47);</td>
    <td>&LIO(2,"%.1F",648,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #49</td>
    <td><font size=2 face=courier>&LIO(3,"",48);</td>
    <td>&LIO(2,"%.1F",649,5,0,8);</td>
  </tr>
  <tr>
    <td><b><font size=2>Sensor #50</td>
    <td><font size=2 face=courier>&LIO(3,"",49);</td>
    <td>&LIO(2,"%.1F",650,5,0,8);</td>
  </tr>
    </table>
    </body>
</html>HTTP/1.0 200
Content-type: text/html

<html>&L(0,"*",2);
  <head>
    <script language=JavaScript src=util.js></script>
  </head>
  <body bgcolor=#FFFFFF link=#FFFFFF vlink=#FFFFFF leftmargin="0">
    <font size=3 face=Arial>
	<form action=setup.cgi method=get target=_top>
		<table width=640 height="55" border=0 cellpadding="0" cellspacing="0">
			<tr>
				<td valign="middle"><font size=3><b>&nbsp;SETTINGS</td>
				<td align="right" valign="middle">&LSetup(3,"%s",125,W,0,"<!--");<input type=hidden name=L value=uilogout.html><input type=hidden name=D><input type=submit value=" Logout ">&LSetup(3,"%s",125,W,0,"-->");</td>
			</tr>
		</table>
	</form>
    <table width=720 cellpadding="0" cellspacing="0" bgcolor=#8F2635>
      <tr align="center">
        <td width=80 height=30 background="uigl.gif"><font size=1><a href="uifnetwork.html" title="NETWORK SETTINGS" target="config">NETWORK</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifserial.html" title="SERIAL PORT SETTINGS" target="config">SERIAL</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifio.html" title="INPUT/OUTPUT SETTINGS" target="config">I/O</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifcontrol.html" title="CONTROL/INFO/DEBUG SETTINGS" target="config">CONTROL</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifsnmp.html" title="SNMP SETTINGS" target="config">SNMP</a></td>
        <td width=80 height=30 background="uigs.gif"><font size=1>TIME</td>
        <td width=80 background="uigl.gif"><font size=1><a href="uiftemp.html" title="1-WIRE TEMPERATUR SENSOR SETTINGS" target="config">TEMP</a></td>
        <td width=80 background="uigl.gif"><font size=1><a href="uifsecurity.html" title="PASSWORD SETTINGS" target="config">SECURITY</a></td>
        <td width="80" valign="bottom" bgcolor="#FFFFFF"><img src="uigg.gif" width="80" height="1"></td>
      </tr>
    </table><br>

    <table>
      <form action=setup.cgi method=get>
        <input type="hidden" name=L value=uisaved.html>
        <tr>
          <td><b><font size=2>NTP Server</td>
          <td><font size=2>
            <input name=B84 size=3 maxlength=3 value=&LSetup(1,"%u",84); onChange=IPCheck(this)><b> . </b>
            <input name=B85 size=3 maxlength=3 value=&LSetup(1,"%u",85); onChange=IPCheck(this)><b> . </b>
            <input name=B86 size=3 maxlength=3 value=&LSetup(1,"%u",86); onChange=IPCheck(this)><b> . </b>
            <input name=B87 size=3 maxlength=3 value=&LSetup(1,"%u",87); onChange=IPCheck(this)> (0.0.0.0 for none)</font></td>
        </tr>
        <tr>
          <td><b><font size=2>Onewire RTC</td>
          <td><font size=2>&LIO(3,"",-1);</font></td>
        </tr>
        <tr>
          <td><b><font size=2>Time Zone</font></b></td>
          <td><select size=1 name=B94>
              <option value=232&LSetup(3,"%s",94,B,232," selected");>-12 (Kwajalein,
              Eniwetok)</option>
              <option value=234&LSetup(3,"%s",94,B,234," selected");>-11 (Samoa,
              Midway Islands)</option>
              <option value=236&LSetup(3,"%s",94,B,236," selected");>-10 (Hawaii)</option>
              <option value=238&LSetup(3,"%s",94,B,238," selected");>-9 (Alaska)</option>
              <option value=240&LSetup(3,"%s",94,B,240," selected");>-8 (US Pacific)</option>
              <option value=242&LSetup(3,"%s",94,B,242," selected");>-7 (US Mountain)</option>
              <option value=244&LSetup(3,"%s",94,B,244," selected");>-6 (US Central)</option>
              <option value=246&LSetup(3,"%s",94,B,246," selected");>-5 (US Eastern)</option>
              <option value=248&LSetup(3,"%s",94,B,248," selected");>-4 (Atlantic,
              Caracas, La Paz)</option>
              <option value=249&LSetup(3,"%s",94,B,249," selected");>-3:30 (Newfoundland)</option>
              <option value=250&LSetup(3,"%s",94,B,250," selected");>-3 (Buenos
              Aires, Brasilia)</option>
              <option value=252&LSetup(3,"%s",94,B,252," selected");>-2 (MidAtlantic)</option>
              <option value=254&LSetup(3,"%s",94,B,254," selected");>-1 (Azores)</option>
              <option value=0&LSetup(3,"%s",94,B,0," selected");>0 (Greenwich,
              London, Lisabon, Dublin)</option>
              <option value=2&LSetup(3,"%s",94,B,2," selected");>+1 (West Europe,
              Berlin, Paris, Rome, Madrid)</option>
              <option value=4&LSetup(3,"%s",94,B,4," selected");>+2 (East Europe,
              Athens, Cairo, Harare, Israel)</option>
              <option value=6&LSetup(3,"%s",94,B,6," selected");>+3 (Moscow)</option>
              <option value=7&LSetup(3,"%s",94,B,7," selected");>+3:30 (Tehran)</option>
              <option value=8&LSetup(3,"%s",94,B,8," selected");>+4 (Abu Dhabi,
              Baku, Muscat)</option>
              <option value=10&LSetup(3,"%s",94,B,10," selected");>+5 (Karachi,
              Islamabad, Ekaterinburg)</option>
              <option value=11&LSetup(3,"%s",94,B,11," selected");>+5:30 (Bombay,
              Calcutta, Madras, New Delhi)</option>
              <option value=12&LSetup(3,"%s",94,B,12," selected");>+6 (Dhaka,
              Almaty, Colombo)</option>
              <option value=14&LSetup(3,"%s",94,B,14," selected");>+7 (Bangkok,
              Hanoi, Jakarta)</option>
              <option value=16&LSetup(3,"%s",94,B,16," selected");>+8 (Beijing,
              Hong Kong, Singapore, Taipei, Perth)</option>
              <option value=18&LSetup(3,"%s",94,B,18," selected");>+9 (Tokyo,
              Osaka, Sapporo, Seoul, Yakutsk)</option>
              <option value=19&LSetup(3,"%s",94,B,19," selected");>+9:30 (Alelaide,
              Darwin)</option>
              <option value=20&LSetup(3,"%s",94,B,20," selected");>+10 (Brisbane,
              Melbourne, Sydney, Guam, Hobart)</option>
              <option value=22&LSetup(3,"%s",94,B,22," selected");>+11 (Solomon
              Is., Magadan, New Caledonia)</option>
              <option value=24&LSetup(3,"%s",94,B,24," selected");>+12 (Auckland,
              Wellington, Fiji, Kamchatka)</option>
            </select>
          </td>
          <td> <font size="2" face="Arial, Helvetica, sans-serif"> hours offset to UTC </font></td>
        </tr>
        <tr>
          <td> <br>
              <input name="submit" type="submit" value=" OK ">
              <input name="reset" type="reset" value=" Cancel ">
          </td>
        </tr>
      </form>
    </table>
    </body>
</html>
HTTP/1.0 200
Content-type: text/html

<html>&L(0,"*");
<head>
 <title>Update</title>
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body BGCOLOR=#ffffff vlink=#ffffff link=#ffffff><br>
<font face=Arial>
<table border=0 cellspacing=0>
 <tr>
    <td colspan=2><font size=3><b>Versions</b></td>
  </tr>
  <tr>
    <td height="3" colspan="2"><img src="uigg.gif" width="550" height="1"></td>
  </tr>
  <tr>
    <td colspan=2><font size=2>Please report this version information when requesting help from support@barix.com<br><br>
  </tr>
  <tr>
    <td><font size=2><b>Firmware</b></td>
    <td><font size=2>V&LSetup(1,"%1V");</td>
  </tr>
  <tr>
    <td><font size=2><b>Web UI</b></td>
    <td><font size=2>V02.30 20100315</td>
  </tr>
  <tr>
  <tr>
    <td><font size=2><b>PIC</b></td>
    <td><font size=2>V0&LIO(1,"%s",A);</td>
  </tr>
  <tr>
    <td><font size=2><b>Setup</b></td>
    <td><font size=2>&LSetup(1,"%02x",4);.&LSetup(1,"%02x",5);</td>
  </tr>
  <tr>
    <td colspan=2><font size=3><b><br>Update</b></td>
  </tr>
  <tr>
    <td height="3" colspan="2"><img src="uigg.gif" width="550" height="1"></td>
  </tr>
  <tr>
    <td colspan=2><font size=2>Please update the Barionet using tftp, using instructions and files supplied from the Barix website.<br><br></td>
  </tr>
</table>
</body>
</html>
HTTP/1.0 200
Content-type: text/html

<html>
<head>
 <title>Update Advanced</title>
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body BGCOLOR=#ffffff vlink=#ffffff link=#ffffff><font face="Arial">
<h1><font face="Arial">Update Advanced</font></h1>

<table>
 <tr>
  <td>
   <hr>
  </td>
  <td>
   <hr>
  </td>
 </tr>
<form enctype="multipart/form-data" action="/rc.cgi" method=POST>
 <tr>
  <td>
    <font face="Arial">Target
    </font></td>
  <td>
   <input type="text" name="target" value="" size="5" maxlength="5">
  </td>
 </tr>
 <tr>
  <td>
    <font face="Arial">Resource</font>  </td>
  <td>
   <input type="file" name="file" value="" size="50">
   <input type="submit" value="Upload File">
  </td>
 </tr>
</form>
</table>
</body>
</html> 
HTTP/1.0 200
Content-type: application/x-javascript

function PortCheck(I){
  d =parseInt(I.value, 10);
  if ( !( d<65536 && d>=0) ) {
    alert('Port value is out of range [0 - 65535]');
    I.value = I.defaultValue;
  }
}

function IntCheck(I){
  d =parseInt(I.value, 10);
  if ( !( d<65536 && d>=0) ) {
    alert('Value is out of range [0 - 65535]');
    I.value = I.defaultValue;
  }
}

function ByteCheck(I){
  d =parseInt(I.value, 10);
  if ( !( d<256 && d>=0) ) {
    alert('Value is out of range [0 - 255]');
    I.value = I.defaultValue;
  }
}

function IPCheck(I){
  d =parseInt(I.value, 10);
  if ( !(d<256 && d>=0) ) {
    alert('IP value is out of range [0 - 255]');
    I.value = I.defaultValue;
  }
}

function IP0to254(I){
  d =parseInt(I.value, 10);
  if ( !(d<255 && d>=0) ) {
    alert('IP value is out of range [0 - 254]');
    I.value = I.defaultValue;
  }
}

function IP1to254(I){
  d =parseInt(I.value, 10);
  if ( !(d<255 && d>0) ) {
    alert('IP value is out of range [1 - 254]');
    I.value = I.defaultValue;
  }
}

function CheckMetric(I){
  d =parseInt(I.value, 10);
  if ( !(d<16 && d>=0) ) {
    alert('Hop count value is out of range [0 - 15]');
    I.value = I.defaultValue;
  }
}

function netMaskCheck(I){
  d =parseInt(I.value, 10);
  if( !(d==0 || d==128 || d==192 || d==224 || d==240 || d==248 || d==252 || d==254 || d==255 )) {
    alert('Incorrect NetMask value!!!');
    I.value = I.defaultValue;
  }
}

function netMaskCheck3(I){
  d =parseInt(I.value, 10);
  if( !(d==0 || d==128 || d==192 || d==224 || d==240 || d==248 || d==252 || d==254 )) {
    alert('Incorrect NetMask value!!!');
    I.value = I.defaultValue;
  }
}

function TempCheck(I){
  d =parseInt(I.value, 10);
  if ( !(d<99 && d>-99) ) {
    alert('Temperature value is out of range [-99...99 deg C]');
    I.value = "0";
  }
}

function LightCheck(I){
  d =parseInt(I.value, 10);
  if ( !(d<91 && d>9) ) {
    alert('Value is out of range [10...90]');
    I.value = "0";
  }
}

function mVCheck(I){
  d =parseInt(I.value, 10);
  if ( !(d<30000 && d>9000) ) {
    alert('The entered voltage value is out of range [9000...30000 mV]');
    I.value = "12000";
  }
}

function aiCheck(I){
  d =parseInt(I.value, 10);
  if ( !(d<1024 && d>0) ) {
    alert('The entered value is out of range [1...1023]');
    I.value = "512";
  }
}

function mACheck(I){
  d =parseInt(I.value, 10);
  if ( !(d<30000 && d>1000) ) {
    alert('The entered value is out of range [1000...30000 mA]');
    I.value = "5000";
  }
}

function hourCheck(I){
  d =parseInt(I.value, 10);
  if ( !(d<0 && d>23) ) {
    alert('The entered value is out of range [0..23]');
    I.value = "10";
  }
}

function minCheck(I){
  d =parseInt(I.value, 10);
  if ( !(d<0 && d>59) ) {
    alert('The entered value is out of range [0..59]');
    I.value = "0";
  }
}

function VcalCheck(I){
  d =parseInt(I.value, 10);
  if ( !(d<9999 && d>900) ) {
    alert('Calibration Constant is out of range [900...9999]');
    I.value = "1000";
  }
}

function Go(x) {
   parent.frames[3].location.href = x;
   document.forms[0].reset();
   document.forms[0].elements[0].blur();
}


