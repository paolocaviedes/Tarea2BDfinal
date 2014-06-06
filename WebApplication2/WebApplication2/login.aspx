<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>
<link href="StyleSheet1.css" rel="stylesheet" type="text/css" />

<html xmlns="http://www.w3.org/1999/xhtml">
<head  runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 662px; width: 1276px; margin-left: 40px;">
    
        Nombre de Usuario:
        <asp:TextBox ID="userName" runat="server" OnTextChanged="TextBox1_TextChanged1"></asp:TextBox>
        <br />
        Contraseña:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Button Cssclass="myButton" ID="Button1" runat="server" OnClick="Button1_Click" Text="Entrar" />
        <br />
        Aun no eres parte de la comunidad&nbsp;&nbsp;&nbsp;<asp:LinkButton  style="color:lightgrey" ID="Link1" runat="server" OnClick="Registrarclick" >Registrate, es gratis!</asp:LinkButton>
    
        &nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <br />
        <br />
        &nbsp;
        <table style="height: 114px; width: 184px">
            <tr>
                <asp:ListBox ID="id_categoria" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="id_categoria"></asp:ListBox>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ForoBDConnectionString %>" SelectCommand="SELECT * FROM [Categoria] WHERE ([publico] = @publico)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="True" Name="publico" Type="Boolean" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </tr>
            <tr>
                <asp:Button CssClass=myButton ID="Button2" runat="server" Text="Ver Temas" OnClick="Button2_Click1"/>


            </tr>



        </table>


        





         


            
    </div>
    </form>
</body>

</html>
<footer>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bases de Datos 2014 ---
<a id="salir" style="color:lightgrey" href="login.aspx">Salir</a>
</footer>
