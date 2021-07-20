<%@ Page Title="" Language="C#" MasterPageFile="~/WebFormUsuario/PaginaMaestraUsuario.Master" AutoEventWireup="true" CodeBehind="MisSolicitudesUsuario.aspx.cs" Inherits="reciclemos_v2.WebFormMasterPage.MisSolicitudesUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <h2 class="py-5">Mis Solicitudes</h2>
        <div class="pb-3 d-flex">
            <asp:DropDownList ID="DdlFiltrarSol" runat="server" Width="250" CssClass="form-control">
                <asp:ListItem Selected="True">Todas</asp:ListItem>
                <asp:ListItem Value="1">Pendientes</asp:ListItem>
                <asp:ListItem Value="10">En Retiro</asp:ListItem>
                <asp:ListItem Value="9">Finalizado</asp:ListItem>
            </asp:DropDownList>
            <div class="pl-3">
                <asp:Button ID="BtnFiltrar" runat="server" Text="Filtrar" Width="100" CssClass="btn btn-primary flex-wrap" OnClick="BtnFiltrar_Click" />
            </div>
        </div>
        <div class="pt-3 text-center">
            <asp:Label ID="LblMensaje" runat="server" Text="" ForeColor="Red"></asp:Label>
            <asp:GridView ID="GdvSolicitudes" runat="server" Visible="true" CssClass="table table-hover" AutoGenerateColumns="false" OnSelectedIndexChanged="GdvSolicitudes_SelectedIndexChanged">
                <Columns>
                    <asp:TemplateField HeaderText="Seleccionar">
                        <ItemTemplate>
                            <asp:CheckBox ID="chbItem" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="idSolicitud" HeaderText="Id" />
                    <asp:BoundField DataField="estado" HeaderText="Estado" />
                    <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="apellido" HeaderText="Apellido" />
                    <asp:BoundField DataField="telefono" HeaderText="Teléfono" />
                    <asp:BoundField DataField="direccion" HeaderText="Dirección" />
                    <asp:BoundField DataField="material" HeaderText="Material" />
                    <asp:BoundField DataField="cantidad" HeaderText="Cantidad" />
                    <asp:BoundField DataField="fecha" HeaderText="Fecha" />
                    <asp:BoundField DataField="horario" HeaderText="Horario" />
                </Columns>
                <HeaderStyle CssClass="table-primary" ForeColor="Gray" />
            </asp:GridView>
        </div>
        <div class="d-flex">
            <div class="flex-wrap pr-2 pb-5">
                <asp:Button ID="BtnModificar" runat="server" Text="Modificar" CssClass="btn btn-warning" Width="100" />
            </div>
            <div class="flex-wrap pr-2 pb-5">
                <asp:Button ID="BtnEliminar" runat="server" Text="Eliminar" CssClass="btn btn-danger" Width="100" />
            </div>
        </div>
    </div>



</asp:Content>
