<%@ Page Language="C#" MasterPageFile="~/userhome.master" AutoEventWireup="true" CodeFile="schoolLife.aspx.cs" Inherits="schoolLife" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <table style="width: 100%">
            <tr>
                <td colspan="3">
                    School Life</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 206px">
                    Describes your days as student</td>
                <td style="width: 188px">
                    <asp:TextBox ID="txtdaysAsStudent" runat="server" TextMode="MultiLine" 
                        Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtdaysAsStudent" Display="Dynamic" 
                        ErrorMessage="Enter Your Days as School">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 206px">
                    Journey over the years as Raman</td>
                <td style="width: 188px">
                    <asp:TextBox ID="txtRamanJourney" runat="server" TextMode="MultiLine" 
                        Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtRamanJourney" Display="Dynamic" 
                        ErrorMessage="RequirEnter Your Journey of Raman">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 206px">
                    Funniest/Memorable moment in school</td>
                <td style="width: 188px">
                    <asp:TextBox ID="txtFunniestMoment" runat="server" TextMode="MultiLine" 
                        Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtFunniestMoment" Display="Dynamic" 
                        ErrorMessage="Enter Your Funniest moment in School Life">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 206px">
                    Embrassing moment in life in school</td>
                <td style="width: 188px">
                    <asp:TextBox ID="txtEmbrassingMoment" runat="server" TextMode="MultiLine" 
                        Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtEmbrassingMoment" Display="Dynamic" 
                        ErrorMessage="Enter Your Embrassing moment in School Life">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 206px">
                    Best pals in school</td>
                <td style="width: 188px">
                    <asp:TextBox ID="txtBestPals" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtBestPals" Display="Dynamic" 
                        ErrorMessage="Enter Your Best Pals in School">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 206px">
                    Favourite faculity(s)</td>
                <td style="width: 188px">
                    <asp:TextBox ID="txtFavFaculty" runat="server" TextMode="MultiLine" 
                        Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtFavFaculty" Display="Dynamic" 
                        ErrorMessage="Enter Your Favourite Faculty">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 206px">
                    Favourite spot in school</td>
                <td style="width: 188px">
                    <asp:TextBox ID="txtFavSpot" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtFavSpot" Display="Dynamic" 
                        ErrorMessage="Enter Your Favourite Spot in School">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 206px">
                    Your life journey after school</td>
                <td style="width: 188px">
                    <asp:TextBox ID="txtSchoolJourney" runat="server" TextMode="MultiLine" 
                        Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtSchoolJourney" Display="Dynamic" 
                        ErrorMessage="Enter Your School journey">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 206px">
                    &nbsp;</td>
                <td style="width: 188px">
                    <asp:Button ID="submit" runat="server" Text="Submit" onclick="submit_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 206px">
                    &nbsp;</td>
                <td style="width: 188px">
                    &nbsp;</td>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        ShowMessageBox="True" ShowSummary="False" />
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

