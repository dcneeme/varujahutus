CoB1
�   diag.xhtml
y �  formula.js
ee  index.htmlX�  index2.html�"!  io_diag.html%  io_muutujad.html�C-  uiappsetup1.html�	�p  uihappsetup1.html��z  uimenu.htmlKǁ  uimenu0.htmlO�  uistatus.xhtml <?xml version="1.0" encoding="ISO-8859-1"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xmlns:svg="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
    <head>
        <script type="text/javascript" src="prototype-1.4.0.js"></script>
        <script type="text/javascript" src="util.js"></script>
        <link rel="stylesheet" type="text/css" href="default.css"/>
        <meta http-equiv="Content-type" content="text/html;charset=ISO-8859-1" />
        <script type="text/javascript">
            //preload images that are reusable by DOM for quicker rendering
            if (document.images) 
            {
               img0 = new Image();
               img1 = new Image();
               img0.src = "d0.gif";
               img1.src = "d1.gif";
            }
        </script>
    </head>
    <body> 
	<div id="status" style="position:absolute; left:10px; top:450px;visibility:visible;background-color: #99FF66; layer-background-color: #99FF66;">Muutujad</div>
   <h3>E-pileti terminaali diagnostika</h3>
   
   <table border="0" cellpadding="3">
        
        <tr>
            <td align="right" bgcolor="#ddddca">Kontrolleri sisend</td>
        
                <td bgcolor="#DDDAC3" align="center">-</td>
                <td bgcolor="#DDDAC3" align="center">-</td>
                <td bgcolor="#DDDAC3" align="center">-</td>
                <td bgcolor="#DDDAC3" align="center">-</td>
                <td bgcolor="#DDDAC3" align="center">KM^</td>
                <td bgcolor="#DDDAC3" align="center">LOOP</td>
                <td bgcolor="#DDDAC3" align="center">TP|</td>
                <td bgcolor="#DDDAC3" align="center">TP-</td>
                </tr>
                <tr>
            <td align="right" bgcolor="#ddddca">Sisendi olek</td>
            <td bgcolor="#993333" align="center">
                <div class="ruler">
                    <img id="i1" src="d0.gif" alt="sisend1"/>
                    <span id="i1_txt" class="middle">-</span>
                </div>
            </td>
            <td bgcolor="#993333">
                <div class="ruler">
                    <img id="i2" src="d0.gif" alt="sisend2"/>
                    <span id="i2_txt" class="middle">-</span>
                </div>
            </td>
            <td bgcolor="#993333">
                <div class="ruler">
                    <img id="i3" src="d0.gif" alt="sisend3"/>
                    <span id="i3_txt" class="middle">-</span>
                </div>
            </td>
            <td bgcolor="#993333">
                <div class="ruler">
                    <img id="i4" src="d0.gif" alt="sisend4"/>
                    <span id="i4_txt" class="middle">-</span>
                </div>
            </td>
            <td bgcolor="#993333"><img id="i5" src="d0.gif" alt="sisend5"/></td>
            <td bgcolor="#993333"><img id="i6" src="d0.gif" alt="sisend6"/></td>
            <td bgcolor="#993333"><img id="i7" src="d0.gif" alt="sisend7"/></td>
            <td bgcolor="#993333"><img id="i8" src="d0.gif" alt="sisend8"/></td>
        </tr>
        
        <tr>
            <td align="right" bgcolor="#ddddca">Kontrolleri v&auml;ljund</td>
            <td bgcolor="#DDDAC3" align="center">-</td>
            <td bgcolor="#DDDAC3" align="center">-</td>
            <td bgcolor="#DDDAC3" align="center">-</td>
            <td bgcolor="#DDDAC3" align="center">-</td>
            <td colspan="2" bgcolor="#DDDAC3" align="center">&nbsp;</td>
            <td bgcolor="#DDDAC3" align="center">TP</td>
            <td bgcolor="#DDDAC3" align="center">kyte</td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ddddca">V&auml;ljundi olek</td>
            <td bgcolor="#993333"><img id="o1" src="d0.gif" alt="v&auml;ljund1"/></td>
            <td bgcolor="#993333"><img id="o2" src="d0.gif" alt="v&auml;ljund2"/></td>
            <td bgcolor="#993333"><img id="o3" src="d0.gif" alt="v&auml;ljund3"/></td>
            <td bgcolor="#993333"><img id="o4" src="d0.gif" alt="v&auml;ljund4"/></td>
            <td bgcolor="#993333" colspan="2">&nbsp;</td>
            <td bgcolor="#993333">
                <a href="/rc.cgi?o=1,5" target="empty" onclick="setTimer(this)"><img id="r1" src="d0.gif" alt="relee1"/></a>
            </td>
            <td bgcolor="#993333"><img id="r2" src="d0.gif" alt="relee2"/></td>
        </tr>
            
    </table>
    
    
    <script type="text/javascript">
