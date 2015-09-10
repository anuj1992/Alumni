<%@ Page Language="C#" MasterPageFile="~/adminhome.master" AutoEventWireup="true" CodeFile="registereduser.aspx.cs" Inherits="registereduser" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<asp:Panel ID="Panel1" runat="server" ScrollBars="Vertical">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" ForeColor="Black" GridLines="Vertical" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <RowStyle BackColor="#F7F7DE" />
        <Columns>
            <asp:BoundField DataField="userid" HeaderText="UserID" />
            <asp:BoundField DataField="username" HeaderText="User Name" />
            <asp:BoundField DataField="password" HeaderText="User Password" />
            <asp:BoundField DataField="email" HeaderText="Email-ID" />
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="sex" HeaderText="Sex" />
            <asp:BoundField DataField="role" HeaderText="User Role" />
            <asp:CommandField  SelectText="Add as Admin" ShowSelectButton="True" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView></asp:Panel>
    <br /><br /><br /><br />
    <br /><br />
</asp:Content>


