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

public partial class userRegistration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["mycon"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            day();
            year();
            month();
        }
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string username,uname,upass,userid,personalid,fullname;
        int n1,n;
        SqlCommand com = new SqlCommand("select * from login", con);
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        da.SelectCommand = com;
        da.Fill(ds);
        n1 = ds.Tables[0].Rows.Count;
        if (n1 == 0)
        {
            userid = "u0001";
        }
        else
        {
           userid  = "u000" + (n1 + 1).ToString();
        }
        SqlCommand com3 = new SqlCommand("select * from personalinfo", con);
        SqlDataAdapter da1 = new SqlDataAdapter();
        DataSet ds1 = new DataSet();
        da1.SelectCommand = com3;
        da1.Fill(ds1);
        n = ds1.Tables[0].Rows.Count;
        if (n == 0)
        {
            personalid = "p0001";
        }
        else
        {
            personalid = "p000" + (n + 1).ToString();
        }       
        uname = txtFname.Text;
        fullname = txtFname.Text + " " + txtLname.Text;
        username = uname.Substring(0, 4);
        upass = username + ddlYear.SelectedItem.Text+"@";
        SqlCommand com2 = new SqlCommand("insert into login (username,userid,password,role,email)values (@username,@userid,@userpass,@role,@email)", con);
        SqlCommand com1 = new SqlCommand("insert into personalinfo (pid,userid,name,emailid,sex,dob,dor)values(@sid,@userid,@name,@email,@sex,@DOB,@dor)", con);
        com2.Parameters.Add("@username", SqlDbType.VarChar).Value = username; ;
        com2.Parameters.Add("@userid", SqlDbType.VarChar).Value = userid;
        com2.Parameters.Add("@userpass", SqlDbType.VarChar).Value = upass;
        com2.Parameters.Add("@role", SqlDbType.VarChar).Value = "user";
        com2.Parameters.Add("@email", SqlDbType.VarChar).Value = txtEmail.Text;
        com1.Parameters.Add("@sid", SqlDbType.VarChar).Value = personalid;
        com1.Parameters.Add("@userid", SqlDbType.VarChar).Value = userid;
        com1.Parameters.Add("@name", SqlDbType.VarChar).Value =fullname.ToUpper();
        com1.Parameters.Add("@email", SqlDbType.VarChar).Value =txtEmail.Text;
        com1.Parameters.Add("@sex", SqlDbType.VarChar).Value =ddlSex.SelectedItem.Text;
        com1.Parameters.Add("@dor", SqlDbType.DateTime).Value = DateTime.Now;
        com1.Parameters.Add("@DOB", SqlDbType.DateTime).Value = ddlmonth.SelectedItem.Text + "/" +ddlDay.SelectedItem.Text + "/" + ddlYear.SelectedItem.Text;
       // com1.Parameters.Add("@dob", SqlDbType.DateTime).Value = DateTime.Now;


        con.Open();
        com2.ExecuteNonQuery();
        com1.ExecuteNonQuery();
        con.Close();
       // lblError.Text = "Dear " +fullname.ToUpper() + "you registration has successfully done";
        Session["uname"] = username;
        Session["uid"] = userid;
        Response.Redirect("updateprofile.aspx");




        //Response.Write(username+" "+upass);
    }
    private void month()
    {
        for (int i = 1; i <= 12; i++)
        {
           ddlmonth.Items.Add(i.ToString());

        }
    }
    private void year()
    {
        for (int i = 1970; i <= 2050; i++)
        {
           ddlYear.Items.Add(i.ToString());

        }
    }
    private void day()
    {
        for (int i = 1; i <= 31; i++)
        {
           ddlDay.Items.Add(i.ToString());

        }
    }
}
