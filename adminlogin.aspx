<%@ Page Language="C#" MasterPageFile="~/adminlogin.master"AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" Title="Admin login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><hr />
    <div style="text-align: left"><center>
      <table >
            <tr>
                <td colspan="2"><h2>Admin Login</h2>
                    </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 70px">
                                            User Name</td>
                <td class="style1">
                    <asp:TextBox ID="txtName" runat="server" Width="200px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtName" Display="Dynamic" 
                        ErrorMessage="Enter Your User Name">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 70px">
                    Password</td>
                <td class="style1">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="200px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtPassword" Display="Dynamic" 
                        ErrorMessage="Enter Your Password">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 70px">
                    &nbsp;</td>
                <td class="style1">
                    <asp:Button ID="submit" runat="server" Text="Login" onclick="submit_Click" />
                </td>
            </tr>
            <tr>
                <td style="width: 70px">
                    &nbsp;</td>
                <td class="style1">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        ShowMessageBox="True" ShowSummary="False" />
                </td>
            </tr>
        </table></center>
        <br />
    </div>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style1
        {
            width: 215px;
        }
    </style>
</asp:Content>


