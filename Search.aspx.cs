using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Search : System.Web.UI.Page
{
    SqlConnection ora = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=ramanveer;Integrated Security=True");
    SqlCommand cmd;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        String q = Request.Params[0];
        ora.Open();
        cmd = new SqlCommand("select * from personalinfo where name like '%" + q + "%' or emailid like '%" + q + "%' or ccity like '%" + q + "%'" , ora);
        try
        {
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                string path,url,uid;
               
                string media = dr.GetValue(13).ToString();
                string username = dr.GetValue(2).ToString();
                string email = dr.GetValue(6).ToString();
                string country = dr.GetValue(16).ToString();
                uid=dr.GetValue(1).ToString();
                path = media.Substring(2);

                url = "searchprofile.aspx?userid="+uid;
                 Response.Write("<a href = '" + url +"'><div class='display_box' align='left'><img src='" + path + "' style='width:50px; height:50px; float:left; margin-right:6px;' /><span class='name'>" + username + "</span>&nbsp;<br/>" + email + "<br/><span style='font-size:9px; color:#999999'>" + country + "</span></div></a>");
               // Response.Write("<a href = '" + url +"'></a>");
            }

        }
        catch (Exception ex)
        {

        }
        ora.Close();
    }
}