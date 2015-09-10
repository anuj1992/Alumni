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

public partial class addactivity : System.Web.UI.Page
{
    public string activityid;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["mycon"]);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Panel2.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        int n1;

        if (FileUpload1.HasFile)
        {
            string[] validFileTypes = { "jpg", "jpeg", "JPG", "JPEG", "png", "PNG" };
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
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Invalid File. Please upload a File with extension " +
                               string.Join(",", validFileTypes);
            }
            else
            {
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                string targetPath = Server.MapPath("activity/" + filename);
                Stream strm = FileUpload1.PostedFile.InputStream;
                var targetFile = targetPath;

                string str1 = Server.MapPath("~/activity/");
                FileUpload1.SaveAs(str1 + "" + FileUpload1.PostedFile.FileName);
                GenerateThumbnails(0.5, strm, targetFile);
                SqlCommand com = new SqlCommand("select * from activites", con);
                SqlDataAdapter da = new SqlDataAdapter();
                DataSet ds = new DataSet();
                da.SelectCommand = com;
                da.Fill(ds);
                n1 = ds.Tables[0].Rows.Count;
                if (n1 == 0)
                {
                    activityid = "AC0001";
                }
                else
                {
                    activityid = "AC000" + (n1 + 1).ToString();
                }
                Session["acid"] = activityid;
                SqlCommand cmd = new SqlCommand("insert into activites(aid,activity_name,activity_date,actvityphoto_id)values(@aid,@activity_name,@activity_date,@actvityphoto_id)", con);
                cmd.Parameters.Add("@aid", SqlDbType.VarChar).Value = activityid;
                cmd.Parameters.Add("@activity_name", SqlDbType.VarChar).Value = txtActivityName.Text;
                cmd.Parameters.Add("@activity_date", SqlDbType.VarChar).Value = txtActivityDate.Text;
                cmd.Parameters.Add("@actvityphoto_id", SqlDbType.VarChar).Value = "~/activity/" + FileUpload1.FileName;

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.ForeColor = System.Drawing.Color.Green;
                Label1.Text = "File uploaded successfully.";
                Response.Write("<script language='javascript'>alert('Activity " + txtActivityName + " added successfully...!!!! Upload Photographs for this activity...!!!!');</script>");

                Panel1.Visible = false;
                Panel2.Visible = true;
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

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload2.HasFile)
        {
            string[] validFileTypes = { "jpg", "jpeg", "JPEG", "png", "PNG", "JPG" };
            string ext = System.IO.Path.GetExtension(FileUpload2.PostedFile.FileName);
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
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Invalid File. Please upload a File with extension " +
                               string.Join(",", validFileTypes);
            }
            else
            {
                int n1;
                string phid;
                string filename = Path.GetFileName(FileUpload2.PostedFile.FileName);
                string targetPath = Server.MapPath("activityphotos/" + filename);
                Stream strm = FileUpload2.PostedFile.InputStream;
                var targetFile = targetPath;

                string str1 = Server.MapPath("~/activityphotos/");
                FileUpload2.SaveAs(str1 + "" + FileUpload2.PostedFile.FileName);
                GenerateThumbnails(0.5, strm, targetFile);
                SqlCommand com = new SqlCommand("select * from photogallery", con);
                SqlDataAdapter da = new SqlDataAdapter();
                DataSet ds = new DataSet();
                da.SelectCommand = com;
                da.Fill(ds);
                n1 = ds.Tables[0].Rows.Count;
                if (n1 == 0)
                {
                    phid = "PH0001";
                }
                else
                {
                    phid = "PH000" + (n1 + 1).ToString();
                }
                SqlCommand cmd = new SqlCommand("insert into photogallery(phid,aid,photoid,upload_date)values(@phid,@aid,@photoid,@upload_date)", con);
                cmd.Parameters.Add("@aid", SqlDbType.VarChar).Value = Session["acid"].ToString();
                cmd.Parameters.Add("@phid", SqlDbType.VarChar).Value = phid;
                cmd.Parameters.Add("@upload_date", SqlDbType.VarChar).Value = System.DateTime.Now;
                cmd.Parameters.Add("@photoid", SqlDbType.VarChar).Value = "~/activityphotos/" + FileUpload2.FileName;

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.ForeColor = System.Drawing.Color.Green;
                Label1.Text = "Photo uploaded successfully.";
            }
        }

    }
}