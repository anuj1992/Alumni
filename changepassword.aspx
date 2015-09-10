<%@ Page Language="C#" MasterPageFile="~/userhome.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table style="width: 100%">
            <tr>
                <td colspan="3">
                    Change Password</td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 156px">
                                            Old Password</td>
                <td style="width: 189px">
                    <asp:TextBox ID="txtOldpass" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtOldpass" Display="Dynamic" 
                        ErrorMessage="Enter Your Old Password">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 156px">
                    New Password</td>
                <td style="width: 189px">
                    <asp:TextBox ID="txtNewpass" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtNewpass" Display="Dynamic" 
                        ErrorMessage="Enter Your New Password">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 156px">
                    Confirm New Password</td>
                <td style="width: 189px">
                    <asp:TextBox ID="txtCNewpass" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtCNewpass" Display="Dynamic" 
                        ErrorMessage="Again Enter Your New Password">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cmppass" runat="server" ControlToCompare="txtNewpass" 
                        ControlToValidate="txtCNewpass" Display="Dynamic" 
                        ErrorMessage="New Password do not Matched">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 156px">
                    &nbsp;</td>
                <td style="width: 189px">
                    <asp:Button ID="submit" runat="server" Text="Submit" onclick="submit_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 156px">
                    &nbsp;</td>
                <td style="width: 189px">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        ShowMessageBox="True" ShowSummary="False" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
    </p>
</asp:Content>

