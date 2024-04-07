<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@page import= "java.io.*,java.io.File,java.io.BufferedWriter,java.io.FileWriter,java.io.IOException"%>

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
.style10 {color: #504b4b}
.style14 {color: #0e4369; font-size: 16px; font-weight: bold; }
.style16 {font-size: 12px}
.style28 {color: #5f5f5f}
.style29 {color: #FF0000}
.style31 {color: #FF0000; font-weight: bold; }
-->
</style>
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
            <li class="m2"><a href="E_Main.jsp">Authorities </a></li>
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
                  <h3>Update Patient Report !!! </h3>
                  <%
		try {
		int uid = Integer.parseInt(request.getParameter("usid"));
      			String keys = "ef50a0ef2c3e3a5f";
				String filen=request.getParameter("fname");
			  %>
                  <form action="E_Update2.jsp?usid=<%=uid%>" method="post" id="leavereply">
                    <span class="style10">
                    <label for="name"><br />
                    <%
			String quey1="select * from cloudserver  where id='"+uid+"' "; 
		Statement st1=connection.createStatement();
		ResultSet rs4=st1.executeQuery(quey1);
	
		while ( rs4.next())
		{	
			String ct=rs4.getString(3);
			
				byte[] keyValue1 = keys.getBytes();
				Key key1 = new SecretKeySpec(keyValue1,"AES");
				Cipher c1 = Cipher.getInstance("AES");
				c1.init(Cipher.DECRYPT_MODE, key1);
				String decryptedValue = new String(Base64.decode(ct.getBytes()));

			%>
                    <br />
                    </label>
                    </span>
                    <table width="553" border="2"  style="border-collapse:collapse" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="286"><span class="odd style14 style28"><span class="odd style11 style16 style29"> Select Report :</span></span></td>
                        <td width="356"><input type="file" name="t42" id="file"  onchange="loadFileAsText()" /></td>
                      </tr>
                      <tr>
                        <td><span class="odd style14 style28"><span class="odd style11 style16 style29"> Report Name:</span></span></td>
                        <td><label>
                          <input type="text" name="fname" value="<%=filen%>" />
                        </label></td>
                      </tr>
                      <tr>
                        <td><span class="style31">Report Contents </span></td>
                        <td><textarea name="text" id="textarea" cols="50" rows="15"><%=decryptedValue%></textarea></td>
                      </tr>
                      <tr>
                        <td><div align="right"></div></td>
                        <td><input type="submit" name="Submit" value="Update" /></td>
                      </tr>
                    </table>
                    <%}%>
                  </form>
                  <%
	}
	catch(Exception e)
	{
	out.println(e.getMessage());
	}
			  
			  %>
<p align="justify">&nbsp;</p>
                  <p align="right"><a href="E_Main.jsp">Back</a></p>
                </div>
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
      <div id="footer"></div>
    </div>
  </div>
</div>
<script type="text/javascript"> Cufon.now(); </script>
<div align=center></div>
</body>
</html>
