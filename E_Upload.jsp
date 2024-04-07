<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Owner</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/cufon-replace.js" type="text/javascript"></script>
<script src="js/Myriad_Pro_300.font.js" type="text/javascript"></script>
<!--[if lt IE 7]>
<script type="text/javascript" src="js/ie_png.js"></script>
<script type="text/javascript">ie_png.fix('.png, #header .row-2 ul li a, #content, .list li');</script>
<![endif]-->
<style type="text/css">
<!--
.style1 {
	font-size: 37px;
	color: #CCCCCC;
}
.style14 {color: #0e4369; font-size: 16px; font-weight: bold; }
.style16 {font-size: 12px}
.style28 {color: #5f5f5f}
.style29 {color: #FFFF00}
.style31 {color: #FFFF00; font-weight: bold; }
-->
</style>
<script language="javascript" type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("fileupload").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}
</script>
</head>
<body id="page1">
<div class="tail-top">
  <div class="tail-bottom">
    <div class="body-bg">
      <!-- HEADER -->
      <div id="header">
        <div class="extra"></div>
        <div class="row-1">
          <div class="fleft">
            <h2 class="style1">Enabling Authorized Encrypted Search for Multi Authority Medical Databases</h2>
          </div>
          <div class="fright"></div>
        </div>
        <div class="row-2">
          <ul>
            <li class="m2"><a href="E_Main.jsp">Encryptor</a></li>
            <li class="m3"><a href="E_Login.jsp">logout</a></li>
          </ul>
        </div>
        <div class="row-3">
          <form action="#" method="post" id="search-form">
            <fieldset>
              <div><a href="#"></a></div>
            </fieldset>
          </form>
        </div>
      </div>
      <!-- CONTENT -->
      <div id="content">
        <div class="inner_copy">More <a href="#">Website Templates</a> @ Templates.com!</div>
        <div class="tail-right">
          <div class="wrapper">
            <div class="col-1">
              <div class="indent">
                <div class="indent1">
                  <h3>Add Patient Details !!! </h3>
                  <p align="justify">&nbsp;</p>
                  <form id="form1" method="post" action="E_Upload1.jsp">
                    <table width="553" border="0" align="center"  style="border-collapse:collapse" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="286" bgcolor="#FF0000"><span class="odd style14 style28"><span class="odd style11 style16 style29"> Select Report :</span></span></td>
                        <td width="356"><input required="required" type="file" name="t42" id="fileupload" onchange="loadFileAsText();"></td>
                      </tr>
                      <tr>
                        <td bgcolor="#FF0000" class="odd style14 style28"><span class="odd style11 style16 style29">Report Name :</span> </td>
                        <td><input required="required"  name="tt" type="text" id="t42" size="49"/></td>
                      </tr>
                      <tr>
                        <td bgcolor="#FF0000"><span class="style31">Report Content </span></td>
                        <td><textarea name="text" id="textarea" cols="50" rows="15"></textarea></td>
                      </tr>
                      
                      <tr>
                        <td bgcolor="#FF0000"><div align="left" class="style31">Patient Name </div></td>
                        <td><input type="text" name="pname" /></td>
                      </tr>
                      <tr>
                        <td bgcolor="#FF0000"><div align="left" class="style31">Patient Age </div></td>
                        <td><input type="text" name="page" /></td>
                      </tr>
                      <tr>
                        <td bgcolor="#FF0000"><div align="left" class="style31">Patient City </div></td>
                        <td><input type="text" name="pcity" /></td>
                      </tr>
                      <tr>
                        <td bgcolor="#FF0000"><div align="left" class="style31">Patient Address </div></td>
                        <td><input type="text" name="paddress" /></td>
                      </tr>
                      <tr>
                        <td bgcolor="#FF0000"><div align="left" class="style31">Patient Mobile No </div></td>
                        <td><input type="text" name="pmobno" /></td>
                      </tr>
                      <tr>
                        <td bgcolor="#FF0000"><div align="left" class="style31">Patient EMail Id </div></td>
                        <td><input type="text" name="pemail" /></td>
                      </tr>
                      <tr>
                        <td bgcolor="#FF0000"><div align="left" class="style31">Disease Type </div></td>
                        <td><input type="text" name="pdtype" /></td>
                      </tr>
                      <tr>
                        <td bgcolor="#FF0000"><span class="style31">Disease Name </span></td>
                        <td><input type="text" name="pdname" /></td>
                      </tr>
                      <tr>
                        <td bgcolor="#FF0000"><span class="style31">Disease Symtoms </span></td>
                        <td><input type="text" name="pdsym" /></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td><input type="submit" name="Submit" value="Encrypt" /></td>
                      </tr>
                    </table>
                  </form>
                  <p align="justify"></p>
                </div>
                <h4>&nbsp;</h4>
              </div>
            </div>
            <div class="col-2">
			<ul>
				<li><a href="E_Main.jsp">Home</a></li>
				<li><a href="E_Login.jsp">Logout</a></li>
				<li></li>
				</ul>
            </div>
          </div>
        </div>
      </div>
      <!-- FOOTER -->
      <div id="footer">
        <div class="indent">
          <div class="fleft"></div>
          <div class="fright"></div>
        </div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript"> Cufon.now(); </script>
<div align=center></div>
</body>
</html>
