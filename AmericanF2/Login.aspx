﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AmericanF2.Login" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  <title>Iniciar Sesion</title>

  <!-- Bootstrap CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="css/elegant-icons-style.css" rel="stylesheet" />
  <link href="css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet" />

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->

    <!-- =======================================================
      Theme Name: NiceAdmin
      Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
      Author: BootstrapMade
      Author URL: https://bootstrapmade.com
    ======================================================= -->
</head>

<body class="login-img3-body">

  <div class="container">
    
    <form class="login-form" runat="server">
      <div class="login-wrap">
        <p class="login-img"><i class="icon_lock_alt"></i></p>
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_profile"></i></span>
          <asp:TextBox ID="txtRut" placeholder="Rut" class="form-control" runat="server"></asp:TextBox>              
        </div>
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_key_alt"></i></span>
          <asp:TextBox ID="txtClave" TextMode="Password" placeholder="Contraseña" CssClass="form-control " runat="server"></asp:TextBox>
        </div>
        <label class="checkbox">
                <input type="checkbox" value="remember-me"> Recordarme
                <span class="pull-right"> <a href="#"> ¿Olvido su Contraseña?</a></span>
            </label>
        <asp:Button ID="btnIniciar" OnClick="btnIniciar_Click" runat="server" Text="Iniciar" CssClass="btn btn-lg btn-primary btn-block" />
                
        

           <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:Panel ID="Panel_error" runat="server" CssClass="hidden">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    <strong>Error</strong> Intente nuevamente.
                </asp:Panel>
      </div>
    </form>

    <div class="text-right">
      <div class="credits">
          Hecho por <a href="https://bootstrapmade.com/">Mauricio Osores</a>
        </div>
    </div>
  </div>


</body>

</html>