<![CDATA[
var refreshRate = 2; //kui tihti lehel olevaid vaartusi uuendada

function toggleImage(state, id) {
    var node = $(id);
    if (node != null) {
        if (state == 1) {
            node.src = img1.src;
        } else {
            node.src = img0.src;
        }
    }
}

//hangi muutujad eraldi lehelt kompaktses formaadis - refreshimisel laetakse seega vaid osa tervest lehest.
new Ajax.PeriodicalUpdater($("status"), 'io_diag.html', {
    method: 'get', frequency: refreshRate, decay: 2,
    onSuccess : function(request) {
        var str  = request.responseText;
        var jsonStr = str.substring(str.indexOf('['), str.indexOf(']')+1);        
        //muuda sisend json objektiks (a la maatriks)
        var jsonData = eval(jsonStr);
        if (jsonData == undefined) { 
            alert("Could not obtain variables.");
            return;
        }
        jsonData.each(function(data) {
            //alert('refresh algus');
            //refresh DOM
            toggleImage(data.bin_in1, "i1");
            toggleImage(data.bin_in2, "i2");
            toggleImage(data.bin_in3, "i3");
            toggleImage(data.bin_in4, "i4");
            toggleImage(data.bin_in5, "i5");
            toggleImage(data.bin_in6, "i6");
            toggleImage(data.bin_in7, "i7");
            toggleImage(data.bin_in8, "i8");
            toggleImage(data.bin_out1, "o1");
            toggleImage(data.bin_out2, "o2");
            toggleImage(data.bin_out3, "o3");
            toggleImage(data.bin_out4, "o4");
            toggleImage(data.bin_relay1, "r1");
            toggleImage(data.bin_relay2, "r2");
            $("i1_txt").childNodes[0].data = data.an_in1;
            $("i2_txt").childNodes[0].data = data.an_in2;
            $("i3_txt").childNodes[0].data = data.an_in3;
            $("i4_txt").childNodes[0].data = data.an_in4;
            
            //alert('refresh lopp');
        })
    }
});
]]>
    </script>

    </body>

</html>HTTP/1.0 200
Content-type: application/x-javascript

function combineValues(int a, int b) {
	return 65536 * a + b;
}HTTP/1.0 200
Content-type: text/html

<html>
<head>
<title>BARIX Barionet status page</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<frameset rows="116,*,0" frameborder="NO" border="0" framespacing="0">
  <frame src="uimenu0.html" name="menu" scrolling="NO" noresize marginwidth=5 marginheight=5 frameborder=0 framespacing=0>>
  <frame src="uifstatus.html" name="config" marginwidth=5 marginheight=5 noresize frameborder=0 framespacing=0>>
  <frame src="UntitledFrame-3" name="empty" scrolling="no" noresize></frame>
</frameset><noframes></noframes>
</html>
HTTP/1.0 200
Content-type: text/html

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Controller</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
</head>
    <frameset rows="80,*,0">
        <frame src="uimenu0.html" name="menu" id="menu" scrolling="no" noresize="noresize" marginwidth="5" marginheight="5" frameborder="0"/>
        <frame src="uistatus.xhtml" name="config" id="config" noresize="noresize" marginwidth="5" marginheight="5" frameborder="0"/>
        <frame src="empty.html" name="empty" id="empty" scrolling="no" noresize="noresize"/>
        <noframes>
            <body>No frames support in the browser!</body>
        </noframes>
    </frameset>
</html>
HTTP/1.0 200
Content-type: text/html

<html>
<!-- &L(0,"*",1); -->
    <head>
        <meta http-equiv="Content-Type" content="text/plain; charset=ISO-8859-1" />
    </head>

    <body>
        [ { "id": "&LBAS(1,"%fs",mac$);", 
        "an_in1": "&LIO(1,"%u",501);",
        "an_in2": "&LIO(1,"%u",502);",
        "an_in3": "&LIO(1,"%u",503);",
        "an_in4": "&LIO(1,"%u",504);",
        "bin_in1": "&LIO(1,"%u",201);",
        "bin_in2": "&LIO(1,"%u",202);",
        "bin_in3": "&LIO(1,"%u",203);",
        "bin_in4": "&LIO(1,"%u",204);",
        "bin_in5": "&LIO(1,"%u",205);",
        "bin_in6": "&LIO(1,"%u",206);",
        "bin_in7": "&LIO(1,"%u",207);",
        "bin_in8": "&LIO(1,"%u",208);",
        "bin_out1": "&LIO(1,"%u",101);",
        "bin_out2": "&LIO(1,"%u",102);",
        "bin_out3": "&LIO(1,"%u",103);",
        "bin_out4": "&LIO(1,"%u",104);",
        "bin_relay1": "&LIO(1,"%u",1);",
        "bin_relay2": "&LIO(1,"%u",2);"
		} ]
    </body>
</html>HTTP/1.0 200
Content-type: text/html

<html>
<!-- &L(0,"*",1); -->
    <head>
        <meta http-equiv="Content-Type" content="text/plain; charset=ISO-8859-1" />
    </head>
 
    <body>
        [ { "mac": "&LBAS(1,"%fs",mac$);", 
        "S111": "&LBAS(1,"%u",S11(1));", 
        "S121": "&LBAS(1,"%u",S11(2));", 
        "S131": "&LBAS(1,"%u",S11(3));", 
        "S141": "&LBAS(1,"%u",S11(4));", 
        "S151": "&LBAS(1,"%u",S11(5));", 
        "S116": "&LBAS(1,"%fs",S116$);", 
        "S126": "&LBAS(1,"%fs",S126$);", 
        "S136": "&LBAS(1,"%fs",S136$);", 
        "S146": "&LBAS(1,"%fs",S146$);", 
        "S156": "&LBAS(1,"%fs",S156$);", 
        "S516": "&LBAS(1,"%fs",S516$);", 
        "S526": "&LBAS(1,"%fs",S526$);", 
        "S117": "&LBAS(1,"%fs",S117$);", 
        "S127": "&LBAS(1,"%fs",S127$);", 
        "S137": "&LBAS(1,"%fs",S137$);", 
        "S147": "&LBAS(1,"%fs",S147$);", 
        "S157": "&LBAS(1,"%fs",S157$);", 
        "S311": "&LBAS(1,"%u",S31(1));", 
        "S321": "&LBAS(1,"%u",S31(2));", 
        "S331": "&LBAS(1,"%u",S31(3));", 
        "S341": "&LBAS(1,"%u",S31(4));", 
        "S351": "&LBAS(1,"%u",S31(5));", 
        "S361": "&LBAS(1,"%u",S31(6));", 
        "S371": "&LBAS(1,"%u",S31(7));", 
        "S381": "&LBAS(1,"%u",S31(8));", 
        "S391": "&LBAS(1,"%u",S31(9));", 
        "S419": "&LBAS(1,"%u",S49(1));", 
        "S429": "&LBAS(1,"%u",S49(2));", 
        "S439": "&LBAS(1,"%u",S49(3));", 
        "S449": "&LBAS(1,"%u",S49(4));", 
        "S459": "&LBAS(1,"%u",S49(5));", 
        "S469": "&LBAS(1,"%u",S49(6));", 
        "S479": "&LBAS(1,"%u",S49(7));", 
        "S489": "&LBAS(1,"%u",S49(8));", 
        "S499": "&LBAS(1,"%u",S49(9));", 
        "S51A": "&LBAS(1,"%u",S5A(1));", 
        "S52A": "&LBAS(1,"%u",S5A(2));", 
        "S18": "&LBAS(1,"%fs",S18$);", 
        "S48": "&LBAS(1,"%fs",S48$);",
        "new_in" : "&LIO(1,"%u",320);",
        "proc_in" : "&LIO(1,"%u",321);",
        "RENA" : "&LBAS(1,"%u",RENA);"
		} ]
	</body>
