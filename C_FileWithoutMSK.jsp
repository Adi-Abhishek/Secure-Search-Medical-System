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
<title>Server </title>
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
.style25 {font-size: 14px;
	color: #0d6887;
	font-weight: bold;
}
.style26 {
	color: #FFFF00;
	font-weight: bold;
}
.style27 {font-size: 14px; color: #FFFF00; font-weight: bold; }
.style29 {color: #FF0000; font-weight: bold; }
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
            <li class="m5"><a href="C_Main.jsp" class="active">Server</a></li>
            <li class="m4"><a href="C_Login.jsp">Logout</a></li>
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
                  <h3>Files Without Master Secret Key(MSK) </h3>
                  <p>&nbsp;</p>
                  <table width="612" border="2" style="border-collapse:collapse" cellpadding="0" cellspacing="0"  align="center">
                    <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
try 
	{		
				%>
                    <tr>
                      <td width="18" height="30" bgcolor="#FF0000"><div align="center" class="style25 style26"> ID </div></td>
                      <td width="46" bgcolor="#FF0000"><div align="center" class="style27">Report Name </div></td>
                      <td width="41" bgcolor="#FF0000"><div align="center" class="style27">Date &amp; Time </div></td>
                      <td width="79" bgcolor="#FF0000"><div align="center" class="style27">Authorities</div></td>
					  
					   <td width="79" bgcolor="#FF0000"><div align="center" class="style27">Authoritie Name </div></td>
					    <td width="62" bgcolor="#FF0000"><div align="center" class="style27">Disease Type</div></td>
						 <td width="85" bgcolor="#FF0000"><div align="center" class="style27">Disease Name</div></td>
					  <td width="79" bgcolor="#FF0000"><div align="center" class="style27">Disease Symtoms</div></td>
				      <td width="101" bgcolor="#FF0000"><div align="center" class="style27">Authority Type</div></td>
                    </tr>
                    <%
				
				String query1="Select * from cloudserver where sk='No'"; 
				Statement st=connection.createStatement();
				ResultSet rs1=st.executeQuery(query1);
				while ( rs1.next()==true )
				{
				
					i=rs1.getInt(1);
					s1=rs1.getString(2);
					s2=rs1.getString(3);
					s3=rs1.getString(7);
					s4=rs1.getString(8);
					s5=rs1.getString(9); // pname
					s6=rs1.getString(15); // Disease Type
					s7=rs1.getString(16); // Disease Name
					s8=rs1.getString(17); // Disease symtoms
					s9=rs1.getString(18); // atype
					
					
					
					
					String keys = "ef50a0ef2c3e3a5f";
					byte[] keyValue = keys.getBytes();
					Key key = new SecretKeySpec(keyValue, "AES");
					Cipher c = Cipher.getInstance("AES");
					c.init(Cipher.DECRYPT_MODE, key);
					String dt1 = new String(Base64.decode(s3.getBytes()));

					String ss1= new String(Base64.decode(s5.getBytes()));
					String ss2 = new String(Base64.decode(s6.getBytes()));					
					String ss3 = new String(Base64.decode(s7.getBytes()));
					String ss4 = new String(Base64.decode(s8.getBytes()));
					String ss5 = new String(Base64.decode(s9.getBytes()));
					
					
					
					%>
                    <tr>
                      <td height="28" bgcolor="#F0F0F0"><div align="center" class="style29"><%=i%></div></td>
                      <td bgcolor="#F0F0F0"><div align="center" class="style29"><a href="C_FileDetails.jsp?usid=<%=i%>"><%=s1%></a></div></td>
                      <td bgcolor="#F0F0F0"><div align="center" class="style29"><%=dt1%></div></td>
                      <td bgcolor="#F0F0F0"><div align="center" class="style29"><%=s4%></div></td>
					  <td bgcolor="#F0F0F0"><div align="center" class="style29"><%=ss1%></div></td>
					  <td bgcolor="#F0F0F0"><div align="center" class="style29"><%=ss2%></div></td>
					  <td bgcolor="#F0F0F0"><div align="center" class="style29"><%=ss3%></div></td>
					  <td bgcolor="#F0F0F0"><div align="center" class="style29"><%=ss4%></div></td>
					  <td bgcolor="#F0F0F0"><div align="center" class="style29"><%=s9%></div></td>
					  
					  
                    </tr>
                    <%
			
				}	
				connection.close();
				}
				catch(Exception e)
				{
				out.println(e.getMessage());
				}
%>
                  </table>
                </div>
                </div>
            </div>
            <div class="col-2">
			<ul>
				<li><a href="C_Main.jsp">Home</a></li>
				<li><a href="C_Login.jsp">Logout</a></li>
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
