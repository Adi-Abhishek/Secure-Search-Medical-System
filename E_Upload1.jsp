<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="java.util.*,java.io.File,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ include file="connect.jsp" %>
<%@page import= "java.io.File"%>

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
.style13 {font-size: 12px;
	color: #504b4b;
}
.style29 {color: #FFFF00}
.style30 {color: #FFFF00; font-weight: bold; }
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
            <li class="m2"><a href="E_Main.jsp">data owner </a></li>
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
                  <h3>Enrypted Patient Details !!! </h3>
                  <p align="justify">&nbsp;</p>
                  <form action="E_Upload2.jsp" method="post">
                    <p><%
      	try {
			String filename=request.getParameter("t42");
      		String file=request.getParameter("tt");
      		String cont=request.getParameter("text");
			
			String pname=request.getParameter("pname");
			String page1=request.getParameter("page");
			String pcity=request.getParameter("pcity");
			String padd=request.getParameter("paddress");
			String pmobno=request.getParameter("pmobno");
			String pemail=request.getParameter("pemail");
			String pdt=request.getParameter("pdtype");
			String pdn=request.getParameter("pdname");
			String pds=request.getParameter("pdsym");
			
			
			
			application.setAttribute("file1",file);


				String keys = "ef50a0ef2c3e3a5f";
      			byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE, key);
      			String encryptedValue = new String(Base64.encode(cont.getBytes()));
				
				String encryptedValue1 = new String(Base64.encode(pname.getBytes()));
				String encryptedValue2 = new String(Base64.encode(page1.getBytes()));
				String encryptedValue3 = new String(Base64.encode(pcity.getBytes()));
				String encryptedValue4 = new String(Base64.encode(padd.getBytes()));
				String encryptedValue5 = new String(Base64.encode(pmobno.getBytes()));
				String encryptedValue6 = new String(Base64.encode(pemail.getBytes()));
				String encryptedValue7 = new String(Base64.encode(pdt.getBytes()));
				String encryptedValue8 = new String(Base64.encode(pdn.getBytes()));
				String encryptedValue9 = new String(Base64.encode(pds.getBytes()));
				
				
				
				

			String namefile=request.getRealPath("file");
      		PrintStream p = new PrintStream(new FileOutputStream(namefile+"/"));
			p.print(new String(cont));
      		String h1="";
			MessageDigest md = MessageDigest.getInstance("SHA1");
			FileInputStream fis11 = new FileInputStream(namefile+"/");
			DigestInputStream dis1 = new DigestInputStream(fis11, md);
			BufferedInputStream bis1 = new BufferedInputStream(dis1);
			//Read the bis so SHA1 is auto calculated at dis
			while (true) {
				int b1 = bis1.read();
				if (b1 == -1)
					break;
			}
			BigInteger bi1 = new BigInteger(md.digest());
			String spl1 = bi1.toString();
			h1 = bi1.toString(16);
%>
                    </p>
                    <p>&nbsp;</p>
                    <table width="545" border="0" align="center" style="border-collapse:collapse" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="210" bgcolor="#FF0000"><span class="odd style13 style29"><strong>Report Name : </strong> </span></td>
                        <td width="319"><input name="t42" type="text" id="t42" size="49" value="<%= file %>" readonly="readonly" /></td>
                      </tr>
                      
                      <tr>
                        <td bgcolor="#FF0000"><span class="style29">Report Chiper Text </span></td>
                        <td><textarea name="text2" id="textarea" cols="50" onchange=" AlertFilesize()" rows="15" readonly="readonly"><%= encryptedValue %></textarea></td>
                      </tr>
                      <tr>
                        <td bgcolor="#FF0000"><span class="odd style13 style29"><strong>Trapdoor : </strong></span></td>
                        <td><input name="t4" type="text" id="t4" size="49" value="<%=h1 %>" readonly="readonly" /></td>
                      </tr>
					  <tr>
                        <td bgcolor="#FF0000"><span class="odd style13 style29"><strong>Patient Name: </strong></span></td>
                        <td><input name="pname" type="text" id="t4" size="49" value="<%=encryptedValue1 %>" readonly="readonly" /></td>
                      </tr>
					  <tr>
                        <td bgcolor="#FF0000"><span class="odd style13 style29"><strong>Patient Age  : </strong></span></td>
                        <td><input name="page" type="text" id="t4" size="49" value="<%= encryptedValue2 %>" readonly="readonly" /></td>
                      </tr>
					  <tr>
                        <td bgcolor="#FF0000"><span class="odd style13 style29"><strong>Patient City  : </strong></span></td>
                        <td><input name="pcity" type="text" id="t4" size="49" value="<%= encryptedValue3 %>" readonly="readonly" /></td>
                      </tr>
					  <tr>
                        <td bgcolor="#FF0000"><span class="odd style13 style29"><strong>Patient Address  : </strong></span></td>
                        <td><input name="paddress" type="text" id="t4" size="49" value="<%= encryptedValue4 %>" readonly="readonly" /></td>
                      </tr>
					  <tr>
                        <td bgcolor="#FF0000"><span class="odd style13 style29"><strong>Patient Mobile No  : </strong></span></td>
                        <td><input name="pmobno" type="text" id="t4" size="49" value="<%= encryptedValue5 %>" readonly="readonly" /></td>
                      </tr>
					  <tr>
                        <td bgcolor="#FF0000"><span class="odd style13 style29"><strong>Patient Email: </strong></span></td>
                        <td><input name="pemail" type="text" id="t4" size="49" value="<%= encryptedValue6 %>" readonly="readonly" /></td>
                      </tr>
					  <tr>
                        <td bgcolor="#FF0000"><span class="odd style13 style29"><strong>Disease  Type: </strong></span></td>
                        <td><input name="pdt" type="text" id="t4" size="49" value="<%= encryptedValue7%>" readonly="readonly" /></td>
                      </tr>
					  <tr>
                        <td bgcolor="#FF0000"><span class="odd style13 style29"><strong>Disease Name : </strong></span></td>
                        <td><input name="pdn" type="text" id="t4" size="49" value="<%=encryptedValue8 %>" readonly="readonly" /></td>
                      </tr>
                      <tr>
                        <td bgcolor="#FF0000"><div align="left" class="style30">Disease Symtoms  </div></td>
                        <td><input name="pds" type="text" id="t4" size="49" value="<%= encryptedValue9 %>" readonly="readonly" /></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td><input type="submit" name="Submit2" value="Upload" /></td>
                      </tr>
                    </table>
                    <p>
                      <%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
                    </p>
                  </form>
                  </div>
                <h4>&nbsp;</h4>
              </div>
            </div>
            <div class="col-2">
			<ul>
				<li><a href="E_Main.jsp">Home</a></li>
				<li><a href="E_Login.jsp">Logout</a></li>
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
