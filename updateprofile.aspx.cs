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

public partial class personalinfo : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["mycon"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        day();
        year();
        month();
        pnlPersonal.Visible = false;
        pnlSchool.Visible = false;
        pnlOther.Visible = false;
        pnlMarital.Visible = false;
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string userid;
        userid = Session["uid"].ToString();
        SqlCommand com = new SqlCommand("update personalinfo set facebookid=@facebookid,contactno=@contactno,eduafterschool=@eduafterschool,paddress=@paddress,pcity=@pcity,caddress=@caddress,ccity=@ccity,occupation=@occupation,maritalstatus=@maritalstatus where userid=@userid", con);
        com.Parameters.Add("@userid", SqlDbType.VarChar).Value = Session["uid"].ToString();
        com.Parameters.Add("@contactno", SqlDbType.VarChar).Value = txtContact.Text; ;
        com.Parameters.Add("@facebookid", SqlDbType.VarChar).Value = txtFacbookid.Text; ;
        com.Parameters.Add("@paddress", SqlDbType.VarChar).Value = txtPaddress.Text;
        com.Parameters.Add("@caddress", SqlDbType.VarChar).Value = txtCaddress.Text;
        com.Parameters.Add("@ccity", SqlDbType.VarChar).Value = txtcity.Text;
        com.Parameters.Add("@pcity", SqlDbType.VarChar).Value = txtcity.Text;
        com.Parameters.Add("@occupation", SqlDbType.VarChar).Value = ddlOccupation.SelectedItem.Text;
        com.Parameters.Add("@maritalstatus", SqlDbType.VarChar).Value = ddlMarital.SelectedItem.Text;
        com.Parameters.Add("@eduafterschool", SqlDbType.VarChar).Value =txtEduAfterSchool.Text;
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        Label1.Text = "Your deatils are updated successfully";

        Response.Write("<script language='javascript'>alert('Your Records Updated Successfuly...!!!');</script>");

        

        
    }
    protected void submit_Click1(object sender, EventArgs e)
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
            com1.Parameters.Add("@days_as_student", SqlDbType.VarChar).Value = txtdaysAsStudent.Text;
            com1.Parameters.Add("@raman_journey", SqlDbType.VarChar).Value = txtRamanJourney.Text;
            com1.Parameters.Add("@funniest_moment", SqlDbType.VarChar).Value = txtFunniestMoment.Text;
            com1.Parameters.Add("@embrassing_moment", SqlDbType.VarChar).Value = txtEmbrassingMoment.Text;
            com1.Parameters.Add("@best_pals", SqlDbType.VarChar).Value = txtBestPals.Text;
            com1.Parameters.Add("@favourite_faculty", SqlDbType.VarChar).Value = txtFavFaculty.Text;
            com1.Parameters.Add("@favourite_spot", SqlDbType.VarChar).Value = txtFavSpot.Text;
            com1.Parameters.Add("@time_pass", SqlDbType.VarChar).Value = "Text";
            com1.Parameters.Add("@life_journey", SqlDbType.VarChar).Value = txtSchoolJourney.Text;
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
    protected void submit_Click2(object sender, EventArgs e)
    {
        int n1;
        string maritalid, pid;
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

    protected void submit_Click3(object sender, EventArgs e)
    {
         
        int n1;
        string otherid, pid;
        pid = Session["pid"].ToString();
        SqlCommand com = new SqlCommand("select * from maritalinfo", con);
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        da.SelectCommand = com;
        da.Fill(ds);
        n1 = ds.Tables[0].Rows.Count;
        if (n1 == 0)
        {
            otherid = "OT0001";
        }
        else
        {
            otherid = "OT000" + (n1 + 1).ToString();
        }
        SqlCommand cmd = new SqlCommand("select * from otherinfo where pid=@pid", con);
        cmd.Parameters.Add("@pid", SqlDbType.VarChar).Value = pid;
        SqlDataAdapter da2 = new SqlDataAdapter();
        DataSet ds2 = new DataSet();
        da2.SelectCommand = cmd;
        da2.Fill(ds2);
        if (ds2.Tables[0].Rows.Count == 0)
        {


            SqlCommand com1 = new SqlCommand("insert into otherinfo (oid,pid,achievement,hobbies,exactivities,strength,weakness,aim,expectations)values(@oid,@pid,@achievement,@hobbies,@exactivities,@strength,@weakness,@aim,@expectations)", con);
            com1.Parameters.Add("@oid", SqlDbType.VarChar).Value = otherid;
            com1.Parameters.Add("@pid", SqlDbType.VarChar).Value = Session["pid"].ToString();
            com1.Parameters.Add("@achievement", SqlDbType.VarChar).Value = txtAchivement.Text;
            com1.Parameters.Add("@hobbies", SqlDbType.VarChar).Value = txtHoby.Text;
            com1.Parameters.Add("@exactivities", SqlDbType.VarChar).Value = txtExCurActivites.Text;
            com1.Parameters.Add("@strength", SqlDbType.VarChar).Value = txtStrenght.Text;
            com1.Parameters.Add("@aim", SqlDbType.VarChar).Value = txtGoal.Text;
            com1.Parameters.Add("@expectations", SqlDbType.VarChar).Value = txtExpLife.Text;
            com1.Parameters.Add("@weakness", SqlDbType.VarChar).Value = txtWeakness.Text; 
            con.Open();
            // com2.ExecuteNonQuery();
            com1.ExecuteNonQuery();
            con.Close();
        }
        else
        {
            //SqlCommand com1 = new SqlCommand("update maritalinfo set spousename=@spousename,spouseoccupation=@spouseoccupation,doa=@doa,childrens=@childrens where pid=@pid", con);
            SqlCommand com1 = new SqlCommand("update otherinfo set achievement=@achievement,hobbies=@hobbies,exactivities=@exactivities,strength=@strength,aim=@aim,expectations=@expectations,weakness=@weakness where pid=@pid", con);
            //com1.Parameters.Add("@oid", SqlDbType.VarChar).Value = otherid;
            com1.Parameters.Add("@pid", SqlDbType.VarChar).Value = Session["pid"].ToString();
            com1.Parameters.Add("@achievement", SqlDbType.VarChar).Value =txtAchivement.Text;
            com1.Parameters.Add("@hobbies", SqlDbType.VarChar).Value =txtHoby.Text;
            com1.Parameters.Add("@exactivities", SqlDbType.VarChar).Value =txtExCurActivites.Text;
            com1.Parameters.Add("@strength", SqlDbType.VarChar).Value =txtStrenght.Text;
            com1.Parameters.Add("@aim", SqlDbType.VarChar).Value =txtGoal.Text;
            com1.Parameters.Add("@expectations", SqlDbType.VarChar).Value =txtExpLife.Text;
            com1.Parameters.Add("@weakness", SqlDbType.VarChar).Value =txtWeakness.Text;
            con.Open();
            // com2.ExecuteNonQuery();
            com1.ExecuteNonQuery();
            con.Close();
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        pnlPersonal.Visible = true;
    }
    protected void btnOtherEdit_Click(object sender, EventArgs e)
    {
        pnlOther.Visible = true;
    }
    protected void btnMaritalEdit_Click(object sender, EventArgs e)
    {
        pnlMarital.Visible = true;
    }
    protected void btnschooledit_Click(object sender, EventArgs e)
    {
        pnlSchool.Visible = true;
    }
}
