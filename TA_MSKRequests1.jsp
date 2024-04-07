<%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PrivateKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<html><style type="text/css">
<!--
body {
	background-color: #FFFFFF;
}
-->
</style>
<body>
<%
int uid = Integer.parseInt(request.getParameter("usid"));
String fname=request.getParameter("fname");

try {

		KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA"); 
		Cipher encoder = Cipher.getInstance("RSA"); 
		KeyPair kp = kg.generateKeyPair(); 
		PrivateKey privKey = kp.getPrivate(); 
		// RSA produces 1024 bits Key
		byte[] priv = privKey.getEncoded();
		String s = priv.toString();
		
		
		Statement st1 = connection.createStatement();
		
		
		SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		Date now = new Date();
		
		String strDate = sdfDate.format(now);
		String strTime = sdfTime.format(now);
		String dt = strDate + "   " + strTime;
		
		String query2 ="update cloudserver set sk='"+s+"' where fname='"+fname+"' ";
		st1.executeUpdate (query2);
		
		String query1 ="update request set sk='"+s+"',restime='"+dt+"' where id='"+uid+"' ";
		st1.executeUpdate (query1);
		
		response.sendRedirect("TA_MSKRequests.jsp");
		
		connection.close();
}
catch(Exception e)
{
out.println(e.getMessage());
}
%>
</body></html>