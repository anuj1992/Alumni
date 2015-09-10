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

public partial class use : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=uginetwork;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from userinfo", con);
        DataSet ds = new DataSet();
        DataRow dr;
        da.Fill(ds);
        int n = ds.Tables[0].Rows.Count;
        string str = ds.Tables[0].Rows[0][4].ToString();

        Image1.ImageUrl ="'+str+'";
            
    }
}
