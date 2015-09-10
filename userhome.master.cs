using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class userhome : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string uid;
        //uid = Session["uid"].ToString();
        if (!IsPostBack)
           
        {
            if (Session["uname"] != null)
            {
                Label1.Text = "Welcome: " + Session["uname"].ToString();
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("index.aspx");
    }
}
