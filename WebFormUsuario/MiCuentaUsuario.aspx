<%@ Page Title="" Language="C#" MasterPageFile="~/WebFormUsuario/PaginaMaestraUsuario.Master" AutoEventWireup="true" CodeBehind="MiCuentaUsuario.aspx.cs" Inherits="reciclemos_v2.WebFormUsuario.MiCuentaUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .bor {
            border: none;
            text-align: end;
            padding-top: 12px;
        }
    </style>
    <div class="container pt-5">
        <h4>Mi Cuenta</h4>

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
                <asp:DropDownList ID="DdlComunas" runat="server" CssClass="form-control" Enabled="False">
                    <asp:ListItem Value="888">Seleccione Comuna</asp:ListItem>
                    <asp:ListItem Value="126">San Ramon</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-4 form-control bor">
                <asp:Label ID="LblContrasena" runat="server" Text="Contrasena"></asp:Label>
            </div>
            <div class="col-sm-5 py-1">
                <asp:TextBox ID="TxtContrasena" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>
            <div class="col-12 form-control pt-3 bor text-center">
                <asp:Label ID="LblMensaje" runat="server" Text=""></asp:Label>
            </div>
            <div class="col-sm-6 pl-4 pr-1 pt-5" style="text-align: end;">
                <asp:Button ID="BtnModificar" runat="server" Text="Modificar" CssClass="btn btn-success" Width="150px" OnClick="BtnModificar_Click" />
            </div>
            <div class="col-sm-3 pl-0 pr-1 pt-5" style="text-align: end;">
                <asp:Button ID="BtbGuardar" runat="server" Text="Guardar" CssClass="btn btn-warning" Width="150px" OnClick="BtnGuardar_Click" />
            </div>
        </div>

    </div>
</asp:Content>
