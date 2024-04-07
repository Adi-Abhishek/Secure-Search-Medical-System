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
.style3 {font-size: 12px}
.style30 {font-size: 18px; font-weight: bold; }
.style6 {	font-size: 16px;
	font-weight: bold;
}
.style31 {font-size: 12px; font-weight: bold; }
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
                  <h3>Request Master Secret Key(MSK)</h3>
                  <p>&nbsp;</p>
                    <%
try
	{
	
		String owner = request.getParameter("t142");
		String fname = request.getParameter("t14");
		String uname=(String)application.getAttribute("rname");
		String generate ="Generate MSK Key";
		
		
		String query="select * from request  where user='"+uname+"' and fname='"+fname+"' and owner='"+owner+"'"; 
		Statement st=connection.createStatement();
		ResultSet rs=st.executeQuery(query);
		
		if ( rs.next()==true)
		{
			%>
			<p class="style30">Request Already Sent Server!!!</p>
			<p class="style6"><a href="R_ReqMSK.jsp" class="style3">Back</a></p>
			<%	
		}
		else
		{	
		
			String query1="select * from cloudserver  where fname='"+fname+"' and downer='"+owner+"' "; 
			Statement st1=connection.createStatement();
			ResultSet rs1=st1.executeQuery(query1);
			if ( rs1.next())
			{
					
					SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
					SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
					Date now = new Date();
					
					String strDate = sdfDate.format(now);
					String strTime = sdfTime.format(now);
					String dt = strDate + "   " + strTime;
				
				
					String query4="insert into request(user,owner,fname,sk,reqtime,restime) values('"+uname+"','"+owner+"','"+fname+"','"+generate+"','"+dt+"','NO')";
					connection.createStatement().executeUpdate(query4); 
					
					
					%>
					<p class="style30">Request Sent Server !! </p>
					<p class="style6"><a href="R_ReqMSK.jsp" class="style3">Back</a></p>
					<%
			}
			else 
			{
				%>
				<p class="style30">File Doesn't Exist!!! </p>
				<p><a href="R_ReqMSK.jsp" class="style31">Back</a></p>
				<%
			}
		}
	connection.close();
	} 
catch(Exception e)
{
out.println(e.getMessage());
}
	%>
                  </p>
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
