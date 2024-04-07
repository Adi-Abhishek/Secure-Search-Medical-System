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
.style2 {color: #20b7c9}
.style14 {color: #0e4369; font-size: 16px; font-weight: bold; }
.style16 {font-size: 12px}
.style28 {color: #5f5f5f}
.style13 {font-size: 12px;
	color: #504b4b;
}
.style29 {font-size: 24px}
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
                  <h3>Patient Upload Status </h3>
                  <p align="justify">&nbsp;</p>
                  <p>
                    <%

	try 
	{
	
	
	long stime=System.currentTimeMillis();
		String file=request.getParameter("t42");
		String cont=request.getParameter("text2");
		String mac =request.getParameter("t4");
		String fsize =request.getParameter("fsize");
		
		
		String pname =request.getParameter("pname");
		String page1 =request.getParameter("page");
		String pcity =request.getParameter("pcity");
		String paddress =request.getParameter("paddress");
		String pmobno =request.getParameter("pmobno");
		String pemail =request.getParameter("pemail");
		String pdt =request.getParameter("pdt");
		String pdn =request.getParameter("pdn");
		String pds =request.getParameter("pds");
		
		
		
		
		
		String dname=(String)application.getAttribute("ename");
		String atype=(String)application.getAttribute("atype");
		
		String keys = "ef50a0ef2c3e3a5f";
		
		
		SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		Date now = new Date();
		
		String strDate = sdfDate.format(now);
		String strTime = sdfTime.format(now);
		String dt = strDate + "   " + strTime;
		
		byte[] keyValue = keys.getBytes();
		Key key = new SecretKeySpec(keyValue, "AES");
		Cipher c = Cipher.getInstance("AES");
		c.init(Cipher.ENCRYPT_MODE, key);
		String dt1 = new String(Base64.encode(dt.getBytes()));
		
		
		
		String rank="0";
		
		
		Statement st=connection.createStatement();
		String task="Upload";
		
		String strQuery2 = "insert into transaction(user,fname,task,dt) values('"+dname+"','"+file+"','"+task+"','"+dt+"')";
		st.executeUpdate(strQuery2);
		String sch="Schedule";
		st.executeUpdate("insert into  cloudserver(fname,ct,trapdoor,sk,rank,dt,downer,pname,page1,pcity,paddress,pmobno,pemail,pdt,pdn,pds,atype) values ('"+file+"','"+cont+"','"+mac+"','No','"+rank+"','"+dt1+"','"+dname+"','"+pname+"','"+page1+"','"+pcity+"','"+paddress+"','"+pmobno+"','"+pemail+"','"+pdt+"','"+pdn+"','"+pds+"','"+atype+"')"); 
		
	
		
					long etime=System.currentTimeMillis();
					long ttime = etime-stime;
					long tpt=((cont.length())/ttime)*1024;
					
					Statement st1=connection.createStatement();
					st1.executeUpdate("insert into  results values ('"+file+"','"+ttime+"','"+tpt+"')"); 
		
		
		%>
		</p>
		<p></p>
		<h3 class="style29">Patient Details Uploaded Sucessfully !!!</h3>
		</p>
		<a href="E_Main.jsp">Back</a><br />
		<%
		
		
		
		connection.close();
	}
	
	catch(Exception e)
	{
	out.println(e.getMessage());
	}
%>
                </div>
                </div>
            </div>
            <div class="col-2">
			<ul>
				<li><a href="E_Main.jsp">Home</a></li>
				<li><a href="E_Login.jsp">Logout</a></li>
				<li></li>
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
