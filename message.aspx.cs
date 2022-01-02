using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class message : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        pageuser.Visible = false;

        if (!IsPostBack)
        {
            //登录变为用户名
            if (Request.Cookies["userName"] != null)
            {
                pagelogin.Text = Server.UrlDecode(Request.Cookies["userName"].Value) + "欢迎你！";
                pageuser.Visible = true;
                pagelogin.Enabled = false;
            }

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(Request.Cookies["userName"] == null)
        {
            Response.Write("<script>alert('请先登录');</script>");
        }
        else
        {
            //新建连接对象
                    SqlConnection connection = new SqlConnection();
                    //指定连接参数
                    connection.ConnectionString = "Data Source =.; Initial Catalog = Web; Integrated Security = SSPI; ";

                    Console.WriteLine("数据库打开");    //正常打印说明没问题，否则会抛出异常

                    string content = remarkEditor.Value;
                    string username = Server.UrlDecode(Request.Cookies["userName"].Value);
                    string day = DateTime.Now.ToLocalTime().ToString();

                    string insert = "insert into message(ctent,username,day) values('"+content+"','"+username+"','"+day+"')";

                    SqlCommand commond = new SqlCommand(insert, connection); //定义对象并连接数据库

                    connection.Open();//打开数据库

                    commond.ExecuteNonQuery();                           //执行插入语句

                    connection.Close();                //关闭对象并释放所占内存空间    
        
                    Response.Redirect("message.aspx");
        }
        

    }

    protected void pagelogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
       
    }
}