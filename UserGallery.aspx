<%@ Page Title="" Language="C#" MasterPageFile="~/userhome.master" AutoEventWireup="true" CodeFile="UserGallery.aspx.cs" Inherits="UserGallery" %>
<%@import Namespace="System.Data" %>
<%@import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title> Photo Gallery</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

                <center><h1>Select Activities</h1>
               <div id="gallery_activity">
        <ul >
            <%SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=ramanveer;Integrated Security=True");
              SqlCommand cmd = new SqlCommand("select * from activites", con);
              SqlDataAdapter da = new SqlDataAdapter();
              da.SelectCommand = cmd;
              DataSet ds = new DataSet();
              da.Fill(ds, "photoinfo");
                foreach (DataRow dr in ds.Tables[0].Rows)
              { %>
              <%string pid,path,title,acid;
                title = dr["activity_name"].ToString();
                    acid=dr["aid"].ToString();
                pid = dr["actvityphoto_id"].ToString();
                    path=pid.Substring(2) ;%>
           <li><a href="activity.aspx?aid=<%=acid %>" title="<%=title %>"> 
           <img src="<% =path %>" width="100" height="100" alt="" /></a></li>
            <%} %>               
          
        </ul>
            
    </div></center>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />


</asp:Content>
