using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class updatepassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["userName"] != null)
            {

            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "error", "alert('请先登录登录。');window.location.href='login.aspx';", true);

            }
        }
    }
    protected void Button_Click(object sender, EventArgs e)
    {
        string oldpwd = oldpassword.Value;
        string newpwd = newpassword.Value;
        string repeatpwd = repeatpassword.Value;
        string username = Server.UrlDecode(Request.Cookies["userName"].Value);

        string selectSql = "update users set password = '" + newpwd + "' where username = '" + username + "'";

        SqlConnection connetion = new SqlConnection("Data Source =.; Initial Catalog = Web; Integrated Security = SSPI;"); //创建连接对象 

        SqlCommand command = new SqlCommand(selectSql, connetion);//定义对象并连接数据库
        command.CommandType = System.Data.CommandType.Text;

        connetion.Open(); //打开连接 
        Console.WriteLine("数据库打开");    //正常打印说明没问题，否则会抛出异常

        string selectSql2 = "select password from users where username ='" + username + "'";
        SqlCommand command2 = new SqlCommand(selectSql2, connetion);//定义对象并连接数据库

        if (string.Equals(command2.ExecuteScalar(), newpwd) == true)
        {
            if (repeatpwd == newpwd)
            {
                command.ExecuteNonQuery();
                Response.Write("<script>alert('修改成功');</script>");
                Response.Redirect("login.aspx");
            }
            else
            {
                Response.Write("<script>alert('两次密码不一致');</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('原密码不一致');</script>");
        }


        connetion.Close(); //关闭连接

    }
}