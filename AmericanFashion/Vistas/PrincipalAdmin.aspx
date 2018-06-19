<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/PlantillaAdmin.Master" AutoEventWireup="true" CodeBehind="PrincipalAdmin.aspx.cs" Inherits="AmericanFashion.Vistas.PrincipalAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <div class="col-md-12">

    <div class="col-md-4">
            <asp:Panel ID="Panel_FormularioProducto" CssClass="panel panel-success" runat="server">
                <div class="panel-heading">
                    <span class="glyphicon glyphicon-user" aria-hidden="true"></span> Agregar Producto
                </div>
                <div class="panel-body">
                    <asp:TextBox ID="txtNombre" placeholder="Nombre Producto" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtStock" placeholder="Stock" CssClass="form-control" runat="server"></asp:TextBox>
                     <asp:TextBox ID="txtPrecio" placeholder="Precio" CssClass="form-control" runat="server"></asp:TextBox>
                       <asp:TextBox ID="txtGlosa" placeholder="Glosa" CssClass="form-control" runat="server"></asp:TextBox>
                    <br />
                   
                </div>

                <div class="panel-footer">
                     <asp:LinkButton ID="btnAgregar" OnClick="btnAgregar_Click" CssClass="btn btn-success btn-sm" runat="server">
                         <span class="glyphicon glyphicon-log-out" aria-hidden="true">Agregar</span>
                    </asp:LinkButton>
                   <br />
            <asp:Label ID="lbResultado" runat="server" Text=""></asp:Label>
                 </div>
            </asp:Panel>                         
        </div>





     <div class="col-md-6">
        <h4 class="text-center text-info">Productos Existentes</h4>
        <asp:GridView ID="GridView_ev" runat="server"  AutoGenerateColumns="false" CssClass="table table-bordered">
            <HeaderStyle CssClass="btn-danger" />
            <Columns>
                <asp:BoundField HeaderText="#" DataField="CodigoP" />
                <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                <asp:BoundField HeaderText="Stock" DataField="Stock" />
                <asp:BoundField HeaderText="Precio" DataField="Precio" />
                <asp:BoundField HeaderText="Glosa" DataField="Glosa" />
            </Columns>
            <EmptyDataTemplate>
                <h4 class="text-center text-danger">Sin datos</h4>
            </EmptyDataTemplate>
        </asp:GridView>
    </div>

    <div class="col-md-2"></div>

    

    </div>


    <div class="col-md-12">

    
    <div class="col-md-4">
            <asp:Panel ID="Panel1" CssClass="panel panel-success" runat="server">
                <div class="panel-heading">
                    <span class="glyphicon glyphicon-user" aria-hidden="true"></span> Insertar Producto
                </div>
                <div class="panel-body">
                    <asp:TextBox ID="txtUsuario" placeholder="Usuario" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtFecha" placeholder="Fecha" CssClass="form-control" runat="server"></asp:TextBox>
                     <asp:TextBox ID="txtHora" placeholder="Hora" CssClass="form-control" runat="server"></asp:TextBox>
                       <asp:TextBox ID="txtFolio" placeholder="Folio" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtCodigoP" placeholder="Codigo Producto" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtCantidad" placeholder="Cantidad" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtPrecio2" placeholder="Precio" CssClass="form-control" runat="server"></asp:TextBox>
                    <br />
                   
                </div>

                <div class="panel-footer">
                     <asp:LinkButton ID="btnInsertar" OnClick="btnInsertar_Click" CssClass="btn btn-success btn-sm" runat="server">
                         <span class="glyphicon glyphicon-log-out" aria-hidden="true">Agregar</span>
                    </asp:LinkButton>
                   <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                 </div>
            </asp:Panel>                         
        </div>


    <div class="col-md-6">
        <h4 class="text-center text-info">Productos Insertados</h4>
        <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="false" CssClass="table table-bordered">
            <HeaderStyle CssClass="btn-danger" />
            <Columns>
                <asp:BoundField HeaderText="Usuario" DataField="Usuario" />
                <asp:BoundField HeaderText="Fecha" DataField="Fecha" />
                <asp:BoundField HeaderText="Hora" DataField="Hora" />
                <asp:BoundField HeaderText="Folio" DataField="Folio" />
                <asp:BoundField HeaderText="CodigoP" DataField="Codigo Producto" />
                <asp:BoundField HeaderText="Stock" DataField="Cantidad" />
                <asp:BoundField HeaderText="Precio" DataField="Precio Venta" />

            </Columns>
            <EmptyDataTemplate>
                <h4 class="text-center text-danger">Sin datos</h4>
            </EmptyDataTemplate>
        </asp:GridView>
    </div>

  
    </div>

</asp:Content>
