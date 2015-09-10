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

public partial class registereduser : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["mycon"]);

    protected void Page_Load(object sender, EventArgs e)
    {
        display1();
    }
    void display1()
    {

        //str = Session["branch"].ToString();
        //str1 = Session["branchname"].ToString();
        SqlDataAdapter da = new SqlDataAdapter("SELECT login.userid, login.username, login.password,login.role, login.email, personalinfo.name, personalinfo.sex FROM login INNER JOIN personalinfo ON login.userid = personalinfo.userid", con);
       DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        foreach (GridViewRow gvRow in GridView1.Rows)
        {
            if (gvRow.Cells[6].Text == "admin")
            {
                gvRow.Cells[7].Text = "Already as admin";
                //gvRow.
            }

        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string userid =GridView1.SelectedRow.Cells[0].Text;
        //string sid = Session["exam"].ToString();
        SqlCommand com2 = new SqlCommand("update login set role='admin' where userid='"+userid+"'", con);
        //SqlDataAdapter da1 = new SqlDataAdapter();
        //DataSet ds1 = new DataSet();
        //da1.UpdateCommand = com2;
        //da1.Fill(ds1);
        con.Open();
        com2.ExecuteNonQuery();
        con.Close();
        //GridView1.SelectedRow.Cells[7].Text = "Already as Admin";

           // Response.Write("<script language='javascript'>alert('Currently you cannot take the test.');</script>");
        display1();
       
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string userid = GridView1.SelectedRow.Cells[0].Text;
        //string sid = Session["exam"].ToString();
        SqlCommand com2 = new SqlCommand("update login set role='admin' where userid='" + userid + "'", con);
        //SqlDataAdapter da1 = new SqlDataAdapter();
        //DataSet ds1 = new DataSet();
        //da1.UpdateCommand = com2;
        //da1.Fill(ds1);
        con.Open();
        com2.ExecuteNonQuery();
        con.Close();

        // Response.Write("<script language='javascript'>alert('Currently you cannot take the test.');</script>");
        display1();
    }
}
