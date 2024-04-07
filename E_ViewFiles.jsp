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
<title>Encryptor Main</title>
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
.style21 {
	font-size: 14px;
	font-weight: bold;
}
.style24 {color: #FFFF00}
.style25 {
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
            <li class="m2"><a href="E_Main.jsp">Authorities</a></li>
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
                  <h3>View Report Details</h3>
                  <p>&nbsp;</p>
                  <table width="730" border="1.5" style="border-collapse:collapse" cellpadding="0" cellspacing="0"  align="center">
                    <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13,s66;
	int i=0,j=0,k=0;
	
try 
	{		
		String dname=(String)application.getAttribute("ename");
		String atype=(String)application.getAttribute("atype");
				%>
                    <tr>
                      <td width="18" height="30" bgcolor="#FF0000"><div align="center" class="style21 style24"> ID </div></td>
                      <td width="52" bgcolor="#FF0000"><div align="center" class="style25">Report Name </div></td>
                      <td width="73" bgcolor="#FF0000"><div align="center" class="style25">Authoritie Name</div></td>
                      <td width="58" bgcolor="#FF0000"><div align="center" class="style25">Date &amp; Time </div></td>
                      <td width="88" bgcolor="#FF0000"><div align="center" class="style24 style25"><strong>View </strong></div></td>
				      <td width="97" bgcolor="#FF0000"><div align="center" class="style24 style27"><strong>Patient Name </strong></div></td>
					    <td width="66" bgcolor="#FF0000"><div align="center" class="style24 style27"><strong>Disease Type</strong></div></td>
						 <td width="83" bgcolor="#FF0000"><div align="center" class="style24 style27"><strong>Disease Name</strong></div></td>
					  <td width="68" bgcolor="#FF0000"><div align="center" class="style24 style27"><strong>Disease Symtoms</strong></div></td>
				      <td width="105" bgcolor="#FF0000"><div align="center" class="style24 style27"><strong>Authority Type</strong></div></td>
					  
                    </tr>
                    <%
				
				
				String query="Select * from cloudserver where downer='"+dname+"' and atype='"+atype+"' "; 
				Statement st=connection.createStatement();
				ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
				{
					i=rs.getInt(1);
					s2=rs.getString(2);
					s3=rs.getString(7);
					s6=rs.getString(8);
					
					
					s5=rs.getString(9); // pname
					s66=rs.getString(15); // Disease Type
					s7=rs.getString(16); // Disease Name
					s8=rs.getString(17); // Disease symtoms
					s9=rs.getString(18); // atype
					
					
					String keys = "ef50a0ef2c3e3a5f";
					byte[] keyValue = keys.getBytes();
					Key key = new SecretKeySpec(keyValue, "AES");
					Cipher c = Cipher.getInstance("AES");
					c.init(Cipher.DECRYPT_MODE, key);
					String dt1 = new String(Base64.decode(s3.getBytes()));
					String ss1= new String(Base64.decode(s5.getBytes()));
					String ss2 = new String(Base64.decode(s66.getBytes()));					
					String ss3 = new String(Base64.decode(s7.getBytes()));
					String ss4 = new String(Base64.decode(s8.getBytes()));
					String ss5 = new String(Base64.decode(s9.getBytes()));
					%>
                    <tr>
                      <td height="28"><div align="center"><strong><%=i%></strong></div></td>
                      <td><div align="center"><strong><%=s2%></strong></div></td>
                      <td><div align="center"><strong><%=s6%></strong></div></td>
                      <td><div align="center"><strong><%=dt1%></strong></div></td>
					   <td><a href="E_FileDetails.jsp?fname=<%=s2%>">View Report</a></td>
					  <td bgcolor="#F0F0F0"><div align="center" class="style29"><strong><%=ss1%></strong></div></td>
					  <td bgcolor="#F0F0F0"><div align="center" class="style29"><strong><%=ss2%></strong></div></td>
					  <td bgcolor="#F0F0F0"><div align="center" class="style29"><strong><%=ss3%></strong></div></td>
					  <td bgcolor="#F0F0F0"><div align="center" class="style29"><strong><%=ss4%></strong></div></td>
					  <td bgcolor="#F0F0F0"><div align="center" class="style29"><strong><%=s9%></strong></div></td>



                     
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
                  <p align="justify">&nbsp;</p>
                  <p align="right"><a href="E_Main.jsp">Back</a></p>
                </div>
                <h4>&nbsp;</h4>
              </div>
            </div>
            <div class="col-2">
			<ul>
				
				
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
