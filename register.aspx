<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>login</title>
    <link href="css/Register_Style.css" rel="stylesheet" />
</head>
<body>
    <div class="bigbox">
        <form id="form1" runat="server">
            <div>
                <h1>Register</h1>
                <table>
                    <tr>
                        <td class="input">用户名：</td>
                        <td class="input">
                            <asp:TextBox ID="tbusername" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="input">密码:</td>
                        <td class="input">
                            <asp:TextBox ID="tbpassword" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="input">邮箱:</td>
                        <td class="input">
                            <asp:TextBox ID="tbemail" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="input">电话:</td>
                        <td class="input">
                            <asp:TextBox ID="tbphone" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="input">性别:</td>
                        <td class="input">
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem Value="男">男</asp:ListItem>
                                <asp:ListItem Value="女">女</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="input"></td>
                        <td class="input">
                            <asp:Button ID="Button1" runat="server" Text="注册" OnClick="Button1_Click" CssClass="button" />
                        </td>
                    </tr>
                </table>
                <div id="inf" runat="server"></div>
            </div>
        </form>
    </div>

</body>
</html>
