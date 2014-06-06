<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logintemaabierto.aspx.cs" Inherits="WebApplication2.logintemaabierto" %>

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
    <form id="form22" runat="server">
    <div style="height: 662px; width: 1276px; margin-left: 40px;">
    
        Nombre de Usuario:
        <asp:TextBox ID="userName3" runat="server" OnTextChanged="TextBox1_TextChanged1"></asp:TextBox>
        <br />
        Contraseña:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="password3" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Button Cssclass="myButton" ID="Button30" runat="server" OnClick="Button30_Click" Text="Entrar" />
        <br />
        Aun no eres parte de la comunidad&nbsp;&nbsp;&nbsp;<asp:LinkButton  style="color:lightgrey" ID="Link3" runat="server" OnClick="Registrarclick" >Registrate, es gratis!</asp:LinkButton>
    
        &nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <br />
        <br />
        &nbsp;
        <table Id="tableton3">
            <tr>Categorias</tr>
            <tr>
                <td class="auto-style3"><asp:ListBox ID="id_categoria3" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="id_categoria" Height="114px" Width="185px"></asp:ListBox>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ForoBDConnectionString %>" SelectCommand="SELECT * FROM [Categoria] WHERE ([publico] = @publico)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="True" Name="publico" Type="Boolean" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                </td>
                <td class="auto-style2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Height="114px" Width="185px">
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



                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ForoBDConnectionString %>" SelectCommand="SELECT [descripcion] FROM [Categoria] WHERE (([publico] = @publico) AND ([id_categoria] = @id_categoria))">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="True" Name="publico" Type="Boolean" />
                            <asp:SessionParameter Name="id_categoria" SessionField="id_categoria" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
&nbsp;



                </td>
                <td></td>
                <td><table Id="tableton" style="height: 84px; width: 95px">
            <tr>Nombre:</tr>
            <tr><asp:GridView ID="GridView2" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource5" BorderStyle="None" CellSpacing="2">
                <Columns>
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                    <asp:BoundField DataField="mensaje" HeaderText="mensaje" SortExpression="mensaje" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" ForeColor="White" Font-Bold="True" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
                
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ForoBDConnectionString %>" SelectCommand="SELECT [nombre], [descripcion], [mensaje] FROM [Tema] WHERE (([publico] = @publico) AND ([id_tema] = @id_tema))">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="True" Name="publico" Type="Boolean" />
                        <asp:SessionParameter Name="id_tema" SessionField="id_theme" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                
            </tr>
            <tr><asp:GridView ID="GridView3" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource6" BorderStyle="None" CellSpacing="2">
                <Columns>
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="mensaje" HeaderText="mensaje" SortExpression="mensaje" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" ForeColor="White" Font-Bold="True" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView> 
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ForoBDConnectionString %>" SelectCommand="SELECT [nombre], [mensaje] FROM [comentarios_usuario] WHERE ([id_tema] = @id_tema)">
                    <SelectParameters>
                        <asp:SessionParameter Name="id_tema" SessionField="id_theme" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </tr>




        </table></td>
            </tr>
            <tr><td class="auto-style1"><asp:Button ID="Button31" runat="server" CssClass="myButton" OnClick="Button31_Click" Text="Seleccionar" Width="185px" /></td></tr>

        </table>
        <table Id="tableton2">
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
                    <asp:ListBox CssClass="category" ID ="tema2" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="id_tema"></asp:ListBox>
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
                     <asp:Button CssClass=myButton ID="Button33" runat="server" Text="Ver Tema" OnClick="Button33_Click"/>
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
