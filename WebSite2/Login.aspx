<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="Login.css"/>
    <link rel="stylesheet" type="text/css" href="MainSheet.css"/>
    <link rel="stylesheet" type="text/css" href="FontAwesome.css"/>
    <!--#include file ="Navigation.aspx"-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!-- HEADER -->
    <div id="header">
      <div id="header-topSection">
        <!-- Logo -->
        <img src="images/lu-logo-white.png" alt="LU Logo White" id="lu-logo">
        <!-- Heading -->
        <h2 id="main-heading">Departmental Timetabling Utility</h2>
        <!-- Accessibility -->
        <div id="accessibility-options"></div>
      </div>
      <div id="header-navigation">
      </div>
    </div>
    <div id="page-content-container">
      <br/>
      <center>
        <div class="card-container">
          <h2>Enter your credentials</h2><br>
          <section>
            <form method="post" action="login.php" name='login'>
              <input type="text" name="user" placeholder="username" class="login-input form-control"><br>
              <input type="password" name="password" placeholder="password" class="login-input form-control">
              <br/>
                <div id="invalid-login" style="color:red;"><i class="fa fa-times"></i> Oops! Invalid password!</div><br/>
              <input type="submit" name='submit' value="Log in" class="login-submit" style='border:none;'>
            </form>
          </section>
        </div>
      </center>
    </div>
    </div>
    </form>
</body>
</html>
