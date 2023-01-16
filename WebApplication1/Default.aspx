<%@ Page Async="true" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 622px;
        }
        .auto-style3 {
            width: 622px;
            height: 30px;
        }
        .auto-style4 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        From</td>
                    <td>
                        To</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Value="de">German</asp:ListItem>
                            <asp:ListItem Value="en">English</asp:ListItem>
                            <asp:ListItem Value="tr">Turkish</asp:ListItem>
                            <asp:ListItem Value="sq">Albanian</asp:ListItem>
                            <asp:ListItem Value="ar">Arabic</asp:ListItem>
                            <asp:ListItem Value="el">Greek</asp:ListItem>
                            <asp:ListItem Value="id">Indonesian</asp:ListItem>
                            <asp:ListItem Value="it">Italian</asp:ListItem>
                            <asp:ListItem Value="ko">Korean</asp:ListItem>
                            <asp:ListItem Value="mk">Macedonian</asp:ListItem>
                            <asp:ListItem Value="nb">Norwegian</asp:ListItem>
                            <asp:ListItem Value="pl">Polish</asp:ListItem>
                            <asp:ListItem Value="pt">Portuguese</asp:ListItem>
                            <asp:ListItem Value="es">Spanish</asp:ListItem>
                            <asp:ListItem Value="th">Thai</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem Value="en">English</asp:ListItem>
                            <asp:ListItem Value="de">German</asp:ListItem>
                            <asp:ListItem Value="tr">Turkish</asp:ListItem>
                            <asp:ListItem Value="sq">Albanian</asp:ListItem>
                            <asp:ListItem Value="ar">Arabic</asp:ListItem>
                            <asp:ListItem Value="el">Greek</asp:ListItem>
                            <asp:ListItem Value="id">Indonesian</asp:ListItem>
                            <asp:ListItem Value="it">Italian</asp:ListItem>
                            <asp:ListItem Value="ko">Korean</asp:ListItem>
                            <asp:ListItem Value="mk">Macedonian</asp:ListItem>
                            <asp:ListItem Value="nb">Norwegian</asp:ListItem>
                            <asp:ListItem Value="pl">Polish</asp:ListItem>
                            <asp:ListItem Value="pt">Portuguese</asp:ListItem>
                            <asp:ListItem Value="es">Spanish</asp:ListItem>
                            <asp:ListItem Value="th">Thai</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Speech" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Translate" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