</html>
HTTP/1.0 200
Content-type: text/html

<html>
  <!-- &L(0,"*"); -->
  <head>
    <script language=JavaScript src=util.js></script>

	
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
  </head>
  
  <body bgcolor=#FFFFFF link=#33333cc vlink=#cc33CC alink="#33FFFF33"><br>
    <p><font size="3" face="Arial"><b>APPLICATION SETUP for &LBAS(1,"%fs",mac$); : &LBAS(1,"%fs",apver$);, &LBAS(1,"%fs",ip$);</b></font><br>
    <br>                                                                            
    <img src="col0.gif" width="650" height="1"><br>                                 
    <table>                                                                         
       <form action=setup.cgi method=get><input type="hidden" name="L" value="uiappsetup1.html">
        <tr>                                                                         
            <td colspan="2">
				Sitename <input name="S1000" size="22" maxlength="22" value='&LSetup(1,"%s",1000,S);' />
			</td>
        </tr>
		
		</table>
        
		<hr>
		
		<table>
        
		<tr><td>Zone</td><td>tempsensor no&nbsp;&nbsp;&nbsp;</td><td>actual ddegC&nbsp;&nbsp;</td><td>setpoint ddegC&nbsp;&nbsp;</td><td>warning threshold ddegC&nbsp;&nbsp;</td><td>description</td></tr>
		
		<tr>
			<td nowrap>Zone 1</td>
			<td>
	            <select size="1" name="B738" style="width: 100px">
					<option value=1&LSetup(3,"%s",738,B,1," selected");> 1 </option>
					<option value=2&LSetup(3,"%s",738,B,2," selected");> 2 </option>
					<option value=3&LSetup(3,"%s",738,B,3," selected");> 3 </option>
					<option value=4&LSetup(3,"%s",738,B,4," selected");> 4 </option>
                    <option value=5&LSetup(3,"%s",738,B,5," selected");> 5 </option>
                    <option value=6&LSetup(3,"%s",738,B,6," selected");> 6 </option>
                    <option value=7&LSetup(3,"%s",738,B,7," selected");> virtual 1</option>
                    <option value=8&LSetup(3,"%s",738,B,8," selected");> virtual 2</option>
				</select>
			</td>
			<td>&LBAS(1,"%u",tactual(0));</td>
			<td nowrap align="left">
                <input name="W742" size="3" maxlength="5" value='&LSetup(1,"%u",742,W);' onChange="WordCheck(this)" />
			</td>
            <td nowrap align="left">
                <input name="W754" size="3" maxlength="5" value='&LSetup(1,"%u",754,W);' onChange="WordCheck(this)" />
			</td>
			<td align="right"><input name="S628" size="10" maxlength="9" value='&LSetup(1,"%s",628,S);' /></td>
		</tr>
 
		<tr>
			<td nowrap>Zone 2</td>
			<td>
	            <select size="1" name="B739" style="width: 100px">
					<option value=1&LSetup(3,"%s",739,B,1," selected");> 1 </option>
					<option value=2&LSetup(3,"%s",739,B,2," selected");> 2 </option>
					<option value=3&LSetup(3,"%s",739,B,3," selected");> 3 </option>
					<option value=4&LSetup(3,"%s",739,B,4," selected");> 4 </option>
                    <option value=5&LSetup(3,"%s",739,B,5," selected");> 5 </option>
                    <option value=6&LSetup(3,"%s",739,B,6," selected");> 6 </option>
                    <option value=7&LSetup(3,"%s",739,B,7," selected");> virtual 1</option>
                    <option value=8&LSetup(3,"%s",739,B,8," selected");> virtual 2</option>
				</select>
			</td>
			<td>&LBAS(1,"%u",tactual(1));</td>			
			<td nowrap align="left">
                <input name="W744" size="3" maxlength="5" value='&LSetup(1,"%u",744,W);' onChange="WordCheck(this)"/>
			</td>
            <td nowrap align="left">
                <input name="W756" size="3" maxlength="5" value='&LSetup(1,"%u",756,W);' onChange="WordCheck(this)" />
			</td>
			
			<td align="right"><input name="S638" size="10" maxlength="9" value='&LSetup(1,"%s",638,S);' /></td>
		</tr>
 
        <tr>
			<td nowrap>Zone 3</td>
			<td>
	            <select size="1" name="B740" style="width: 100px">
					<option value=1&LSetup(3,"%s",740,B,1," selected");> 1 </option>
					<option value=2&LSetup(3,"%s",740,B,2," selected");> 2 </option>
					<option value=3&LSetup(3,"%s",740,B,3," selected");> 3 </option>
					<option value=4&LSetup(3,"%s",740,B,4," selected");> 4 </option>
                    <option value=5&LSetup(3,"%s",740,B,5," selected");> 5 </option>
                    <option value=6&LSetup(3,"%s",740,B,6," selected");> 6 </option>
                    <option value=7&LSetup(3,"%s",740,B,7," selected");> virtual 1</option>
                    <option value=8&LSetup(3,"%s",740,B,8," selected");> virtual 2</option>
				</select>
			</td>
            <td>&LBAS(1,"%u",tactual(2));</td>
			<td nowrap align="left">
                <input name="W746" size="3" maxlength="5" value='&LSetup(1,"%u",746,W);' onChange="WordCheck(this)" />
			</td>
            <td nowrap align="left">
                <input name="W758" size="3" maxlength="5" value='&LSetup(1,"%u",758,W);' onChange="WordCheck(this)" />
			</td>
			
			<td align="right"><input name="S648" size="10" maxlength="9" value='&LSetup(1,"%s",648,S);' /></td>
		</tr>
 
        <tr>
			<td nowrap>Zone 4</td>
			<td>
	            <select size="1" name="B741" style="width: 100px">
					<option value=1&LSetup(3,"%s",741,B,1," selected");> 1 </option>
					<option value=2&LSetup(3,"%s",741,B,2," selected");> 2 </option>
					<option value=3&LSetup(3,"%s",741,B,3," selected");> 3 </option>
					<option value=4&LSetup(3,"%s",741,B,4," selected");> 4 </option>
                    <option value=5&LSetup(3,"%s",741,B,5," selected");> 5 </option>
                    <option value=6&LSetup(3,"%s",741,B,6," selected");> 6 </option>
                    <option value=7&LSetup(3,"%s",741,B,7," selected");> virtual 1</option>
                    <option value=8&LSetup(3,"%s",741,B,8," selected");> virtual 2</option>
				</select>
			</td>
                <td>&LBAS(1,"%u",tactual(3));</td>
			<td nowrap align="left">
                <input name="W748" size="3" maxlength="5" value='&LSetup(1,"%u",748,W);' onChange="WordCheck(this)"  />
			</td>
            <td nowrap align="left">
                <input name="W760" size="3" maxlength="5" value='&LSetup(1,"%u",760,W);' onChange="WordCheck(this)" />
			</td>
			
			<td align="right"><input name="S658" size="10" maxlength="9" value='&LSetup(1,"%s",658,S);' /></td>
		</tr>
    </table>
        
    <table>
        <tr bgcolor=#FFFF00>
			<td nowrap>Virtual sensor 1 members</td>
			<td>
	            <select size="1" name="B734" style="width: 50px">
					<option value=1&LSetup(3,"%s",734,B,1," selected");> 1 </option>
					<option value=2&LSetup(3,"%s",734,B,2," selected");> 2 </option>
					<option value=3&LSetup(3,"%s",734,B,3," selected");> 3 </option>
					<option value=4&LSetup(3,"%s",734,B,4," selected");> 4 </option>
                    <option value=5&LSetup(3,"%s",734,B,5," selected");> 5 </option>
                    <option value=6&LSetup(3,"%s",734,B,6," selected");> 6 </option>
				</select>
			</td>
            <td> &LBAS(1,"%u",tvirt1(1)); ddegC &nbsp;</td>
            <td>
	            <select size="1" name="B735" style="width: 50px">
					<option value=1&LSetup(3,"%s",735,B,1," selected");> 1 </option>
					<option value=2&LSetup(3,"%s",735,B,2," selected");> 2 </option>
					<option value=3&LSetup(3,"%s",735,B,3," selected");> 3 </option>
					<option value=4&LSetup(3,"%s",735,B,4," selected");> 4 </option>
                    <option value=5&LSetup(3,"%s",735,B,5," selected");> 5 </option>
                    <option value=6&LSetup(3,"%s",735,B,6," selected");> 6 </option>
				</select>
			</td>
            <td> &LBAS(1,"%u",tvirt1(2)); ddegC</td>
		</tr>
        <tr bgcolor=#FFFF00>
			<td nowrap>Virtual sensor 2 members</td>
			<td>
	            <select size="1" name="B736" style="width: 50px">
					<option value=1&LSetup(3,"%s",736,B,1," selected");> 1 </option>
					<option value=2&LSetup(3,"%s",736,B,2," selected");> 2 </option>
					<option value=3&LSetup(3,"%s",736,B,3," selected");> 3 </option>
					<option value=4&LSetup(3,"%s",736,B,4," selected");> 4 </option>
                    <option value=5&LSetup(3,"%s",736,B,5," selected");> 5 </option>
                    <option value=6&LSetup(3,"%s",736,B,6," selected");> 6 </option>
				</select>
			</td>
            <td> &LBAS(1,"%u",tvirt2(1)); ddegC &nbsp;</td>
            <td>
	            <select size="1" name="B737" style="width: 50px">
					<option value=1&LSetup(3,"%s",737,B,1," selected");> 1 </option>
					<option value=2&LSetup(3,"%s",737,B,2," selected");> 2 </option>
					<option value=3&LSetup(3,"%s",737,B,3," selected");> 3 </option>
					<option value=4&LSetup(3,"%s",737,B,4," selected");> 4 </option>
                    <option value=5&LSetup(3,"%s",737,B,5," selected");> 5 </option>
                    <option value=6&LSetup(3,"%s",737,B,6," selected");> 6 </option>
				</select>
			</td>
            <td> &LBAS(1,"%u",tvirt2(2)); ddegC</td>
		</tr>
    </table>
    
    <table>
        <tr>
			<td>Global temperature hysteresis ddegC</td>
			<td nowrap align="left">
                <input name="B750" size="3" maxlength="3" value='&LSetup(1,"%u",750);'  onChange="ByteCheck(this)" />
			</td>
        </tr><tr>
            <td>Global temperature jump ddegC</td>
			<td nowrap align="left">
                <input name="B751" size="3" maxlength="3" value='&LSetup(1,"%u",751);'  onChange="ByteCheck(this)" />
			</td>
        </tr><tr>
            <td nowrap>Max time for increased temperature minutes</td>
			<td nowrap align="left">
                <input name="B752" size="3" maxlength="3" value='&LSetup(1,"%u",752);'  onChange="ByteCheck(this)" />
			</td>
        </tr><tr>
            <td nowrap>Temperature checking and cooling control period s</td>
			<td nowrap align="left">
                <input name="B753" size="3" maxlength="4" value='&LSetup(1,"%u",753);'  onChange="ByteCheck(this)" />
			</td>
            
        </tr>
        </table>
 
		<hr>

        <table>
		
		<tr>
			<td colspan="3">IO-laiendusi&nbsp;&nbsp;
				<input name="B716" size="2" maxlength="1" value='&LSetup(1,"%u",716);' onChange="ByteCheck(this)"/>
				&nbsp;&nbsp;&nbsp;&nbsp;pullup mask hi lo, kanaleid, v&auml;ljundmask hi lo, kanaleid, kanalid alates
			</td>
		</tr>
    
		<tr>
			<td>IO-1&nbsp;&nbsp; 
				<input name="B717" size="3" maxlength="3" value='&LSetup(1,"%u",717);' onChange="ByteCheck(this)"/> - 
				<input name="B720" size="3" maxlength="3" value='&LSetup(1,"%u",720);' onChange="ByteCheck(this)"/> &nbsp;&nbsp;
			</td>
			<td colspan="2">
				<input name="B723" size="3" maxlength="3" value='&LSetup(1,"%u",723);' onChange="ByteCheck(this)"/>
				<input name="B726" size="3" maxlength="3" value='&LSetup(1,"%u",726);' onChange="ByteCheck(this)"/>&nbsp;&nbsp;&LBAS(1,"%u",icnt(1)); &nbsp;&nbsp;&nbsp;&nbsp;
				<input name="B729" size="3" maxlength="3" value='&LSetup(1,"%u",729);' onChange="ByteCheck(this)"/>
				<input name="B732" size="3" maxlength="3" value='&LSetup(1,"%u",732);' onChange="ByteCheck(this)"/>&nbsp;&nbsp;&LBAS(1,"%u",ocnt(1));&nbsp;&nbsp;
				<input name="S816" size="3" maxlength="4" value='&LSetup(1,"%s",816,S);' />
			</td>
		</tr>
		
		<tr>
			<td>IO-2&nbsp;&nbsp;
				<input name="B718" size="3" maxlength="3" value='&LSetup(1,"%u",718);' onChange="ByteCheck(this)"/> - 
				<input name="B721" size="3" maxlength="3" value='&LSetup(1,"%u",721);' onChange="ByteCheck(this)"/> &nbsp;&nbsp;
			</td>
			<td colspan="2">
				<input name="B724" size="3" maxlength="3" value='&LSetup(1,"%u",724);' onChange="ByteCheck(this)"/>
				<input name="B727" size="3" maxlength="3" value='&LSetup(1,"%u",727);' onChange="ByteCheck(this)"/>&nbsp;&nbsp;&LBAS(1,"%u",icnt(2)); &nbsp;&nbsp;&nbsp;&nbsp;
				<input name="B730" size="3" maxlength="3" value='&LSetup(1,"%u",730);' onChange="ByteCheck(this)"/>
				<input name="B733" size="3" maxlength="3" value='&LSetup(1,"%u",733);' onChange="ByteCheck(this)"/>&nbsp;&nbsp;&LBAS(1,"%u",ocnt(2));&nbsp;&nbsp;
				<input name="S821" size="3" maxlength="4" value='&LSetup(1,"%s",821,S);' />
			</td>
		</tr>
		
		<tr><td colspan="3"><hr></td></tr>
		
		
		
		<tr bgcolor="#eeeeee">
		    <td>UniSCADA monitoring server IP:port</td>    
			<td>
				<input name="B556" size="3" maxlength="3" value='&LSetup(1,"%u",556);' onChange="IPCheck(this)"><b>.</b>
				<input name="B557" size="3" maxlength="3" value='&LSetup(1,"%u",557);' onChange="IPCheck(this)"><b>.</b>
				<input name="B558" size="3" maxlength="3" value='&LSetup(1,"%u",558);' onChange="IPCheck(this)"><b>.</b>
				<input name="B559" size="3" maxlength="3" value='&LSetup(1,"%u",559);' onChange="IPCheck(this)"></td>
			<td>:
				44445
			</td>
		</tr>
		
		<tr bgcolor="#eeeeee">
		    <td>Nagios monitoring passive server IP:port</td>    
			<td nowrap>
				<input name="B560" size="3" maxlength="3" value='&LSetup(1,"%u",560);' onChange="IPCheck(this)"><b>.</b>
				<input name="B561" size="3" maxlength="3" value='&LSetup(1,"%u",561);' onChange="IPCheck(this)"><b>.</b>
				<input name="B562" size="3" maxlength="3" value='&LSetup(1,"%u",562);' onChange="IPCheck(this)"><b>.</b>
				<input name="B563" size="3" maxlength="3" value='&LSetup(1,"%u",563);' onChange="IPCheck(this)"></td>
			<td>:
				<input name="W564" size="6" maxlength="6" value='&LSetup(1,"%u",564,W);' onChange="PortCheck(this)">
			</td>
		</tr>

		<tr>
            <td colspan="2">Monitoring message type(s)</td>
            <td colspan="1">
                <select size="1" name="B584">
                    <option value=0&LSetup(3,"%s",584,B,0," selected");>None </option>
                    <option value=1&LSetup(3,"%s",584,B,1," selected");>UniSCADA</option>
                    <option value=2&LSetup(3,"%s",584,B,2," selected");>Nagios passive</option>
                    <option value=3&LSetup(3,"%s",584,B,3," selected");>Both ways simult.</option>
                </select>
            </td>
        </tr>
        
		<tr>
			<td colspan="2">Max messaging interval for monitoring (s)</td>
			<td align="right">
				<input name="W762" size="6" maxlength="6" value='&LSetup(1,"%u",762,W);' onChange="PortCheck(this)">
			</td>
		</tr>
		
	
		<tr><td colspan="3"><hr></td></tr>
    
        <tr>
            <td colspan="2">Reaction to communication loss</td>
            <td colspan="1">
                <select size="1" name="B555">
                    <option value=0&LSetup(3,"%s",555,B,0," selected");>None </option>
                    <option value=1&LSetup(3,"%s",555,B,1," selected");>GPRS restart</option>
                    <option value=2&LSetup(3,"%s",555,B,2," selected");>PAC restart</option>
                    <option value=3&LSetup(3,"%s",555,B,3," selected");>Restart PAC+GPRS</option>
                </select>
            </td>
        </tr>
        
        <tr>
            <td colspan="2">Communication loss length to activate reaction (3..255 min)</td>
            <td colspan="1">
                <input name="B566" size="3" maxlength="3" value="&LSetup(1,"%u",566);" onChange="ByteCheck(this)" />
            </td>
        </tr>
        
        
        <tr>
             <td colspan="2">Minimal uptime (0..255h) to enable restart</td>
             <td colspan="1">
                <input name="B567" size="3" maxlength="3" value="&LSetup(1,"%u",567);" onChange="ByteCheck(this)" />
             </td>
        </tr>
        
    
    	<tr><td colspan="3"><hr></td></tr>
        
		<tr>
			<td>Min/max for battery voltage (mV)</td>
        	<td align="right"><input name="W580" size="5" maxlength="5" value='&LSetup(1,"%u",580,W);' onChange="mVCheck(this)"/></td>
			<td align="right"><input name="W582" size="5" maxlength="5" value='&LSetup(1,"%u",582,W);' onChange="mVCheck(this)"/></td>
		</tr>
		
		<tr bgcolor="#eeeeee">
			<td>Actual battery voltage <br> and calibration coefficient</td>
			<td align="right" bgcolor="#eeffee">&LIO(1,"%u",819); mV</td>
			<td align="right">
			    <input name="W578" size="4" maxlength="4" value='&LSetup(1,"%u",578,W);' onChange="VcalCheck(this)"/> &nbsp;
			</td>
		</tr>
		
		<tr>
			<td colspan="2">Delay to report power outage (s)</td>
			<td align="right"> <input name="B766" size="5" maxlength="5" value='&LSetup(1,"%u",766);' onChange="ByteCheck(this)"/></TD>
		</tr>
		
		<tr>
			<td colspan="2">Sliding window size to average analogue input readings </td>
			<td align="right" align="center"><input name="B767" size="5" maxlength="3" value='&LSetup(1,"%u",767);' onChange="ByteCheck(this)"/> </td>
		</tr>
		   
		<tr><td colspan="3"><hr></td></tr>
		
		<tr>
		    <td colspan="1">
				<input type="submit" value=" SAVE "/> &nbsp;&nbsp; 
			</td>
			<td colspan=2 align="right">
				<a href="basic.cgi?S" target="empty"><b>Apply new setup</b></a><br/>
			</td>
		</tr>
	  </form>    
	</table>
	<script type="text/javascript">
	
		function openUrl(id, target) {
			var url = "BAS.cgi?TEHA$=" + id + "&TXT$" + '=' + document.getElementById(id).value;
			document.getElementById(id + 'href').href = url;
			window.open(url, target);
			return false;
		}
	</script>
  </body>
