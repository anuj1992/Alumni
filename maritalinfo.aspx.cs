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

public partial class maritalinfo : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["mycon"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        day();
        year();
        month();
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        int n1;
        string maritalid,pid;
        pid = Session["pid"].ToString();
        SqlCommand com = new SqlCommand("select * from maritalinfo", con);
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        da.SelectCommand = com;
        da.Fill(ds);
        n1 = ds.Tables[0].Rows.Count;
        if (n1 == 0)
        {
            maritalid = "m0001";
        }
        else
        {
            maritalid = "m000" + (n1 + 1).ToString();
        }
        SqlCommand cmd = new SqlCommand("select * from maritalinfo where pid=@pid", con);
        cmd.Parameters.Add("@pid", SqlDbType.VarChar).Value = pid;
        SqlDataAdapter da2 = new SqlDataAdapter();
        DataSet ds2 = new DataSet();
        da2.SelectCommand = cmd;
        da2.Fill(ds2);
        if (ds2.Tables[0].Rows.Count == 0)
        {


            SqlCommand com1 = new SqlCommand("insert into maritalinfo (mid,pid,spousename,spouseoccupation,doa,spousedob,childrens)values(@mid,@pid,@spousename,@spouseoccupation,@doa,@spousedob,@childrens)", con);
            com1.Parameters.Add("@mid", SqlDbType.VarChar).Value = maritalid;
            com1.Parameters.Add("@pid", SqlDbType.VarChar).Value = Session["pid"].ToString();
            com1.Parameters.Add("@spousename", SqlDbType.VarChar).Value = txtNameSpouse.Text;
            com1.Parameters.Add("@spouseoccupation", SqlDbType.VarChar).Value = ddlOccupation.SelectedItem.Text;
            com1.Parameters.Add("@doa", SqlDbType.VarChar).Value = ddlDD.SelectedItem.Text + "/" + ddlMM.SelectedItem.Text + "/" + ddlYYYY.SelectedItem.Text;
            com1.Parameters.Add("@childrens", SqlDbType.VarChar).Value = ddlChildren.SelectedItem.Text;

            com1.Parameters.Add("@spousedob", SqlDbType.VarChar).Value = ddlDay.SelectedItem.Text + "/" + ddlMonth.SelectedItem.Text + "/" + ddlYear.SelectedItem.Text;
            con.Open();
            // com2.ExecuteNonQuery();
            com1.ExecuteNonQuery();
            con.Close();
        }
        else
        {
            SqlCommand com1 = new SqlCommand("update maritalinfo set spousename=@spousename,spouseoccupation=@spouseoccupation,doa=@doa,childrens=@childrens where pid=@pid", con);
           // com1.Parameters.Add("@mid", SqlDbType.VarChar).Value = maritalid;
            com1.Parameters.Add("@pid", SqlDbType.VarChar).Value = Session["pid"].ToString();
            com1.Parameters.Add("@spousename", SqlDbType.VarChar).Value = txtNameSpouse.Text;
            com1.Parameters.Add("@spouseoccupation", SqlDbType.VarChar).Value = ddlOccupation.SelectedItem.Text;
            com1.Parameters.Add("@doa", SqlDbType.VarChar).Value = ddlDD.SelectedItem.Text + "/" + ddlMM.SelectedItem.Text + "/" + ddlYYYY.SelectedItem.Text;
            com1.Parameters.Add("@childrens", SqlDbType.VarChar).Value = ddlChildren.SelectedItem.Text;

            com1.Parameters.Add("@spousedob", SqlDbType.VarChar).Value = ddlDay.SelectedItem.Text + "/" + ddlMonth.SelectedItem.Text + "/" + ddlYear.SelectedItem.Text;
            con.Open();
            // com2.ExecuteNonQuery();
            com1.ExecuteNonQuery();
            con.Close();
        }


    }
    private void month()
    {
        for (int i = 1; i <= 12; i++)
        {
            ddlMonth.Items.Add(i.ToString());
           ddlMM.Items.Add(i.ToString());

        }
    }
    private void year()
    {
        for (int i = 1970; i <= 2050; i++)
        {
            ddlYear.Items.Add(i.ToString());
           ddlYYYY.Items.Add(i.ToString());

        }
    }
    private void day()
    {
        for (int i = 1; i <= 31; i++)
        {
            ddlDay.Items.Add(i.ToString());
           ddlDD.Items.Add(i.ToString());

        }
    }
}
