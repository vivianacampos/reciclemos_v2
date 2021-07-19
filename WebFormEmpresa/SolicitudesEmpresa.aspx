<%@ Page Title="" Language="C#" MasterPageFile="~/WebFormEmpresa/PaginaMaestraEmpresa.Master" AutoEventWireup="true" CodeBehind="SolicitudesEmpresa.aspx.cs" Inherits="reciclemos_v2.WebFormEmpresa.SolicitudesEmpresa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2 class="py-5">Solicitudes de Retiro</h2>
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
        <div class="row">
            <div class="pt-3 text-center col-12">
                <asp:GridView ID="GdvSolicitudes" runat="server" CssClass="table table-hover" AutoGenerateColumns="false">
                    <Columns>
                        <asp:TemplateField HeaderText="Seleccionar">
                            <ItemTemplate>
                                <asp:CheckBox ID="chbItem" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="idSolicitud" HeaderText="Id" />
                        <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                        <asp:BoundField DataField="apellido" HeaderText="Apellido" />
                        <asp:BoundField DataField="direccion" HeaderText="Dirección" />
                        <asp:BoundField DataField="fecha" HeaderText="Fecha" />
                        <asp:BoundField DataField="horario" HeaderText="Horario" />
                        <asp:BoundField DataField="cantidad" HeaderText="Cantidad" />
                        <asp:BoundField DataField="material" HeaderText="Material" />
                        <asp:BoundField DataField="estado" HeaderText="Estado" />
                    </Columns>
                    <HeaderStyle CssClass="table-primary" ForeColor="Gray" />
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
