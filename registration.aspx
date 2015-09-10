<%@ Page Language="C#" MasterPageFile="~/userform.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="userRegistration" Title="Untitled Page" %>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <title>Signup</title>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="form"><table  class="tabl">
            <tr>
            
                <td >
                    <h1 style="background-color:#006666"><font color="white">New Registration</font></h1></td>
            </tr>
            
            <tr>
                <td>
                    <asp:TextBox ID="txtFname" runat="server"  CssClass="F_L_name" 
                        placeholder="First Name"></asp:TextBox>
                    <asp:TextBox ID="txtLname" runat="server"  CssClass="F_L_name" 
                        placeholder="Last Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtFname" Display="Dynamic" ErrorMessage="Enter First Name">*</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtLname" Display="Dynamic" ErrorMessage="Enter Last Name">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:TextBox ID="txtEmail" runat="server"  CssClass="TextBox" placeholder="E-mail ID"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Enter Your Email">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtEmail" Display="Dynamic" 
                        ErrorMessage="Email id is not in correct format" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:TextBox ID="txtEmail0" runat="server"  CssClass="TextBox" 
                        placeholder="E-mail ID"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txtEmail0" Display="Dynamic" 
                        ErrorMessage="Enter Your Email">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtEmail0" Display="Dynamic" 
                        ErrorMessage="Email id is not in correct format" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtEmail" ControlToValidate="txtEmail0" Display="Dynamic" 
                        ErrorMessage="Email Id not matched">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:DropDownList ID="ddlDay" runat="server" CssClass="DOB">
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlmonth" runat="server" CssClass="DOB">
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlYear" runat="server" CssClass="DOB1">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="ddlDay" Display="Dynamic" ErrorMessage="Enter Date of DOB" 
                        InitialValue="0">*</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="ddlmonth" Display="Dynamic" ErrorMessage="Enter Date of DOB" 
                        InitialValue="0">*</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="ddlYear" Display="Dynamic" ErrorMessage="Enter Date of DOB" 
                        InitialValue="0">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:DropDownList ID="ddlSex" runat="server"  CssClass="sex" 
                        Height="39px">
                        <asp:ListItem Value="0">-Sex-</asp:ListItem>
                        <asp:ListItem Value="1">Male</asp:ListItem>
                        <asp:ListItem Value="2">Female</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="ddlSex" Display="Dynamic" ErrorMessage="Select Your Sex" 
                        InitialValue="0">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:Button ID="btnRegister" runat="server" Text="Register" 
                        onclick="btnRegister_Click" CssClass="Btn" />
                    
                    <asp:Label ID="lblError" runat="server" CssClass="lbl"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        ShowMessageBox="True" ShowSummary="False" />
                </td>
            </tr>
        </table>
<br /><br /><br /><br />    
</div>
</asp:Content>


