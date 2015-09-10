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
using System.Drawing;
using System.Drawing.Drawing2D;
using System.IO;

public partial class searchprofile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["mycon"]);

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("SELECT personalinfo.ccity,personalinfo.name,personalinfo.image_id, personalinfo.maritalstatus, personalinfo.occupation, personalinfo.paddress, personalinfo.facebookid, personalinfo.emailid,CONVERT(VARCHAR(10),personalinfo.dob,103) as dob ,DATEPART(yyyy,personalinfo.dob) as year, personalinfo.sex, personalinfo.contactno FROM personalinfo INNER JOIN login ON personalinfo.userid = login.userid where personalinfo.userid='" + Request.QueryString["userid"].ToString()+ "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        lblccity.Text = ds.Tables[0].Rows[0]["ccity"].ToString();
        lblcontact.Text = ds.Tables[0].Rows[0]["contactno"].ToString();
        lbldob.Text = ds.Tables[0].Rows[0]["dob"].ToString();
        lblemailid.Text = ds.Tables[0].Rows[0]["emailid"].ToString();
        lblfbid.Text = ds.Tables[0].Rows[0]["facebookid"].ToString();
        lbloccupation.Text = ds.Tables[0].Rows[0]["occupation"].ToString();
        lblpaddress.Text = ds.Tables[0].Rows[0]["paddress"].ToString();
        lblrstatus.Text = ds.Tables[0].Rows[0]["maritalstatus"].ToString();
        lblsex.Text = ds.Tables[0].Rows[0]["sex"].ToString();
        lbldobyear.Text = ds.Tables[0].Rows[0]["year"].ToString();
        Label1.Text = ds.Tables[0].Rows[0]["name"].ToString();
        Label2.Text = ds.Tables[0].Rows[0]["dob"].ToString();
        Label3.Text = ds.Tables[0].Rows[0]["ccity"].ToString(); ;
        Image1.ImageUrl = ds.Tables[0].Rows[0]["image_id"].ToString();
    }
}