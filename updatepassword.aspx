<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updatepassword.aspx.cs" Inherits="updatepassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/updatepassword.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <img src="img/bg.jpg" alt="">
        <div class="panel">
            <div class="content login">
                <div class ="switch">
                        <span id='login' class='active'>修改密码</span>
                    <form id="form1" runat="server">
                        <div class="input" placeholder='原密码'><input type="text" id='oldpassword' runat="server"/></div>
                        <div class="input" placeholder='新密码'><input type="text" id='newpassword' runat="server"/></div>
                        <div class="input" placeholder='确认密码'><input type="text" id='repeatpassword' runat="server"/></div>
                        <asp:Button ID="Button1" runat="server" Text="确认" CssClass="button" OnClick="Button_Click" />
                    </form>
                </div>
            </div>
        </div>
    </div>

</body>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
        $('.input input').on('focus',function () {
            $(this).parent().addClass('focus');
        })
        $('.input input').on('blur', function () {
            if($(this).val()=='')
            $(this).parent().removeClass('focus');
        })
    </script>
<script src="js/jquery-3.5.1.js"></script>
</html>
