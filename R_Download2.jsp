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
.style16 {color: #FF0000}
.style20 {
	color: #FF0000;
	font-weight: bold;
}
.style21 {color: #FF0000; font-weight: bold; font-size: 24px; }
-->
</style>
<script type='text/javascript'>

function saveTextAsFile()
{
	var textToWrite = document.getElementById("textarea").value;
	var textFileAsBlob = new Blob([textToWrite], {type:'text/plain'});
	var fileNameToSaveAs = "File.txt";

	var downloadLink = document.createElement("a");
	downloadLink.download = fileNameToSaveAs;
	downloadLink.innerHTML = "Download File";
	if (window.webkitURL != null)
	{
		// Chrome allows the link to be clicked
		// without actually adding it to the DOM.
		downloadLink.href = window.webkitURL.createObjectURL(textFileAsBlob);
	}
	else
	{
		// Firefox requires the link to be added to the DOM
		// before it can be clicked.
		downloadLink.href = window.URL.createObjectURL(textFileAsBlob);
		downloadLink.onclick = destroyClickedElement;
		downloadLink.style.display = "none";
		document.body.appendChild(downloadLink);
	}

	downloadLink.click();
}

function destroyClickedElement(event)
{
	document.body.removeChild(event.target);
}



</script>
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
            <li class="m2"><a href="R_Main.jsp"class="active">End user </a></li>
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
                  <h3 class="style21">Download Patient Report !!! </h3>
                  <p align="justify"><span class="infopost">
                  <%
		  	
			try 
			{
		  		String file = request.getParameter("t1");
				String trapdoor=request.getParameter("t12");
				String sk=request.getParameter("t13");
				String ct="";
				String user=(String) application.getAttribute("rname");
				String strQuery2 = "select * from cloudserver where fname='"+file+"' and  trapdoor='"+trapdoor+"'";
				String strQuery3 = "select * from request where fname='"+file+"' and sk='"+sk+"'";
				
				
				
							ResultSet rs2 = connection.createStatement().executeQuery(strQuery2);
							if(rs2.next()==true)
							{
								ct=rs2.getString(3);

									ResultSet rs3 = connection.createStatement().executeQuery(strQuery3);
									if(rs3.next()==true)
									{
									
								
									
										String rank=rs2.getString(6);
										
										int updaterank = Integer.parseInt(rank)+1;
										String strQuer = "update cloudserver set rank='"+updaterank+"' where fname='"+file+"'";
										connection.createStatement().executeUpdate(strQuer);
										
										SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
										SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
					
										Date now = new Date();
					
										String strDate = sdfDate.format(now);
										String strTime = sdfTime.format(now);
										String dt = strDate + "   " + strTime;	
										
										
										String task="Download";
										String Query2 = "insert into transaction(user,fname,task,dt) values('"+user+"','"+file+"','"+task+"','"+dt+"')";
										connection.createStatement().executeUpdate(Query2);
										
										
										String keys = "ef50a0ef2c3e3a5f";
										byte[] keyValue1 = keys.getBytes();
										Key key1 = new SecretKeySpec(keyValue1,"AES");
										Cipher c1 = Cipher.getInstance("AES");
										c1.init(Cipher.DECRYPT_MODE, key1);
										String decryptedValue = new String(Base64.decode(ct.getBytes()));
										%>
                  </span>                  </p>
                  <h2 align="center" class="infopost style16">Report  Contents</h2>
                  <div align="center">
                    <textarea name="text" id="textarea" cols="45" rows="17"><%=decryptedValue%></textarea>
                    <br/>
                    <br/>
                    <td><button onclick="saveTextAsFile()">Download</button>
                        <p align="right"><a href="R_Main.jsp">Back</a></p></td>
                  </div>
                  </label>
                  <%	
									}
									else
									{
									
										SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
										SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
				
										Date now = new Date();
						
										String strDate = sdfDate.format(now);
										String strTime = sdfTime.format(now);
										String dt = strDate + "   " + strTime;
								
										String str="SecretKey Missmatch";
										
										
										String strQuer1 = "insert into attacker(user,fname,sk,dt,attacktype) values('"+user+"','"+file+"','"+sk+"','"+dt+"','"+str+"')";
										connection.createStatement().executeUpdate(strQuer1);
										%>
                  <h2 class="style20" >Secret Key Mismatch !!</h2>
                  <p class="style20"><a href="R_Main.jsp">Back</a></p>
                  <span class="style20">
                  <%
									}
							}
							else
							{
										SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
										SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
				
										Date now = new Date();
						
										String strDate = sdfDate.format(now);
										String strTime = sdfTime.format(now);
										String dt = strDate + "   " + strTime;
								
										String str="Trapdoor Missmatch";
										
										
										String strQuer1 = "insert into attacker(user,fname,sk,dt,attacktype) values('"+user+"','"+file+"','"+trapdoor+"','"+dt+"','"+str+"')";
										connection.createStatement().executeUpdate(strQuer1);
							
								%>
                  </p>
                  </span>
                  <h2 class="style20">Trapdoor Mismatch !!</h2>
                  </p>
                  <p><a href="R_Main.jsp">Back</a> </p>
                  <p>
                    <%
							}
				
        	connection.close();
	  } 
	  catch(Exception e)
	  {
		out.println(e.getMessage());
	  }
%></p>
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
