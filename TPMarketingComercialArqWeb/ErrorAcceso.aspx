<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ErrorAcceso.aspx.cs" Inherits="TPMarketingComercialArqWeb.ErrorAcceso" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Acceso Denegado</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Acceso Denegado</h2>
        <p>No tenés permisos para acceder a esta sección.</p>
        <asp:HyperLink runat="server" NavigateUrl="~/" Text="Volver al inicio" />
    </form>
</body>
</html>
