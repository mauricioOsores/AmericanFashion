<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="AmericanFashion.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Bootstrap core CSS -->
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="Content/signin.css" rel="stylesheet" />
    <title>Iniciar</title>
</head>
<body class="text-center">

    <form id="Form2" class="form-signin" runat="server">

        <asp:Panel ID="Panel_FormularioProducto" CssClass="panel panel-primary" runat="server">
            <div class="panel-heading">
                <h1 class="h3 mb-1 font-weight-normal">Iniciar Sesion</h1>
            </div>


            <div class="panel-body">
                <label for="txtRut" class="sr-only">RUT</label>
                <asp:TextBox ID="txtRut" placeholder="Rut" class="form-control" runat="server"></asp:TextBox>
                <label for="txtClave" class="sr-only">Contraseña</label>
                <asp:TextBox ID="txtClave" TextMode="Password" placeholder="Contraseña" CssClass="form-control " runat="server"></asp:TextBox>
                <br />
            </div>


            <div class="panel-footer">
                <asp:Button ID="btnIngresar" OnClick="btnIngresar_Click" runat="server" Text="Ingresar" CssClass="btn btn-lg btn-primary btn-block" />
                <br />
                <p class="mt-5 mb-3 text-muted">American Fashion &copy;</p>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:Panel ID="Panel_error" runat="server" CssClass="hidden">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    <strong>Error</strong> Intente nuevamente.
                </asp:Panel>
            </div>


        </asp:Panel>
    </form>


</body>
</html>
