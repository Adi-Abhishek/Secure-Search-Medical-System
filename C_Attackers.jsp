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
.style22 {font-size: 14px; font-weight: bold; }
.style23 {color: #FF0000}
.style24 {font-size: 14px; font-weight: bold; color: #FF0000; }
.style25 {color: #FF0000; font-weight: bold; }
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
        <div class="inner_copy">More <a href="#">Website Templates</a></div>
        <div class="tail-right">
          <div class="wrapper">
            <div class="col-1">
              <div class="indent">
                <div class="indent1">
                  <h3>View All Attackers</h3>
                  <p>&nbsp;</p>
                  <table width="768" border="2" style="border-collapse:collapse" cellpadding="0" cellspacing="0" align="center">
                    <tr>
                      <td width="60" height="31" bgcolor="#FFFF00"><div align="center" class="style22 style23"> ID </div></td>
                      <td width="111" bgcolor="#FFFF00"><div align="center" class="style24"> Name </div></td>
                      <td width="132" bgcolor="#FFFF00"><div align="center" class="style24">Report Name </div></td>
                      <td width="258" bgcolor="#FFFF00"><div align="center" class="style24">Missmatch Key </div></td>
                      <td width="193" bgcolor="#FFFF00"><div align="center" class="style24">Date &amp; Time</div></td>
                    </tr>
                    <%

	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
        String query="select * from attacker"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
	
		%>
                    <tr>
                      <td height="29"><div align="center" class="style25"><%=i%></div></td>
                      <td><div align="center" class="style25"><%=s2%></div></td>
                      <td><div align="center" class="style25"><%=s3%></div></td>
                      <td><div align="center" class="style25"><%=s4%></div></td>
                      <td><div align="center" class="style25"><%=s5%></div></td>
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
                  <table width="753" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <th scope="row"><div align="right"><a href="C_Main.jsp">Back</a></div></th>
                    </tr>
                  </table>
                </div>
                </div>
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