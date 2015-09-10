using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class changepassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["mycon"]);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string s1;
        s1 = Session["uid"].ToString();
        SqlCommand com = new SqlCommand("update login set password=@pass where userid=@uid", con);
        com.Parameters.Add("@uid", SqlDbType.VarChar).Value = s1;
        com.Parameters.Add("@pass", SqlDbType.VarChar).Value =txtCNewpass.Text;
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
       // Label1.Text = "Your New Password Has been changed Successfully";

    }
}
