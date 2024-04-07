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
.style24 {color: #595f61}
.style25 {font-size: 14px;
	color: #0d6887;
	font-weight: bold;
}
.style26 {color: #FFFF00}
.style27 {font-size: 14px; color: #FFFF00; font-weight: bold; }
-->
</style>
</head>
<body id="page1">
<div class="tail-top">
  <div class="tail-bottom">
    <div class="body-bg">
      <!-- HEADER -->
      <div id="header">
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
                  <h3>Report With Master Secret Key </h3>
                  <p>&nbsp;</p>
                  <table width="557" border="2" style="border-collapse:collapse" cellpadding="0" cellspacing="0"  align="center">
                    <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
try 
	{		
				%>
                    <tr>
                      <td width="37" height="30" bgcolor="#FF0000"><div align="center" class="style25 style26"> ID </div></td>
                      <td width="111" bgcolor="#FF0000"><div align="center" class="style27"> Clients </div></td>
                      <td width="111" bgcolor="#FF0000"><div align="center" class="style27"> Owner </div></td>
                      <td width="131" bgcolor="#FF0000"><div align="center" class="style27">Report Name </div></td>
                      <td width="153" bgcolor="#FF0000"><div align="center" class="style27">Master Secret Key </div></td>
					  
                    </tr>
                    <%
				
				String query1="Select * from request where sk!='Generate Key'   "; 
				Statement st=connection.createStatement();
				ResultSet rs1=st.executeQuery(query1);
				while ( rs1.next()==true )
				{
				
					i=rs1.getInt(1);
					s1=rs1.getString(2);
					s2=rs1.getString(3);
					s3=rs1.getString(4);
					s4=rs1.getString(5);
					
					
					
					
					%>
                    <tr>
                      <td height="28"><div align="center" class="style24"><%=i%></div></td>
                      <td><div align="center" class="style24"><%=s1%></div></td>
                      <td><div align="center" class="style24"><%=s2%></div></td>
                      <td><div align="center" class="style24"><a href="C_FileDetails1.jsp?rname=<%=s3%>"><%=s3%></div></td>
                      <td><div align="center" class="style24"><%=s4%></div></td>
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
                  <p>&nbsp;</p>
                  <p align="right"><a href="C_Main.jsp">Back</a></p>
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