</html>
 HTTP/1.0 200
Content-type: text/html

<html>
<body bgcolor="#CCCCCC">
<p><font face="Arial, Helvetica, sans-serif"><b>Help</b><br></font>  <font size="2" face="Arial, Helvetica, sans-serif"><br><br>
<font size="3"><b>Zone Monitor</b></font><br>
This application monitors temperatures in four zones and controls cooling devices based on the setup and actual values comparision. The application can be further developed to add new properties if needed.
<br><br>

<h4>Zone and sensor definitions</h4>
The zones must be configured using the threshold and hysteresis values and by selecting the temperature sensors on the application setup page on the left. All temperatures are entered in units as tenth of Centigrade degree. Once the actual temperature in a zone gets higher than the threshold value, cooling in this zone will be switched on. There must be some hysteresis between switch on and off, to avoid frequent switching. Once the actual zone temperature reaches Warning threshold, the monitored "service" status turns from, normal to warning, thus enabling alarm notification generation by the monitoring system.
<br>

<br>
<h4>Thermosensors</h4>
The application supports 6 Dallas DS18B20 temperature sensors on the 1wire bus (J5). The sensors are listed in an order based on their ID. If needed, the sensor ID and measured values can be checked on Settings, TEMP tab (refresh the page to see the changes!).
<br>
Zones 2 and 3 are in the same room (Optics), where 4 thermosensors are installed in total. These sensors can be paired to form virtual sensors to supply higher temperature from the pair member readings as the actual zone temperature.
<br>



