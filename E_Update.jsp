<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

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
.style24 {
	font-size: 14px;
	color: #FFFF00;
	font-weight: bold;
}
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
                  <h3>Update Files</h3>
                  <p align="justify">&nbsp;</p>
                  <table width="537"border="2"  style="border-collapse:collapse"  cellpadding="0" cellspacing="0" align="center">
                    <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
String dname=(String)application.getAttribute("ename");
	
try 
	{String atype=(String)application.getAttribute("atype");
	
			%>
                    <tr>
                      <td width="36" height="30" bgcolor="#FF0000"><div align="center" class="style24"> ID </div></td>
                      <td width="106" bgcolor="#FF0000"><div align="center" class="style24">Report Name </div></td>
                      <td width="123" bgcolor="#FF0000"><div align="center" class="style24">Authorities</div></td>
                      <td width="161" bgcolor="#FF0000"><div align="center" class="style24">Date &amp; Time </div></td>
					  <td width="161" bgcolor="#FF0000"><div align="center" class="style24">Patient Name </div></td>
					  
                      <td width="97" bgcolor="#FF0000"><div align="center" class="style24">Update</div></td>
                      <%
	
				String query="Select *from cloudserver where downer='"+dname+"' and atype='"+atype+"'";  
				Statement st=connection.createStatement();
				ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
				{
						i=rs.getInt(1);
						s2=rs.getString(2);
						s3=rs.getString(7);
						s4=rs.getString(8);
						s5=rs.getString(9);
						
						String keys = "ef50a0ef2c3e3a5f";
						byte[] keyValue = keys.getBytes();
						Key key = new SecretKeySpec(keyValue, "AES");
						Cipher c = Cipher.getInstance("AES");
						c.init(Cipher.DECRYPT_MODE, key);
						String dt1 = new String(Base64.decode(s3.getBytes()));
						String pname = new String(Base64.decode(s5.getBytes()));
						
						%>
                    </tr>
                    <tr>
                      <td height="28"><div align="center"><%=i%></div></td>
                      <td><div align="center"><%=s2%></div></td>
                      <td><div align="center"><%=s4%></div></td>
                      <td><div align="center"><%=dt1%></div></td>
					  <td><div align="center"><%=pname%></div></td>
                      <td><div align="center"><a href="E_Update1.jsp?usid=<%=i%>&amp;fname=<%=s2%>"><%=s2%></a></div></td>
                      <%					
						
				}
					
        connection.close();
	  }
	 
	  catch(Exception e)
	  {
		out.println(e.getMessage());
	  }
%>
                    </tr>
                  </table>
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
