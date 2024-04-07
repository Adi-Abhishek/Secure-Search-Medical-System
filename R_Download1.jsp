<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Clients</title>
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
.style18 {font-size: 14px}
.style20 {color: #FFFF00}
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
            <li class="m2"><a href="R_Main.jsp"class="active">end user </a></li>
            <li class="m3"><a href="R_Login.jsp">Logout</a></li>
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
                  <h3>Download Patient Report </h3>
                  <p align="justify">&nbsp;</p>
                  <p>&nbsp;</p>
                  <form action="R_Download2.jsp" method="post" id="form1">
                    <p>
                      <%
		  
	try 
	{
		String file = request.getParameter("t1");
		String trapdoor="";
		String sk="";
		String user=(String) application.getAttribute("rname");
		String yes="Permitted";
		
		
		String Query5 = "select * from cloudserver where fname='"+file+"'";
		ResultSet rs5 = connection.createStatement().executeQuery(Query5);
		if(rs5.next()==true)
		{	
			trapdoor=rs5.getString(4);
			
			String Query2 = "select sk from request where user='"+user+"' and fname='"+file+"'";
			ResultSet rs2 = connection.createStatement().executeQuery(Query2);
			if(rs2.next())
			{
				sk=rs2.getString(1);
				if (sk.equalsIgnoreCase("Generate Key"))
				{
					%>
					</p>
					<h2 >Secret Key Not Generated</span> !!!</h2>
                  <p><a href="R_Main.jsp">Back</a></p>
					</p>
					<%
				}
				else
				{
					%>
					</p>
					<table width="548" border="0" cellpadding="0" cellspacing="0" align="center">
					<tr>
					<td width="223" height="35" bgcolor="#FF0000"><span class="style18 style20"><strong>Enter Report Name :</strong></span></td>
					<td width="245"><label>
					<input required="required" name="t1" type="text" value="<%=file%>" size="40" />
					</label></td>
					</tr>
					<tr>
					<td height="35" bgcolor="#FF0000"><span class="style18 style20"><strong>Trapdoor :</strong></span></td>
					<td><input name="t12" type="text" value="<%=trapdoor%>" size="40" /></td>
					</tr>
					<tr>
					<td height="35" bgcolor="#FF0000"><span class="style20 style18"><strong>Secret Key :</strong></span></td>
					<td><input name="t13" type="text" value="<%=sk%>" size="40" /></td>
					</tr>
					<tr>
					<td height="35"><div align="right"></div></td>
					<td><input type="submit" name="Submit2" value="Download" /></td>
					</tr>
					</table>
					<p>
					<%
				}
			}
			else
			{
				%>
				</p>
				<h2 >Secret Key Not Requested !!!</h2>
                  <p><a href="R_Main.jsp">Back</a></p>
				</p>
				<%
			}	
		}
		else
		{
			%>
			<h2>File Doesn't Exist !!!</h2>
                  <p><a href="R_Main.jsp">Back</a></p>
			<%
		}		
		connection.close();
	}
	catch(Exception e)
	{
	out.println(e.getMessage());
	}
%>
                    </p>
                    <p>&nbsp;</p>
                  </form>
                  </div>
                </div>
            </div>
            <div class="col-2">
			<ul>
				<li><a href="R_Main.jsp">Home</a></li>
				<li><a href="R_Login.jsp">Logout</a></li>
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
