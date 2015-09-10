<%@ Page Language="C#" MasterPageFile="~/userhome.master" AutoEventWireup="true" CodeFile="maritalinfo.aspx.cs" Inherits="maritalinfo" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <table style="width: 100%">
            <tr>
                <td colspan="3">
                    Update Marital Information</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 147px">
                    Name of Spouse</td>
                <td style="width: 233px">
                    <asp:TextBox ID="txtNameSpouse" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtNameSpouse" Display="Dynamic" 
                        ErrorMessage="Enter Spouse Name">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 147px">
                    Date of Birth of Spouse</td>
                <td style="width: 233px">
                    <asp:DropDownList ID="ddlDay" runat="server">
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlMonth" runat="server">
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlYear" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="ddlDay" Display="Dynamic" 
                        ErrorMessage="Enter Day of DOB of Spouse" InitialValue="0">*</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="ddlMonth" Display="Dynamic" 
                        ErrorMessage="Enter Month of DOB of Spouse" InitialValue="0">*</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="ddlYear" Display="Dynamic" 
                        ErrorMessage="Enter Year of DOB of Spouse" InitialValue="0">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 147px">
                    Anninversary</td>
                <td style="width: 233px">
                    <asp:DropDownList ID="ddlDD" runat="server">
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlMM" runat="server">
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlYYYY" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="ddlDD" Display="Dynamic" 
                        ErrorMessage="Enter Date of Anninversary" InitialValue="0">*</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="ddlMM" Display="Dynamic" 
                        ErrorMessage="Enter Month of Anninversary" InitialValue="0">*</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="ddlYYYY" Display="Dynamic" 
                        ErrorMessage="Enter Year of Anninversary" InitialValue="0">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 147px">
                    Occupation of Spouse</td>
                <td style="width: 233px">
                    <asp:DropDownList ID="ddlOccupation" runat="server" Width="100px">
                        <asp:ListItem Value="0">-select-</asp:ListItem>
                        <asp:ListItem Value="1">Business</asp:ListItem>
                        <asp:ListItem Value="2">Service</asp:ListItem>
                        <asp:ListItem Value="4">House Wife</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="ddlOccupation" Display="Dynamic" 
                        ErrorMessage="Enter Occupation of Spouse" InitialValue="0">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 147px">
                    Number of Children</td>
                <td style="width: 233px">
                    <asp:DropDownList ID="ddlChildren" runat="server" Width="100px">
                        <asp:ListItem Value="0">-select-</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="ddlChildren" Display="Dynamic" 
                        ErrorMessage="Enter Number of Children" InitialValue="0">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 147px">
                    &nbsp;</td>
                <td style="width: 233px">
                    <asp:Button ID="submit" runat="server" Text="Submit" onclick="submit_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 147px">
                    &nbsp;</td>
                <td style="width: 233px">
                    &nbsp;</td>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        ShowMessageBox="True" ShowSummary="False" />
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

