<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="calculadora.WebForm1" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<link rel="stylesheet" type="text/css" href="ESTILO.css" />

    <title>Calculadora </title>
</head>
<body>
    <form id="form1" runat="server">
        <h1 class="titulo-calculadora">Calculadora </h1>
        <p>Escolha uma operação e insira os números:</p>

        <label for="txtNumero1">Número 1:</label>
        <asp:TextBox ID="txtNumero1" runat="server" CssClass="form-control" /><br />

        <label for="txtNumero2"  class="label">Número 2:</label>
        <asp:TextBox ID="txtNumero2" runat="server" CssClass="form-control" /><br />

        <label for="ddlOperacao">Operação:</label>
        <asp:DropDownList ID="ddlOperacao" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlOperacao_SelectedIndexChanged">
            <asp:ListItem Text="Somar" Value="somar" />
            <asp:ListItem Text="Subtrair" Value="subtrair" />
            <asp:ListItem Text="Multiplicar" Value="multiplicar" />
            <asp:ListItem Text="Dividir" Value="dividir" />
        </asp:DropDownList><br />

        <asp:Button ID="btnCalcular" runat="server" Text="Calcular" OnClick="btnCalcular_Click" CssClass="btn btn-primary" /><br />

        <label for="lblResultado">Resultado:</label>
        <asp:Label ID="lblResultado" runat="server" CssClass="form-control" />

    </form>
</body>
</html>

