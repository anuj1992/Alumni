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

public partial class adminlogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["mycon"]);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string role;
        SqlCommand com2 = new SqlCommand("select * from login where username=@username and password=@pass and role='admin'", con);
        com2.Parameters.Add("@username", SqlDbType.VarChar).Value =txtName.Text;
        com2.Parameters.Add("@pass", SqlDbType.VarChar).Value =txtPassword.Text;
        SqlDataAdapter da1 = new SqlDataAdapter();
        DataSet ds1 = new DataSet();
        da1.SelectCommand = com2;
        da1.Fill(ds1);
        //role=ds1.Tables[0].Rows[0][3].ToString();

        if (ds1.Tables[0].Rows.Count == 0 )
        {
            
           lblError.Text = "Invalid Username or Password ";
            // HyperLink1.Visible = true;
        }

        else
        {
            Session["uid"] = ds1.Tables[0].Rows[0][0].ToString();
           // uid = Session["uid"].ToString();

            //Session["name"] = TextBox1.Text;
            //Session["branch"] = ds1.Tables[0].Rows[0][6].ToString();
            //Session["branchname"] = ds1.Tables[0].Rows[0][7].ToString();
            //SqlCommand com3 = new SqlCommand("select * from personalinfo where userid='" + uid + "' ", con);
            //SqlDataAdapter da2 = new SqlDataAdapter();
            //DataSet ds2 = new DataSet();
            //da2.SelectCommand = com3;
            //da2.Fill(ds2);
            //Session["pid"] = ds2.Tables[0].Rows[0][0].ToString();
            Session["aname"] = ds1.Tables[0].Rows[0][1].ToString();
            Response.Redirect("adminhome.aspx");
        }

    }
}
