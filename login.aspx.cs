using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;



public partial class login : System.Web.UI.Page
{
        
        protected void Page_Load(object sender, EventArgs e)
        {
            HyperLink1.NavigateUrl = "register.aspx";

         }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = tbusename.Text;
            string pwd = tbpassword.Text;
            string selectSql = "select count(*) from users where username='" + name + "' and password='" + pwd + "'";

            SqlConnection connetion = new SqlConnection("Data Source =.; Initial Catalog = Web; Integrated Security = SSPI;"); //创建连接对象 

            SqlCommand command = new SqlCommand(selectSql, connetion);//定义对象并连接数据库
            command.CommandType = System.Data.CommandType.Text;

            connetion.Open(); //打开连接 
            Console.WriteLine("数据库打开");    //正常打印说明没问题，否则会抛出异常


        if (Convert.ToInt64(command.ExecuteScalar()) > 0)//满足用户名与密码一致，进入下一个界面
        {
            Response.Cookies["userName"].Value = Server.UrlEncode(name);
            Page.ClientScript.RegisterStartupScript(this.GetType(), "error", "alert('登录成功！');window.location.href='article.aspx';", true);


        }
        else
        {
            Response.Write("<script>alert('登录失败');</script>");
        }
            connetion.Close(); //关闭连接
        }


}