<h4>Monitoring servers</h4>
Selected input and output values of the controller application can be sent to the monitoring system in UDP format. The monitoring system type is selectable. 
In some cases remote setup and control commands can be received from the monitoring system. 
<br>




<h4>Other interfaces</h4>
The controller can be used for monitoring some serial ports (RS232 and RS485) as well, if needed. 
For example, the security or fire detection system usually outputs a general alarm (1 bit only), 
without any further information which sensor has triggered the alarm. But these systems may have a serial port for continuous event logging
That information can be useful for parsing and forwarding. The according string parser is programmed into the application software however.  

</body>
</html>
HTTP/1.0 200
Content-type: text/html

<HTML>
<BODY BGCOLOR=#8F2635 link=#8F2635 vlink=#8F2635 leftmargin="0" topmargin="0">
<table border="0" cellpadding="0" cellspacing="5">
  <tr>
    <td valign="bottom">
		<img src="uiglogo.gif" width="320" height="74" border="0" usemap="#navBARIX"><img src="uigstat.gif" width="176" height="74">
		<map name="navBARIX">
			<area shape="RECT" coords="1,2,154,73" href="http://www.barix.com/" target="_blank" alt="VISIT THE BARIX WEBSITE">
			<area shape="RECT" coords="173,2,319,51" href="http://www.barix.com/en/support/support.php" target="_blank" alt="VISIT THE BARIX SUPPORT WEBSITE">
	    </map>
	</td>
    <td valign="bottom">&nbsp; </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td width="1800" colspan="5" valign="top">
		<img src="uigmconf.gif" width="580" height="20" border="0" usemap="#navMENU">
		<map name="navMENU">
          <area shape="RECT" coords="0,0,76,20" href="uifnetwork.html" target="config" alt="DEVICE SETTINGS">
