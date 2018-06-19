<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/PrincipalAdmin.Master" AutoEventWireup="true" CodeBehind="Administrador.aspx.cs" Inherits="AmericanF2.Vistas.Administrador" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="row">

        <div class="col-md-5">
            <asp:Panel ID="Panel_FormularioProducto" CssClass="panel panel-success" runat="server">
                <div class="panel-heading">
                    <span class="glyphicon glyphicon-user" aria-hidden="true"></span>Agregar Producto
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





        <div class="col-md-7">
            <h4 class="text-center">Productos Existentes</h4>
            <asp:GridView ID="GridView_ev" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-responsive"
                AllowPaging="True" OnPageIndexChanging="GridView_ev_PageIndexChanging" PageSize="4">
                <HeaderStyle CssClass="btn-success" />
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
                <PagerStyle HorizontalAlign="Center" CssClass="GridPager" />
            </asp:GridView>
        </div>
</div>

    
    <div class="row">


        <div class="col-md-5">
            <asp:Panel ID="Panel1" CssClass="panel panel-success" runat="server">
                <div class="panel-heading">
                    <span class="glyphicon glyphicon-user" aria-hidden="true"></span>Insertar Producto
                </div>
                <div class="panel-body">
                    <asp:TextBox ID="txtUsuario" placeholder="Usuario" CssClass="form-control" runat="server"></asp:TextBox>
                    
                    <asp:TextBox ID="txtFecha" placeholder="Fecha" CssClass="form-control" runat="server"></asp:TextBox>
                    
                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" 
                        TargetControlID="txtFecha"
                        Format="dd/MM/yyyy"/>
                    <asp:TextBox ID="txtHora" placeholder="Hora" CssClass="form-control" runat="server"></asp:TextBox>
                    
                    <asp:TextBox ID="txtFolio" placeholder="Folio" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList_Producto" CssClass="form-control espacio"  AutoPostBack="true" runat="server"></asp:DropDownList>
                    
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


        <div class="col-md-7">
            <h4 class="text-center text-info">Productos Insertados</h4>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered">
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
