<%@ Page Title="" Language="C#" MasterPageFile="~/WebFormUsuario/PaginaMaestraUsuario.Master" AutoEventWireup="true" CodeBehind="SolicitudesUsuario.aspx.cs" Inherits="reciclemos_v2.WebFormMasterPage.Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>

        .titulo {
            font-weight: bold;
        }

        .borde {
            border-radius: 1em;
            box-shadow: 2px 2px 2px 1px rgba(0, 0, 0, 0.2);
        }

        .b {
            border-top-left-radius: 1em;
            border-top-right-radius: 1em;
        }
    </style>
    <div class="container-fluid px-5 pt-2 pb-2">
        <h4 class="text-center py-5">Formulario de retiro de materiales</h4>
        <div class="row">
            <div class="col-sm-3 p-5">
                <div class="card borde" style="width: 14rem;">
                    <div class="card-img-top text-center py-2 b" style="background-color: #d2e69c;">
                        <img src="../Imagenes/00botella.png" width="100" height="100" />
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Plástico N°1 PET</h5>
                        <p class="card-text">Botellas de bebida, botella de agua mineral y botellas de aceite</p>
                        <asp:Label ID="Label5" runat="server" Text="Cantidad:  "></asp:Label>
                        <asp:TextBox ID="TextBox1" type="number" runat="server" Width="60" placeholder="0" max="500" min="0"></asp:TextBox>
                    </div>
                </div>

            </div>
            <div class="col-sm-3 p-5">
            </div>
            <div class="col-sm-3 p-5">
            </div>
            <div class="col-sm-3 p-5">
            </div>
        </div>
    </div>
    <div class="text-center pt-0 pb-5">
        <asp:Button ID="Button1" runat="server" Text="Solicitar Retiro" CssClass="btn btn-primary" />
    </div>
</asp:Content>
