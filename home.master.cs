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

public partial class home : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["mycon"]);

    protected void Page_Load(object sender, EventArgs e)
    {
       // shownews();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string uid;
        SqlCommand com2 = new SqlCommand("select * from login where username=@username and password=@pass", con);
        com2.Parameters.Add("@username", SqlDbType.VarChar).Value = TextBox1.Text;
        com2.Parameters.Add("@pass", SqlDbType.VarChar).Value = TextBox2.Text;
        SqlDataAdapter da1 = new SqlDataAdapter();
        DataSet ds1 = new DataSet();
        da1.SelectCommand = com2;
        da1.Fill(ds1);
        if (ds1.Tables[0].Rows.Count == 0)
        {
            Label1.Text = "Invalid Username or Password ";
           // HyperLink1.Visible = true;
        }

        else
        {
            string dob;
            Session["uid"] = ds1.Tables[0].Rows[0][0].ToString();
            uid = Session["uid"].ToString();

            //Session["name"] = TextBox1.Text;
            //Session["branch"] = ds1.Tables[0].Rows[0][6].ToString();
            //Session["branchname"] = ds1.Tables[0].Rows[0][7].ToString();
            SqlCommand com3 = new SqlCommand("select * from personalinfo where userid='" + uid + "' ", con);
            SqlDataAdapter da2 = new SqlDataAdapter();
            DataSet ds2 = new DataSet();
            da2.SelectCommand = com3;
            da2.Fill(ds2);
            dob = ds2.Tables[0].Rows[0]["dob"].ToString();
            Session["pid"] = ds2.Tables[0].Rows[0][0].ToString();
            Session["uname"] = ds1.Tables[0].Rows[0][1].ToString();
            Session["name"] = ds2.Tables[0].Rows[0][2].ToString();
            Session["picid"] = ds2.Tables[0].Rows[0][13].ToString();
            Session["birth"]=dob.Substring(0,9);
            Response.Redirect("userhome.aspx");
        }
    }
    void shownews()
    {
        //SqlCommand com3 = new SqlCommand("select * from login", con);
        //SqlDataAdapter da2 = new SqlDataAdapter();
        //DataSet ds2 = new DataSet();
        //da2.SelectCommand = com3;
        //da2.Fill(ds2);
        //int n = ds2.Tables[0].Rows.Count;
        //for (int i = 0; i < n; i++)
        //{
        //    Label lb = new Label();
        //    lb.ID = i.ToString();
        //    lb.Text =i.ToString()+": " +ds2.Tables[0].Rows[i][1].ToString();
        //    Response.Write("<html><body><br/></body></html>");
        //    Panel1.Controls.Add(lb);
        //}

    }
}
