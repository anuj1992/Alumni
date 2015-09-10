<%@ Page Language="C#" MasterPageFile="~/gallery.master" AutoEventWireup="true" CodeFile="activity.aspx.cs" Inherits="activity" Title="Untitled Page" %>
<%@import Namespace="System.Data" %>
<%@import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <center>
        <div id="gallery">
        <ul >
            <%SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=ramanveer;Integrated Security=True");
              SqlCommand cmd = new SqlCommand("select * from photogallery where aid='"+Request.QueryString["aid"].ToString()+"'", con);
              SqlDataAdapter da = new SqlDataAdapter();
              da.SelectCommand = cmd;
              DataSet ds = new DataSet();
              da.Fill(ds, "photoinfo");
                foreach (DataRow dr in ds.Tables[0].Rows)
              { %>
              <%string pid,path,date;
                pid = dr["photoid"].ToString();
                date = dr["upload_date"].ToString();
                    path=pid.Substring(2) ;%>
           <li><a href="<%=path%>" title="Added on <%=date %>"> 
           <img src="<% =path %>" width="100" height="100" alt="" /></a></li>
            <%} %>               
          
        </ul>
            
    </div>
</center>
<h2><span><a href="UserGallery.aspx"> << Back to Gallery</a><asp:Image ID="Image1" 
            runat="server" />
    </span></h2>
<br /><br />
</asp:Content>

