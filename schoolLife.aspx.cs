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

public partial class schoolLife : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["mycon"]);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        int n1;
        string otherid, pid;
        pid = Session["pid"].ToString();
        SqlCommand com = new SqlCommand("select * from school_life", con);
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        da.SelectCommand = com;
        da.Fill(ds);
        n1 = ds.Tables[0].Rows.Count;
        if (n1 == 0)
        {
            otherid = "SCH0001";
        }
        else
        {
            otherid = "SCH000" + (n1 + 1).ToString();
        }
        SqlCommand cmd = new SqlCommand("select * from school_life where pid=@pid", con);
        cmd.Parameters.Add("@pid", SqlDbType.VarChar).Value = pid;
        SqlDataAdapter da2 = new SqlDataAdapter();
        DataSet ds2 = new DataSet();
        da2.SelectCommand = cmd;
        da2.Fill(ds2);
        if (ds2.Tables[0].Rows.Count == 0)
        {


            SqlCommand com1 = new SqlCommand("insert into school_life (slid,pid,days_as_student,raman_journey,funniest_moment,embrassing_moment,best_pals,favourite_faculty,favourite_spot,time_pass,life_journey)values(@slid,@pid,@days_as_student,@raman_journey,@funniest_moment,@embrassing_moment,@best_pals,@favourite_faculty,@favourite_spot,@time_pass,@life_journey)", con);
            com1.Parameters.Add("@slid", SqlDbType.VarChar).Value = otherid;
            com1.Parameters.Add("@pid", SqlDbType.VarChar).Value = Session["pid"].ToString();
            com1.Parameters.Add("@days_as_student", SqlDbType.VarChar).Value =txtdaysAsStudent.Text;
            com1.Parameters.Add("@raman_journey", SqlDbType.VarChar).Value =txtRamanJourney.Text;
            com1.Parameters.Add("@funniest_moment", SqlDbType.VarChar).Value =txtFunniestMoment.Text;
            com1.Parameters.Add("@embrassing_moment", SqlDbType.VarChar).Value =txtEmbrassingMoment.Text;
            com1.Parameters.Add("@best_pals", SqlDbType.VarChar).Value =txtBestPals.Text;
            com1.Parameters.Add("@favourite_faculty", SqlDbType.VarChar).Value =txtFavFaculty.Text;
            com1.Parameters.Add("@favourite_spot", SqlDbType.VarChar).Value =txtFavSpot.Text;
            com1.Parameters.Add("@time_pass", SqlDbType.VarChar).Value ="Text";
            com1.Parameters.Add("@life_journey", SqlDbType.VarChar).Value =txtSchoolJourney.Text;
            con.Open();
            // com2.ExecuteNonQuery();
            com1.ExecuteNonQuery();
            con.Close();
        }
        else
        {
            //SqlCommand com1 = new SqlCommand("update maritalinfo set spousename=@spousename,spouseoccupation=@spouseoccupation,doa=@doa,childrens=@childrens where pid=@pid", con);
            SqlCommand com1 = new SqlCommand("update school_life set days_as_student=@days_as_student,raman_journey=@raman_journey,funniest_moment=@funniest_moment,embrassing_moment=@embrassing_moment,best_pals=@best_pals,favourite_faculty=@favourite_faculty,favourite_spot=@favourite_spot,time_pass=@time_pass,life_journey=@life_journey where pid=@pid", con);
            //com1.Parameters.Add("@oid", SqlDbType.VarChar).Value = otherid;
            //com1.Parameters.Add("@slid", SqlDbType.VarChar).Value = schoolid;
            com1.Parameters.Add("@pid", SqlDbType.VarChar).Value = Session["pid"].ToString();
            com1.Parameters.Add("@days_as_student", SqlDbType.VarChar).Value = txtdaysAsStudent.Text;
            com1.Parameters.Add("@raman_journey", SqlDbType.VarChar).Value = txtRamanJourney.Text;
            com1.Parameters.Add("@funniest_moment", SqlDbType.VarChar).Value = txtFunniestMoment.Text;
            com1.Parameters.Add("@embrassing_moment", SqlDbType.VarChar).Value = txtEmbrassingMoment.Text;
            com1.Parameters.Add("@best_pals", SqlDbType.VarChar).Value = txtBestPals.Text;
            com1.Parameters.Add("@favourite_faculty", SqlDbType.VarChar).Value = txtFavFaculty.Text;
            com1.Parameters.Add("@favourite_spot", SqlDbType.VarChar).Value = txtFavSpot.Text;
            com1.Parameters.Add("@time_pass", SqlDbType.VarChar).Value = "Text";
            com1.Parameters.Add("@life_journey", SqlDbType.VarChar).Value = txtSchoolJourney.Text;
            // com2.ExecuteNonQuery();
            con.Open();
            com1.ExecuteNonQuery();
            con.Close();
        }

    }
}
