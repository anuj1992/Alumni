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

public partial class userprofile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["mycon"]);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            //FileUpload1.Visible = false;
            SqlDataAdapter da = new SqlDataAdapter("SELECT personalinfo.ccity, personalinfo.maritalstatus, personalinfo.occupation, personalinfo.paddress, personalinfo.facebookid, personalinfo.emailid,CONVERT(VARCHAR(10),personalinfo.dob,103) as dob ,DATEPART(yyyy,personalinfo.dob) as year, personalinfo.sex, personalinfo.contactno FROM personalinfo INNER JOIN login ON personalinfo.userid = login.userid where personalinfo.userid='" + Session["uid"] + "'", con);
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
            
            Label1.Text = Session["name"].ToString();
            Label2.Text = Session["birth"].ToString(); ;
            Label3.Text = "";
            Image1.ImageUrl = Session["picid"].ToString();
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        // FileUpload1.Visible = true;
        if (FileUpload1.HasFile)
        {
            string[] validFileTypes = { "jpg", "jpeg", "JPG","JPEG", "png", "PNG" };
            string ext = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);
            bool isValidFile = false;
            for (int i = 0; i < validFileTypes.Length; i++)
            {
                if (ext == "." + validFileTypes[i])
                {
                    isValidFile = true;
                    break;
                }
            }
            if (!isValidFile)
            {
                lblerror.ForeColor = System.Drawing.Color.Red;
                lblerror.Text = "Invalid File. Please upload a File with extension " +
                               string.Join(",", validFileTypes);
            }
            else
            {

                string filename = Path.GetFileName(FileUpload1.FileName);
                string targetPath = Server.MapPath("photos/" + filename);
                Stream strm = FileUpload1.PostedFile.InputStream;
                var targetFile = targetPath;

                string str1 = Server.MapPath("~/photos/");
                FileUpload1.SaveAs(str1 + "" + FileUpload1.FileName);
                GenerateThumbnails(0.5, strm, targetFile);
                SqlCommand com = new SqlCommand("update personalinfo set image_id=@imgid where userid=@userid", con);
                com.Parameters.Add("@imgid", SqlDbType.VarChar).Value = "~/photos/" + FileUpload1.FileName;
                com.Parameters.Add("@userid", SqlDbType.VarChar).Value = Session["uid"].ToString();

                con.Open();
                com.ExecuteNonQuery();
                con.Close();
                Response.Write("<script language='javascript'>alert('Your Profile Picture Updated Successfuly...!!!');</script>");
                Session["picid"] = "~/photos/" + FileUpload1.FileName;
                Image1.ImageUrl = "~/photos/" + FileUpload1.FileName;

            }

        }

    }
    private void GenerateThumbnails(double scaleFactor, Stream sourcePath, string targetPath)
    {
        using (var image = System.Drawing.Image.FromStream(sourcePath))
        {
            var newWidth = (int)(image.Width * scaleFactor);
            var newHeight = (int)(image.Height * scaleFactor);
            var thumbnailImg = new Bitmap(newWidth, newHeight);
            var thumbGraph = Graphics.FromImage(thumbnailImg);
            thumbGraph.CompositingQuality = CompositingQuality.HighQuality;
            thumbGraph.SmoothingMode = SmoothingMode.HighQuality;
            thumbGraph.InterpolationMode = InterpolationMode.HighQualityBicubic;
            var imageRectangle = new Rectangle(0, 0, newWidth, newHeight);
            thumbGraph.DrawImage(image, imageRectangle);
            thumbnailImg.Save(targetPath, image.RawFormat);
        }
    }
}