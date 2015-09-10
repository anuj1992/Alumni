using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.IO;
//using System.Drawing.Image.FromStream;

public partial class checkupload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BindDataList()
    {
        DirectoryInfo dir = new DirectoryInfo(MapPath("Images"));
        FileInfo[] files = dir.GetFiles();
        ArrayList listItems = new ArrayList();
        foreach (FileInfo info in files)
        {
            listItems.Add(info);
        }
        //dtlist.DataSource = listItems;
        //dtlist.DataBind();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
        string targetPath = Server.MapPath("photos/" + filename);
        Stream strm = FileUpload1.PostedFile.InputStream;
        var targetFile = targetPath;
        //Based on scalefactor image size will vary
        GenerateThumbnails(0.5, strm, targetFile);
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