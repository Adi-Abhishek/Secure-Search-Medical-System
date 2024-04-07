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
<title>Data Owner</title>
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
.style21 {font-size: 14px}
.style27 {color: #f3fcff}
.style30 {font-size: 14px;
	color: #6d6d6d;
	font-weight: bold;
}
.style8 {color: #6d6d6d}
.style31 {color: #FFFF00}
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
            <li class="m2"><a href="E_Main.jsp">Data Owner</a></li>
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
                  <h3>Delete Patient </h3>
                  <p>&nbsp;</p>
                  <table width="459" border="2" style="border-collapse:collapse" cellpadding="0" cellspacing="0" align="center">
                    <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
String dname=(String)application.getAttribute("ename");
	
try 
	{			
	
	String atype=(String)application.getAttribute("atype");
	%>
                    <tr>
                      <td width="51" height="30" bgcolor="#FF0000" class="style27"><div align="center" class="style21 style29 style31"><strong> ID </strong></div></td>
                      <td width="106" bgcolor="#FF0000" class="style27"><div align="center" class="style30 style31">Report Name </div></td>
                      <td width="184" bgcolor="#FF0000" class="style27"><div align="center" class="style30 style31">Uploaded Date &amp; Time </div></td>
					  <td width="184" bgcolor="#FF0000" class="style27"><div align="center" class="style30 style31">Patient Name </div></td>
                      <td width="106" bgcolor="#FF0000" class="style27"><div align="center" class="style30 style31">Delete File </div></td>
                    </tr>
                    <%
      		String query="Select * from cloudserver where downer='"+dname+"' and atype='"+atype+"'"; 
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
                    <tr>
                      <td height="28" class="style27"><div align="center" class="style8"><%=i%></div></td>
                      <td class="style27"><div align="center" class="style8"><a href="E_FileDets.jsp?fname=<%=s2%>"><%=s2%></a></div></td>
                      <td class="style27"><div align="center" class="style8"><%=dt1%></div></td>
					     <td class="style27"><div align="center" class="style8"><%=pname%></div></td>
                      <td class="style27"><div align="center"><a href="E_Delete1.jsp?usid=<%=i%>&amp;fname=<%=s2%>">Delete</a></div></td>
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
