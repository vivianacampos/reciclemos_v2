<%@ Page Title="" Language="C#" MasterPageFile="~/WebFormEmpresa/PaginaMaestraEmpresa.Master" AutoEventWireup="true" CodeBehind="MensajesEmpresa.aspx.cs" Inherits="reciclemos_v2.WebFormEmpresa.MensajesEmpresa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container pt-5">
        <h1 class="display-4 text-center" style="font-size: 2.5rem; padding-bottom: 2rem;">Mensajes Clientes</h1>
        <div class="row d-flex">
            <div class="col-2 d-flex flex-wrap">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                    <asp:ListItem Value="1">Prospectos</asp:ListItem>
                    <asp:ListItem Value="2">Mensajes</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-2 d-flex flex-wrap">
                <asp:Button ID="BtnFiltrar" runat="server" Text="Filtrar" CssClass="btn btn-primary" Width="100" />
            </div>
        </div>
        <div class="row pt-4">
            <div class="col-2">
                <asp:GridView ID="GdvMensajes" runat="server" CssClass="table table-hover" >
                    <Columns>
                        <asp:CheckBoxField HeaderText="Seleccionar" Text="ok" />
                    </Columns>
                    <EditRowStyle CssClass="table-striped" />
                    <HeaderStyle CssClass="table-primary" ForeColor="White"/>
                    <RowStyle CssClass="table table-bordered"/>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