<!--          <area shape="RECT" coords="85,0,132,20" alt="SAVE SETTINGS not yet available">  href="setup.cgi?S" target="config" alt="SAVE SETTINGS"> -->
          <area shape="RECT" coords="85,0,163,20" href="uifdefaults.html" target="config" alt="FACTORY DEFAULTS">
          <area shape="RECT" coords="172,0,239,20" href="uifreboot.html" target="config" alt="REBOOT DEVICE">
          <area shape="RECT" coords="277,0,340,20" href="uifupdate.html" target="config" alt="DEVICE UPDATE">
          <area shape="RECT" coords="378,0,518,19" href="uifappsetup1.html" target="config" alt="APPLICATION SETUP">
          <area shape="RECT" coords="529,0,580,20" href="index.html" target="_parent" alt="BACK TO HOME">
      </map>
      </p>
    </td>
  </tr>
</table>
</BODY>
</HTML>HTTP/1.0 200
Content-type: text/html

<HTML>
<BODY BGCOLOR=#8F2635 link=#8F2635 vlink=#8F2635 leftmargin="0" topmargin="0">
<table border="0" cellpadding="0" cellspacing="5">
  <tr>
    <td valign="bottom">
		<img src="uiglogo.gif" width="320" height="74" border="0" usemap="#navBARIX"><img src="uigconf.gif" width="80" height="74">
		<map name="navBARIX">
			<area shape="RECT" coords="1,2,154,73" href="uiglogo.gif" target="_blank" alt="VISIT THE BARIX WEBSITE">
			<area shape="RECT" coords="173,2,319,51" href="http://www.barix.com" target="_blank" alt="VISIT THE BARIX SUPPORT WEBSITE">
	    </map>
	</td>
  </tr>
  <tr>
    <td width="1800" height="24" valign="top">
        <img src="uigmstat.gif" width="113" height="20" border="0" usemap="#navMENU">
		<map name="navMENU">
          <area shape="RECT" coords="0,0,110,20" href="uiconfig.html" target="_parent" alt="CONFIGURATION">
          <area shape="RECT" coords="120,0,230,20" href="setup.cgi?L=uimenu0.html&D" target="_parent" alt="LOGOUT">
      </map>
      </p>
    </td>
  </tr>
