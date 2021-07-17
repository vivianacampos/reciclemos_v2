<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prueba.aspx.cs" Inherits="reciclemos_v2.WebFormUsuario.Prueba" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../resources/bootstrap-icons-1.5.0/fonts/bootstrap-icons.woff" rel="stylesheet" />
</head>
<body class="fondo">
    <style>
        .fondo {
            background-color: bisque;
        }

        #fd {
            position: fixed;
            top: 0px;
            left: 0px;
            bottom: 0px;
            right: 0px;
            padding: 0px;
            margin: 0px;
            background-color: black;
            opacity: 0.8;
            overflow: hidden;
            z-index: 1;
        }

        #imagen {
            align-content: center;
            height: 20%;
            width: 20%;
            z-index: 2;
            background-color: gray;
        }

    </style>
    <form runat="server">
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Button ID="Button1" runat="server" Text="Button" CssClass="btn btn-primary" OnClick="Button1_Click" />
                <ajaxToolkit:ModalPopupExtender ID="Button1_ModalPopupExtender" runat="server" BehaviorID="Button1_ModalPopupExtender" PopupControlID="UpdateProgress1" TargetControlID="Button1">
                </ajaxToolkit:ModalPopupExtender>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
            <ProgressTemplate>
                <div id="fd">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Confirmación</h5>
                                <asp:ImageButton ID="ImageButton1" runat="server" data-bs-dismiss="modal" ImageUrl="~/resources/bootstrap-icons-1.5.0/x-lg.svg" />
                            </div>
                            <div class="modal-body text-center">
                                <asp:Label ID="Label2" runat="server" Text="Mensaje enviado" ForeColor="Green"></asp:Label>
                            </div>
                            <div class="modal-footer">
                                <asp:Button ID="Button2" runat="server" Text="Cerrar" class="btn btn-primary" data-bs-dismiss="modal" />
                            </div>
                        </div>
                    </div>
                </div>
            </ProgressTemplate>
        </asp:UpdateProgress>

    </form>
</body>
</html>
