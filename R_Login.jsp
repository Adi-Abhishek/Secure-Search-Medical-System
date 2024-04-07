<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Clients Login</title>
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
.style4 {
	color: #FF0000;
	font-weight: bold;
}
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
            <li class="m1"><a href="index.html" >Home</a></li>
            <li class="m2"><a href="R_Login.jsp"class="active">End user </a></li>
            <li class="m3"><a href="E_Login.jsp">data owner </a></li>
            <li class="m5"><a href="C_Login.jsp">Server server </a></li>
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
                  <h3>Clients Login </h3>
                  <p align="justify"><img src="images/Login.jpg" alt="" width="293" height="159" /></p>
                  <form action="R_Authentication.jsp" method="post" id="leavereply">
				   <p class="style4">Select Client <br />
                    <select name="ctype">
					 <option>--- Select ----</option>
                      <option>Patients</option>
                      <option>Doctors</option>
                      <option>Accounting</option>
                    </select> </p>
                      <p class="style4">Name (required)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <input name="userid" type="text" class="box" id="name" value="" />
                    </p>
                      <p><span class="style4">Password (required)&nbsp;</span>&nbsp;&nbsp; 
                        <input type="password" id="pass" name="pass" class="box" />
                    </p>
                      <p>
                      <input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Login" />
                      <input type="reset" name="imageField" id="imageField"  class="RESET" />
                    </p>
                    <p>New  Clients? click here to <a href="R_Register.jsp" class="style3"> Register</a></p>
                    <p>&nbsp;</p>
                  </form>
                </div>
                </div>
            </div>
            <div class="col-2">
			<ul>
				<li><a href="index.html">Home</a></li>
				<li><a href="C_Login.jsp">Server</a></li>
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