</table>
</BODY>
</HTML><?xml version="1.0" encoding="ISO-8859-1"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xmlns:svg="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
    <head>
        <title>Kontrolleri info</title>
		<script type="text/javascript" src="prototype-1.4.0.js"></script>
        <script type="text/javascript" src="util.js"></script>
        <link rel="stylesheet" type="text/css" href="default.css"></link>
        <meta http-equiv="Content-type" content="text/html;charset=ISO-8859-1"></meta>
        <script type="text/javascript">
            //preload images that are reusable by DOM for quicker rendering
            if (document.images) 
            {
               img0 = new Image();
               img1 = new Image();
               img0.src = "d0.gif";
               img1.src = "d1.gif";
            }
        </script>
    </head>
		
    <body> 
	<div id="status" style="position:absolute; left:10px; top:450px;visibility:visible;background-color: #99FF66; layer-background-color: #99FF66;">Muutujad</div>
   
   <table border="1" cellpadding="3">
        <tr><td colspan="9">&nbsp;</td></tr>
		<tr>
            <td align="right" bgcolor="#ddddca">Kontrolleri sisend</td>
            <td bgcolor="#DDDAC3" align="center">-</td>
            <td bgcolor="#DDDAC3" align="center">-</td>
            <td bgcolor="#DDDAC3" align="center">Aku</td>
            <td bgcolor="#DDDAC3" align="center">ValgusTase</td>
            <td bgcolor="#DDDAC3" align="center">Liikumine2</td>
            <td bgcolor="#DDDAC3" align="center">Liikumine1</td>
            <td bgcolor="#DDDAC3" align="center">Uks</td>
            <td bgcolor="#DDDAC3" align="center">Toide</td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ddddca">Sisendi olek</td>
            <td bgcolor="#993333" align="center">
                <div class="ruler">
                    <img id="i1" src="d0.gif" alt="sisend1"/>
                    <span id="i1_txt" class="middle">-</span>
                </div>
            </td>
            <td bgcolor="#993333">
                <div class="ruler">
                    <img id="i2" src="d0.gif" alt="sisend2"/>
                    <span id="i2_txt" class="middle">-</span>
                    </div>
            </td>
            <td bgcolor="#993333">
                <div class="ruler">
                    <img id="i3" src="d0.gif" alt="sisend3"/>
                    <span id="i3_txt" class="middle">-</span>
                </div>
            </td>
            <td bgcolor="#993333">
                <div class="ruler">
                    <img id="i4" src="d0.gif" alt="sisend4"/>
                    <span id="i4_txt" class="middle">-</span>
                </div>
            </td>
            <td bgcolor="#993333"><img id="i5" src="d0.gif" alt="sisend5"/></td>
            <td bgcolor="#993333"><img id="i6" src="d0.gif" alt="sisend6"/></td>
            <td bgcolor="#993333"><img id="i7" src="d0.gif" alt="sisend7"/></td>
            <td bgcolor="#993333"><img id="i8" src="d0.gif" alt="sisend8"/></td>
        </tr>
		
		<tr><td colspan="9">&nbsp;</td></tr>
        
		<tr>
            <td align="right" bgcolor="#ddddca">Kontrolleri v&auml;ljund</td>
            <td bgcolor="#DDDAC3" align="center"></td>
            <td bgcolor="#DDDAC3" align="center">-</td>
            <td bgcolor="#DDDAC3" align="center"></td>
            <td bgcolor="#DDDAC3" align="center">GSMoff</td>
            <td bgcolor="#DDDAC3" align="center"></td>
			<td bgcolor="#DDDAC3" align="center"></td>
            <td bgcolor="#DDDAC3" align="center"></td>
            <td bgcolor="#DDDAC3" align="center"></td>
        </tr>
        <tr>
            <td align="right" bgcolor="#ddddca">V&auml;ljundi olek</td>
            <td bgcolor="#993333"><img id="o1" src="d0.gif" alt="v&auml;ljund1"/></td>
            <td bgcolor="#993333"><img id="o2" src="d0.gif" alt="v&auml;ljund2"/></td>
            <td bgcolor="#993333"><img id="o3" src="d0.gif" alt="v&auml;ljund3"/></td>
            <td bgcolor="#993333"><img id="o4" src="d0.gif" alt="v&auml;ljund4"/></td>
            <td bgcolor="#993333"><img id="lion" src="d0.gif" alt="light_on"/></td>
            <td bgcolor="#993333"><img id="armed" src="d0.gif" alt="armed"/></td>
            <td bgcolor="#993333">
                <a href="/rc.cgi?o=1,5" target="empty" onclick="setTimer(this)"><img id="r1" src="d0.gif" alt="relee1"/></a>
            </td>
            <td bgcolor="#993333"><img id="r2" src="d0.gif" alt="relee2"/></td>
        </tr>
        
    </table>
    

    
    <script type="text/javascript">
