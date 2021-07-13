<%@ Page Title="" Language="C#" MasterPageFile="~/WebFormEmpresa/PaginaMaestraEmpresa.Master" AutoEventWireup="true" CodeBehind="ClientesEmpresa.aspx.cs" Inherits="reciclemos_v2.WebFormEmpresa.ClientesEmpresa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .bor{
            border: none;
            text-align: end;
            padding-top: 12px;
        }
    </style>
    <div class="container pt-5">
        <h1 class="display-4 text-center" style="font-size: 2.5rem; padding-bottom: 2rem;">Mantenedor de Usuarios</h1>
        <div class="row">
            <div class="col-2 pr-4" style="text-align: center;">
                <asp:TextBox ID="TxtBusqueda" runat="server" placeholder="Ingrese Rut" CssClass="form-control" Width="200px"></asp:TextBox>
            </div>
            <div class="col-2 pl-5">
                <asp:Button ID="BtnBuscar" runat="server" Text="Buscar" CssClass="btn btn-primary" OnClick="BtnBuscar_Click"/>
            </div>

        </div>
        <div class="px-2 py-4">
            <asp:Label ID="LblMensaje" runat="server" Text="" ForeColor="Green"></asp:Label>
        </div>
        <asp:Panel ID="Panel1" runat="server" Visible="true" Height="243px">
            <div class="container">
                <div class="row">
                    <div class="col-4 form-control bor">
                        <asp:Label ID="LblRut" runat="server" Text="Rut" CssClass="bor"></asp:Label>
                    </div>
                    <div class="col-sm-5 py-1">
                        <asp:TextBox ID="TxtRut" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                    </div>
                    <div class="col-4 form-control bor">
                        <asp:Label ID="LblNombre" runat="server" Text="Nombre"></asp:Label>
                    </div>
                    <div class="col-sm-5 py-1">
                        <asp:TextBox ID="TxtNombre" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                    </div>
                    <div class="col-4 form-control bor">
                        <asp:Label ID="LblApellido" runat="server" Text="Apellido"></asp:Label>
                    </div>
                    <div class="col-sm-5 py-1">
                        <asp:TextBox ID="TxtApellido" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                    </div>
                    <div class="col-4 form-control bor">
                        <asp:Label ID="LblCorreo" runat="server" Text="Correo"></asp:Label>
                    </div>
                    <div class="col-sm-5 py-1">
                        <asp:TextBox ID="TxtCorreo" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                    </div>
                    <div class="col-4 form-control bor">
                        <asp:Label ID="LblTelefono" runat="server" Text="Teléfono"></asp:Label>
                    </div>
                    <div class="col-sm-5 py-1">
                        <asp:TextBox ID="TxtTelefono" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                    </div>
                    <div class="col-4 form-control bor">
                        <asp:Label ID="LblDireccion" runat="server" Text="Dirección"></asp:Label>
                    </div>
                    <div class="col-sm-5 py-1">
                        <asp:TextBox ID="TxtDireccion" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                    </div>
                    <div class="col-4 form-control bor">
                        <asp:Label ID="LblComuna" runat="server" Text="Comuna"></asp:Label>
                    </div>
                    <div class="col-sm-5 py-1">
                        <asp:DropDownList ID="DdlComunas" runat="server" CssClass="form-control" Enabled="False" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="idComuna">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:select %>" SelectCommand="SELECT [idComuna], [nombre] FROM [comuna]"></asp:SqlDataSource>
                    </div>
                    <div class="col-4 form-control bor">
                        <asp:Label ID="LblContrasena" runat="server" Text="Contraseña"></asp:Label>
                    </div>
                    <div class="col-sm-5 py-1">
                        <asp:TextBox ID="TxtContrasena" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                    </div>
                    <div class="col-4 form-control bor">
                        <asp:Label ID="LblTipoUsu" runat="server" Text="Rol Usuario"></asp:Label>
                    </div>
                    <div class="col-sm-5 py-1">
                        <asp:DropDownList ID="DdlTipoUsu" runat="server" CssClass="form-control" Enabled="False" DataSourceID="SqlDataSource1" DataTextField="Tipo" DataValueField="idTipoUsu">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:select %>" SelectCommand="SELECT [idTipoUsu], [Tipo] FROM [tipo_usuario]"></asp:SqlDataSource>
                    </div>
                    <div class="col-4 py-1 pt-3" style="text-align: end;">
                        <asp:Button ID="BtnOpciones" runat="server" Text="Opciones" CssClass="btn btn-success" Width="150px" OnClick="BtnOpciones_Click" />
                    </div>
                    <div class="col-4 py-1 pt-3" style="text-align: center;">
                        <asp:Button ID="BtnModificar" runat="server" Text="Modificar" CssClass="btn btn-warning" Width="150px" Visible="false" OnClick="BtnModificar_Click"  />
                    </div>
                    <div class="col-4 py-1 pt-3" style="text-align: start;">
                        <asp:Button ID="BtnEliminar" runat="server" Text="Eliminar" CssClass="btn btn-danger" Width="150px" Visible="false"  />
                    </div>
                </div>
            </div>
        </asp:Panel>
    </div>

</asp:Content>
