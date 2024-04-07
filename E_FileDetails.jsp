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
<title>AuthoritiesMain</title>
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
.style32 {font-size: 12px}
.style34 {color: #FFFF00}
.style35 {font-size: 12px; color: #FFFF00; }
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
                  <h3>View File Details </h3>
                  <p>&nbsp;</p>
                  <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
String fname=request.getParameter("fname");	
try 
	{
      		String query="Select *from cloudserver where fname='"+fname+"'"; 
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
					s7=rs.getString(7);
					s8=rs.getString(8);
				}	

		
						%>
                  <table width="549" border="1" style="border-collapse:collapse" cellpadding="0" cellspacing="0" align="center">
                    <tr>
                      <td width="142" height="36" bgcolor="#FF0000"><div align="center" class="style29 style32 style34">
                          <div align="left"><strong> ID :</strong></div>
                      </div></td>
                      <td width="394"><label>
                        <input readonly="readonly"  name="textfield" type="text" value="<%=i%>" size="49" />
                        </label>                      </td>
                    </tr>
                    <tr>
                      <td height="36" bgcolor="#FF0000"><div align="center" class="style35">
                          <div align="left"><strong>Report Name : </strong></div>
                      </div></td>
                      <td><input readonly="readonly"  name="textfield2" type="text" size="49" value="<%=s2%>" />                      </td>
                    </tr>
                    
                    <tr>
                      <td height="186" bgcolor="#FF0000"><div align="center" class="style35">
                          <div align="left"><strong>Report Contents :</strong></div>
                      </div></td>
                      <td><label>
                        <textarea readonly="readonly" rows="10"  cols="50"  name="textarea"><%=s3%></textarea>
                        </label>                      </td>
                    </tr>
                    <tr>
                      <td height="36" bgcolor="#FF0000"><div align="center" class="style35">
                          <div align="left"><strong>Trapdoor :</strong></div>
                      </div></td>
                      <td><input readonly="readonly"  name="textfield3" type="text" value="<%=s4%>" size="49" /></td>
                    </tr>
                    <tr>
                      <td height="36" bgcolor="#FF0000"><div align="center" class="style35">
                          <div align="left"><strong>Rank : </strong></div>
                      </div></td>
                      <td><input readonly="readonly"  name="textfield32" type="text" value="<%=s6%>" size="49" /></td>
                    </tr>
                    <tr>
                      <td height="36" bgcolor="#FF0000"><div align="center" class="style35">
                          <div align="left"><strong>Date &amp; Time :</strong></div>
                      </div></td>
                      <td><input readonly="readonly"  name="textfield33" type="text" value="<%=s7%>" size="49" /></td>
                    </tr>
                    <tr>
                      <td height="36" bgcolor="#FF0000"><div align="center" class="style35">
                          <div align="left"><strong>Authorities: </strong></div>
                      </div></td>
                      <td><input readonly="readonly"  name="textfield34" type="text" value="<%=s8%>" size="49" /></td>
                      <%
			 		
           connection.close();
	  }
	 
	  catch(Exception e)
	  {
		out.println(e.getMessage());
	  }
%>
                    </tr>
                  </table>
                  <p align="right"><a href="DO_ViewFiles.jsp"></a></p>
                  <p align="right"><a href="E_ViewFiles.jsp">Back</a></p>
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
