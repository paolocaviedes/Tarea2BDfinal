<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logintema.aspx.cs" Inherits="WebApplication2.login2" %>

<!DOCTYPE html>
<link href="StyleSheet1.css" rel="stylesheet" type="text/css" />

<html xmlns="http://www.w3.org/1999/xhtml">
<head  runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 186px;
        }
        .auto-style2 {
            width: 180px;
            height: 114px;
        }
        .auto-style3 {
            width: 186px;
            height: 114px;
        }
    </style>
</head>
<body>
    <form id="form11" runat="server">
    <div style="height: 662px; width: 1276px; margin-left: 40px;">
    
        Nombre de Usuario:
        <asp:TextBox ID="userName2" runat="server" OnTextChanged="TextBox1_TextChanged1"></asp:TextBox>
        <br />
        Contraseña:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="password2" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Button Cssclass="myButton" ID="Button11" runat="server" OnClick="Button11_Click" Text="Entrar" />
        <br />
        Aun no eres parte de la comunidad&nbsp;&nbsp;&nbsp;<asp:LinkButton  style="color:lightgrey" ID="Link2" runat="server" OnClick="Registrarclick" >Registrate, es gratis!</asp:LinkButton>
    
        &nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <br />
        <br />
        &nbsp;
        <table>
            <tr id="titulo1">Categorias</tr>
            <tr>
                <td class="auto-style3"><asp:ListBox ID="id_categoria2" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="id_categoria" Height="114px" Width="185px"></asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ForoBDConnectionString %>" SelectCommand="SELECT * FROM [Categoria] WHERE ([publico] = @publico)">
            <SelectParameters>
                <asp:Parameter DefaultValue="True" Name="publico" Type="Boolean" />
            </SelectParameters>
        </asp:SqlDataSource></td>
                <td class="auto-style2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Height="114px" Width="185px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>



                </td>
            </tr>
            <tr><td class="auto-style1"><asp:Button ID="Button22" runat="server" CssClass="myButton" OnClick="Button22_Click" Text="Seleccionar" Width="185px" /></td></tr>
            </table>
        <table >
            <tr id="titulo1">Temas</tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ForoBDConnectionString %>" SelectCommand="SELECT [descripcion] FROM [Categoria] WHERE (([id_categoria] = @id_categoria) AND ([publico] = @publico))">
                        <SelectParameters>
                            <asp:SessionParameter Name="id_categoria" SessionField="id_categoria" Type="Int32" />
                            <asp:Parameter DefaultValue="True" Name="publico" Type="Boolean" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ListBox CssClass="category" ID ="tema" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="id_tema"></asp:ListBox>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ForoBDConnectionString %>" SelectCommand="SELECT * FROM [Tema] WHERE (([publico] = @publico) AND ([id_categoria] = @id_categoria))">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="True" Name="publico" Type="Boolean" />
                                <asp:SessionParameter Name="id_categoria" SessionField="id_categoria" Type="Int32" />
                            </SelectParameters>
                    </asp:SqlDataSource>



                </td>

            </tr>
            <tr>

                <td>
                     <asp:Button CssClass=myButton ID="Button23" runat="server" Text="Ver Tema" OnClick="Button23_Click"/>
                </td>

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
