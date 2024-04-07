<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random"%>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@ include file="connect.jsp" %>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Receiver </title>
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
.style18 {color: #FFFF00}
.style19 {font-weight: bold; font-size: 24;}
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
                  <h3>Search Patient Details !!! </h3>
                  <p align="justify">&nbsp;</p>
                  <table width="524" border="1.5" cellpadding="0" cellspacing="0" align="center">
                    <tr>
                      <td width="74" height="29" bgcolor="#FF0000"><div align="center" class="style18"><span class="style19">File ID </span></div></td>
                      <td width="144" bgcolor="#FF0000"><div align="center" class="style18"><span class="style19">Report Name </span></div></td>
                      <td width="124" bgcolor="#FF0000"><div align="center" class="style18"><span class="style19">Rank </span></div></td>
                      <td width="172" bgcolor="#FF0000"><div align="center" class="style18"><span class="style19">Download Report </span></div></td>
					  <td width="79" bgcolor="#FF0000"><div align="center" class="style27 style18">Authoritie Name </div></td>
					    <td width="62" bgcolor="#FF0000"><div align="center" class="style27 style18">Disease Type</div></td>
						 <td width="85" bgcolor="#FF0000"><div align="center" class="style27 style18">Disease Name</div></td>
					  <td width="79" bgcolor="#FF0000"><div align="center" class="style27 style18">Disease Symtoms</div></td>
				      <td width="101" bgcolor="#FF0000"><div align="center" class="style27 style18">Authority Type</div></td>
                    </tr>
                    <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
    String user=(String)application.getAttribute("rname");
try 
  {
            String keyword = request.getParameter("t14");
      		String keys = "ef50a0ef2c3e3a5f";
      		String h1="";
      		String filename="filename.txt";
      		
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
      		String search = new String(Base64.encode(keyword.getBytes()));
			
			String task1="Search";
			
			String strQuery21 ="insert into transaction(user,fname,task,dt) values('"+user+"','"+keyword+"','"+task1+"','"+dt+"')";
			connection.createStatement().executeUpdate(strQuery21);
			
			
			String strQuery22 ="insert into search(user,keyword,dt) values('"+user+"','"+keyword+"','"+dt+"')";
			connection.createStatement().executeUpdate(strQuery22);
				
	
				
				String query4="select * from cloudserver  "; 
				Statement st4=connection.createStatement();
				ResultSet rs=st4.executeQuery(query4);
				while ( rs.next() )
				{
					i=rs.getInt(1);
					s2=rs.getString(2);
					s3=rs.getString(3);
					s4=rs.getString(6);
					s5=rs.getString(9); // pname
					s6=rs.getString(15); // Disease Type
					s7=rs.getString(16); // Disease Name
					s8=rs.getString(17); // Disease symtoms
					s9=rs.getString(18); // atype
					
					
					c.init(Cipher.DECRYPT_MODE,key);
					String decryptedValue = new String(Base64.decode(s3.getBytes()));
					
					String ss1= new String(Base64.decode(s5.getBytes()));
					String ss2 = new String(Base64.decode(s6.getBytes()));					
					String ss3 = new String(Base64.decode(s7.getBytes()));
					String ss4 = new String(Base64.decode(s8.getBytes()));
					String ss5 = new String(Base64.decode(s9.getBytes()));
					
					
					
					if((decryptedValue.toLowerCase().contains(keyword.toLowerCase()))||(s2.toLowerCase().contains(keyword.toLowerCase())))
					{
						String strQuery1 = "select * from cloudserver where fname='"+s2+"'";
						ResultSet rs11 = connection.createStatement().executeQuery(strQuery1);
							if(rs11.next()==true)
							{
								String rank=rs11.getString(6);
								int updaterank = Integer.parseInt(rank)+1;
								String strQuery2 = "update cloudserver set rank='"+updaterank+"' where fname='"+s2+"'";
								connection.createStatement().executeUpdate(strQuery2);
								%>
                    <tr>
                      <td height="28"><div align="center"><%=i%></div></td>
                      <td><div align="center"><%=s2%></div></td>
                      <td><div align="center"><%=s4%></div></td>
                      <td><div align="center"><a href="R_DownloadSearch.jsp?fname=<%=s2%>"> <%=s2%> </a></div></td>
					  <td bgcolor="#F0F0F0"><div align="center" class="style29"><%=ss1%></div></td>
					  <td bgcolor="#F0F0F0"><div align="center" class="style29"><%=ss2%></div></td>
					  <td bgcolor="#F0F0F0"><div align="center" class="style29"><%=ss3%></div></td>
					  <td bgcolor="#F0F0F0"><div align="center" class="style29"><%=ss4%></div></td>
					  <td bgcolor="#F0F0F0"><div align="center" class="style29"><%=s9%></div></td>
                    </tr>
                    <%
							}
							else
							{ 
								%>
                    <h2>File Not Found !!!</h2>
                    <%
							}
			    }
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
                  <p align="right"><a href="R_Search.jsp">Back</a></p>
                </div>
                <h4>&nbsp;</h4>
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
