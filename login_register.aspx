<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login_register.aspx.cs" Inherits="login_register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/Login_Register_Style.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="panel">
            <div class="content login">
                <div class ="switch">
                        <span id='login' class='active' >Login</span><span>/</span><span id="signup">Sign Up</span>
                    <form id="form1" runat="server">
                        <div id='email' class="input" placeholder="Email"><input type="text" /></div>
                        <div class="input" placeholder='Username'><input type="text" id='tbusename' runat="server"/></div>
                        <div class="input" placeholder='Password'><input type="text" id='tbpassword' runat="server"/></div>
                        <div id='repeat' class="input" placeholder="Repeat"><input type="text" /></div>
                        <span >Forget?</span>
                        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="button" OnClick="Button_Click" />
                    </form>
                </div>
            </div>
        </div>
    </div>

</body>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
        $('#login').click(function(){
            $('.switch span').removeClass('active');
            $(this).addClass('active');
            //点击软件变色
            $('this').parents('.content').removeClass('signup');
            $('this').parents('.content').addClass('login');

            $('form button').text('LOGIN');
        })
        $('#signup').click(function (){
            $('.switch span').removeClass('active');
            $(this).addClass('active');

            $('this').parents('.content').removeClass('login');
            $('this').parents('.content').addClass('signup');

            $('form button').text('SIGNUP');
        })
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
