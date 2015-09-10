<%@ Page Language="C#" MasterPageFile="~/adminhome.master" AutoEventWireup="true" CodeFile="addactivity.aspx.cs" Inherits="addactivity" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
  <asp:Label ID="Label1" runat="server"></asp:Label>
    <asp:Panel ID="Panel1" runat="server">
    <h2>Add New Activity</h2>
  
    <table class="style1">
        <tr>
            <td>
                Activity Name</td>
            <td>
                <asp:TextBox ID="txtActivityName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Activity Date</td>
            <td>
                <asp:TextBox ID="txtActivityDate" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Choose Picture</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Add" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
    <h2>Add Photographs for Recently Added Activity</h2>
        <asp:FileUpload ID="FileUpload2" runat="server" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Save" />

    </asp:Panel>
    <br /><br /><br /><br /><br /><br />
</asp:Content>

