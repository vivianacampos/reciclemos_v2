<%@ Page Title="" Language="C#" MasterPageFile="~/WebFormEmpresa/PaginaMaestraEmpresa.Master" AutoEventWireup="true" CodeBehind="ProspectosEmpresa.aspx.cs" Inherits="reciclemos_v2.WebFormEmpresa.MensajesEmpresa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container pt-5">
        <h1 class="display-4 text-center" style="font-size: 2.5rem; padding-bottom: 2rem;">Mensajes Prospectos</h1>
        <div class="row d-flex">
            <div class="col-2 d-flex flex-wrap">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                    <asp:ListItem Value="1">Pendientes</asp:ListItem>
                    <asp:ListItem Value="9">Finalizado</asp:ListItem>
                    <asp:ListItem Selected="True">Todos</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-2 d-flex flex-wrap">
                <asp:Button ID="BtnFiltrar" runat="server" Text="Filtrar" CssClass="btn btn-primary" Width="100" />
            </div>
        </div>
        <div class="row pt-4">
            <div class="col-12">
                <asp:GridView ID="GdvMensajes" runat="server" CssClass="table table-hover" AutoGenerateColumns="false">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="chbItem" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="idProspecto" HeaderText="Id" />
                        <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                        <asp:BoundField DataField="correo" HeaderText="Correo" />
                        <asp:BoundField DataField="telefono" HeaderText="Teléfono" />
                        <asp:BoundField DataField="mensaje" HeaderText="Mensaje" />
                        <asp:BoundField DataField="estado" HeaderText="Estado" />
                    </Columns>
                    <HeaderStyle CssClass="table-primary"/>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
