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

public partial class activity : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

        //CreateButtons();

    }
    //void CreateButtons()
    //{
    //    //SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=uginetwork;Integrated Security=True");
    //    //      SqlCommand cmd = new SqlCommand("select phid from userinfo", con);
    //    //      SqlDataAdapter da = new SqlDataAdapter();
    //    //      da.SelectCommand = cmd;
    //    //      DataSet ds = new DataSet();
    //    //      da.Fill(ds, "photoinfo");
    //    //        foreach (DataRow dr in ds.Tables[0].Rows)
    //    //      { 
    //    //            string pid;
    //    //        pid = dr["phid"].ToString();
    //    //        Image img = new Image();
    //    //        img.ID = dr.ToString();
    //    //        img.ImageUrl = pid;
    //    //        //img.Height = 100px;
    //    //        //img.Width = "100";
    //    //        Panel1.Controls.Add(img);

    //    }
    }
