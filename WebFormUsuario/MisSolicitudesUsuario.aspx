<%@ Page Title="" Language="C#" MasterPageFile="~/WebFormUsuario/PaginaMaestraUsuario.Master" AutoEventWireup="true" CodeBehind="MisSolicitudesUsuario.aspx.cs" Inherits="reciclemos_v2.WebFormMasterPage.MisSolicitudesUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            max-width: 1140px;
            min-width: 992px;
            height: 381px;
            margin-left: auto;
            margin-right: auto;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style2">
        <h2 class="py-5">Mis Solicitudes</h2>
        <div class="pb-3 d-flex">
            <asp:DropDownList ID="DdlFiltrarSol" runat="server" Width="250" CssClass="form-control">
                <asp:ListItem Selected="True">Todas</asp:ListItem>
                <asp:ListItem>Recientes</asp:ListItem>
            </asp:DropDownList>
            <div class="pl-3">
                <asp:Button ID="BtnFiltrar" runat="server" Text="Filtrar" Width="100" CssClass="btn btn-primary flex-wrap" OnClick="BtnFiltrar_Click" />
            </div>
        </div>
        <div class="pt-3">
            <div>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
              <asp:GridView ID="GdvSolicitudes" runat="server" CssClass="table-hover" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField HeaderText="Id Solicitud" DataField="Id Solicitud"/>
                    <asp:BoundField HeaderText="Estado" DataField="Estado"/>
                    <asp:BoundField HeaderText="Fecha" DataField="Fecha"/>
                    <asp:BoundField HeaderText="Horario" DataField="Horario"/>
                    <asp:BoundField HeaderText="Materiales" DataField="Materiales"/>
                    <asp:CheckBoxField HeaderText="Seleccionar" ReadOnly="True" />
                </Columns>
            </asp:GridView>
            </div>

            <div class="d-flex">
                <div class="flex-wrap pr-2" id="sel">
                    <asp:Button ID="BtnModificar" runat="server" Text="Modificar" CssClass="btn btn-warning" Width="100" />
                </div>
                <div class="flex-wrap pr-2">
                    <asp:Button ID="BtnEliminar" runat="server" Text="Eliminar" CssClass="btn btn-danger" Width="100" />
                </div>
            </div>

        </div>
</asp:Content>