<![CDATA[
var refreshRate = 2; //kui tihti lehel olevaid vaartusi uuendada
//alert('tere1');
function toggleImage(state, id) {
    var node = $(id);
    if (node != null) {
        if (state == 1) {
            node.src = img1.src;
        } else {
            node.src = img0.src;
        }
    }
}

//hangi muutujad eraldi lehelt kompaktses formaadis - refreshimisel laetakse seega vaid osa tervest lehest.
new Ajax.PeriodicalUpdater($("status"), 'io_diag.html', {
    method: 'get', frequency: refreshRate, decay: 2,
    onSuccess : function(request) {
		//alert('tere2');
        var str  = request.responseText;
        var jsonStr = str.substring(str.indexOf('['), str.indexOf(']')+1);        
        //muuda sisend json objektiks (a la maatriks)
		//alert('json algus');
        var jsonData = eval(jsonStr);
        if (jsonData == undefined) { 
            alert("Could not obtain variables.");
            return;
        }
        jsonData.each(function(data) {
            //alert('refresh algus');
            //refresh DOM
            toggleImage(data.bin_in1, "i1");
            toggleImage(data.bin_in2, "i2");
            toggleImage(data.bin_in3, "i3");
            toggleImage(data.bin_in4, "i4");
            toggleImage(data.bin_in5, "i5");
            toggleImage(data.bin_in6, "i6");
            toggleImage(data.bin_in7, "i7");
            toggleImage(data.bin_in8, "i8");
            toggleImage(data.bin_out1, "o1");
            toggleImage(data.bin_out2, "o2");
            toggleImage(data.bin_out3, "o3");
            toggleImage(data.bin_out4, "o4");
            toggleImage(data.bin_relay1, "r1");
            toggleImage(data.bin_relay2, "r2");
			toggleImage(data.light_on, "lion");
			toggleImage(data.armed, "armed");
            $("i1_txt").childNodes[0].data = data.an_in1;
            $("i2_txt").childNodes[0].data = data.an_in2;
            $("i3_txt").childNodes[0].data = data.an_in3;
            $("i4_txt").childNodes[0].data = data.an_in4;
            
            //alert('refresh lopp');
        })
    }
});
]]>
    </script>

    </body>

</html>