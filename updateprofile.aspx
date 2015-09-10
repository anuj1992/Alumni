<%@ Page Language="C#" MasterPageFile="~/userhome.master" AutoEventWireup="true" CodeFile="updateprofile.aspx.cs" Inherits="personalinfo" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form">
    <table class="tabl">
        <tr>
            <td class="style1"><h2 >Update Personal Information</h2> </td>
            <td><asp:Button ID="Button4" runat="server" Text="Edit" 
            onclick="Button4_Click" CssClass="Btn1" /></td>
        </tr>
     </table>            
        <asp:Panel ID="pnlPersonal" runat="server">
        
        <table class="tabl">
           
            <tr>
                <td >
                    <asp:TextBox ID="txtFacbookid" runat="server" 
                        placeholder="Facebook Id" CssClass="TextBox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtFacbookid" Display="Dynamic" 
                        ErrorMessage="Enter Your Facebook Id" ValidationGroup="v1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:TextBox ID="txtContact" runat="server"  placeholder="Contact No" 
                        CssClass="TextBox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtContact" Display="Dynamic" 
                        ErrorMessage="Enter Your Contact Number" ValidationGroup="v1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtPaddress" runat="server" TextMode="MultiLine"
                        placeholder="Permanent Address" CssClass="TextBox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtPaddress" Display="Dynamic" 
                        ErrorMessage="Enter Your Parmanent Address" ValidationGroup="v1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtCaddress" runat="server" TextMode="MultiLine" 
                        placeholder="Current Address" CssClass="TextBox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtCaddress" Display="Dynamic" EnableClientScript="False" 
                        ErrorMessage="Enter Your Current Address" ValidationGroup="v1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtcity" runat="server"  
                        placeholder="Current Town/City" CssClass="TextBox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:TextBox ID="txtEduAfterSchool" runat="server" TextMode="MultiLine" 
                         placeholder="Education After College" CssClass="TextBox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtEduAfterSchool" Display="Dynamic" 
                        ErrorMessage="Enter Education After College" ValidationGroup="v1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                                        <td>
                                            <asp:DropDownList ID="ddlOccupation" runat="server" 
                                                CssClass="TextBox">
                                                <asp:ListItem Value="0">-Occupation-</asp:ListItem>
                                                <asp:ListItem Value="1">Business</asp:ListItem>
                                                <asp:ListItem Value="2">Service</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                ControlToValidate="ddlOccupation" Display="Dynamic" 
                                                ErrorMessage="Enter Your Occupation" InitialValue="0" ValidationGroup="v1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                <td >
                    <asp:DropDownList ID="ddlMarital" runat="server"  
                        CssClass="TextBox">
                        <asp:ListItem Value="0">-Marital Status-</asp:ListItem>
                        <asp:ListItem Value="1">Married</asp:ListItem>
                        <asp:ListItem Value="2">Unmarried</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="ddlMarital" Display="Dynamic" 
                        ErrorMessage="Enter Your Marital Status" InitialValue="0" ValidationGroup="v1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:Button ID="submit" runat="server" Text="Submit" onclick="submit_Click" 
                         CssClass="Btn" ValidationGroup="v1" />
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        ShowMessageBox="True" ShowSummary="False" ValidationGroup="v1" />
                </td>
            </tr>
        </table>
        </asp:Panel>
        <br />
        <hr />

<!--ScholLife Info-->
<table class="tabl">
        <tr>
            <td class="style1"><h2 >College Life  </h2> </td>
            <td><asp:Button ID="btnschooledit" runat="server" Text="Edit" 
            onclick="btnschooledit_Click"  CssClass="Btn1"/></td>
        </tr>
     </table>
        <asp:Panel ID="pnlSchool" runat="server">
        
<table class=" tabl">
           
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" CssClass="lbl"></asp:Label>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:TextBox ID="txtdaysAsStudent" runat="server" TextMode="MultiLine" 
                       placeholder="Describes your days as student" CssClass="TextBox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtdaysAsStudent" Display="Dynamic" 
                        ErrorMessage="Enter Your Days as College" ValidationGroup="v2">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:TextBox ID="txtRamanJourney" runat="server" TextMode="MultiLine" 
                        placeholder="Journey over the years at United" CssClass="TextBox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txtRamanJourney" Display="Dynamic" 
                        ErrorMessage="Enter Your Journey of United" ValidationGroup="v2">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:TextBox ID="txtFunniestMoment" runat="server" TextMode="MultiLine" 
                CssClass="TextBox"     placeholder ="Funniest/Memorable moment in College"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValdator10" runat="server" 
                        ControlToValidate="txtFunniestMoment" Display="Dynamic" 
                        ErrorMessage="Enter Your Funniest moment in College Life" ValidationGroup="v2">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtEmbrassingMoment" runat="server" TextMode="MultiLine" 
                   CssClass="TextBox" placeholder=" Embrassing moment in life in College"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="txtEmbrassingMoment" Display="Dynamic" 
                        ErrorMessage="Enter Your Embrassing moment in College Life" ValidationGroup="v2">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:TextBox ID="txtBestPals" runat="server" TextMode="MultiLine" placeholder="Best pals in College" CssClass="TextBox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="txtBestPals" Display="Dynamic" 
                        ErrorMessage="Enter Your Best Pals in College" ValidationGroup="v2">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtFavFaculty" runat="server" TextMode="MultiLine" 
                        placeholder="Favourite faculity(s)" CssClass="TextBox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        ControlToValidate="txtFavFaculty" Display="Dynamic" 
                        ErrorMessage="Enter Your Favourite Faculty" ValidationGroup="v2">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:TextBox ID="txtFavSpot" runat="server" TextMode="MultiLine" placeholder="Favourite spot in College" CssClass="TextBox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                        ControlToValidate="txtFavSpot" Display="Dynamic" 
                        ErrorMessage="Enter Your Favourite Spot in College" ValidationGroup="v2">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:TextBox ID="txtSchoolJourney" runat="server" TextMode="MultiLine" 
                        placeholder="Your life journey after College" CssClass ="TextBox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                        ControlToValidate="txtSchoolJourney" Display="Dynamic" 
                        ErrorMessage="Enter Your College journey" ValidationGroup="v2">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="submit_Click1" 
                        CssClass=" Btn" ValidationGroup="v2" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary2" runat="server" 
                        ShowMessageBox="True" ShowSummary="False" ValidationGroup="v2" />
                </td>
            </tr>
        </table>
        </asp:Panel>
<br />
        <hr />
        <!--Marital Info-->
        <table class="tabl">
        <tr>
            <td class="style1"><h2 >Update Marital Information</h2></td>
            <td>        
                <asp:Button ID="btnMaritalEdit" runat="server" Text="Edit" 
            onclick="btnMaritalEdit_Click"  CssClass="Btn1"/>
        </td>
        </tr></table>
        <asp:Panel ID="pnlMarital" runat="server">
        
        <table class=" tabl">
            
            <tr>
                <td >
                    <asp:TextBox ID="txtNameSpouse" runat="server" placeholder=" Name of Spouse" 
                        CssClass="TextBox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="txtNameSpouse" Display="Dynamic" 
                        ErrorMessage="Enter Spouse Name" ValidationGroup="v3">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;<asp:DropDownList ID="ddlDay" runat="server" CssClass="DOB">
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlMonth" runat="server" CssClass="DOB">
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlYear" runat="server" CssClass="DOB1">
                    </asp:DropDownList>
                    Date of Birth of Spouse<asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                        ControlToValidate="ddlDay" Display="Dynamic" 
                        ErrorMessage="Enter Day of DOB of Spouse" InitialValue="0" ValidationGroup="v3">*</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                        ControlToValidate="ddlMonth" Display="Dynamic" 
                        ErrorMessage="Enter Month of DOB of Spouse" InitialValue="0" ValidationGroup="v3">*</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                        ControlToValidate="ddlYear" Display="Dynamic" 
                        ErrorMessage="Enter Year of DOB of Spouse" InitialValue="0" ValidationGroup="v3">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;<asp:DropDownList ID="ddlDD" runat="server" CssClass="DOB">
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlMM" runat="server" CssClass="DOB">
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlYYYY" runat="server" CssClass="DOB">
                    </asp:DropDownList>
                    Anninversary<asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                        ControlToValidate="ddlDD" Display="Dynamic" 
                        ErrorMessage="Enter Date of Anninversary" InitialValue="0" ValidationGroup="v3">*</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                        ControlToValidate="ddlMM" Display="Dynamic" 
                        ErrorMessage="Enter Month of Anninversary" InitialValue="0" ValidationGroup="v3">*</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                        ControlToValidate="ddlYYYY" Display="Dynamic" 
                        ErrorMessage="Enter Year of Anninversary" InitialValue="0" ValidationGroup="v3">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" 
                        CssClass="TextBox">
                        <asp:ListItem Value="0">-Occupation of Spouse-</asp:ListItem>
                        <asp:ListItem Value="1">Business</asp:ListItem>
                        <asp:ListItem Value="2">Service</asp:ListItem>
                        <asp:ListItem Value="4">House Wife</asp:ListItem>
                    </asp:DropDownList>
                    Occupation of Spouse<asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                        ControlToValidate="ddlOccupation" Display="Dynamic" 
                        ErrorMessage="Enter Occupation of Spouse" InitialValue="0" ValidationGroup="v3">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:DropDownList ID="ddlChildren" runat="server" 
                        CssClass="TextBox">
                        <asp:ListItem Value="0">-Number of Children-</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                        ControlToValidate="ddlChildren" Display="Dynamic" 
                        ErrorMessage="Enter Number of Children" InitialValue="0" ValidationGroup="v3">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:Button ID="Button2" runat="server" Text="Submit" onclick="submit_Click2" 
                        CssClass="Btn" ValidationGroup="v3" />
                    <asp:Label ID="Label2" runat="server" CssClass="lbl"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary3" runat="server" 
                        ShowMessageBox="True" ShowSummary="False" ValidationGroup="v3" />
                </td>
            </tr>
        </table>
    </asp:Panel>
        <br />
        <hr />
        <!--OtherInfo-->
        <table class="tabl">
        <tr>
            <td class="style1"><h2 >Other Information</h2> </td><td> 
            <asp:Button ID="btnOtherEdit" runat="server" Text="Edit" 
            onclick="btnOtherEdit_Click"  CssClass=" Btn1"/></td></tr>
        </table>
        <asp:Panel ID="pnlOther" runat="server">

        <table  class="tabl">
            
            <tr>
                <td >
                    <asp:TextBox ID="txtAchivement" runat="server" TextMode="MultiLine" 
                     placeholder="Achievements" CssClass="TextBox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
                        ControlToValidate="txtAchivement" Display="Dynamic" 
                        ErrorMessage="Enter Your Achievements" ValidationGroup="v4">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:TextBox ID="txtHoby" runat="server" TextMode="MultiLine" placeholder="Hobbies/Interests" CssClass="TextBox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                        ControlToValidate="txtHoby" Display="Dynamic" ErrorMessage="Enter Your Hobbies" ValidationGroup="v4">*</asp:RequiredFieldValidator>
                </td>
         
            </tr>
            <tr>
                <td >
                    <asp:TextBox ID="txtExCurActivites" runat="server" TextMode="MultiLine" 
                    placeholder="Extra Curriculam Activites" CssClass="TextBox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
                        ControlToValidate="txtExCurActivites" Display="Dynamic" 
                        ErrorMessage="Enter Your Curriculam Activites" ValidationGroup="v4">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:TextBox ID="txtStrenght" runat="server" TextMode="MultiLine" placeholder="Strenghts" CssClass="TextBox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
                        ControlToValidate="txtStrenght" Display="Dynamic" 
                        ErrorMessage="Enter Your Strenght" ValidationGroup="v4">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:TextBox ID="txtWeakness" runat="server" TextMode="MultiLine" placeholder="Weakness" CssClass="TextBox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
                        ControlToValidate="txtWeakness" Display="Dynamic" 
                        ErrorMessage="Enter Your Weakness" ValidationGroup="v4">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:TextBox ID="txtExpLife" runat="server" TextMode="MultiLine" placeholder=" Expectations From Life"  CssClass="TextBox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" 
                        ControlToValidate="txtExpLife" Display="Dynamic" 
                        ErrorMessage="Enter Your Expectations form Life" ValidationGroup="v4">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:TextBox ID="txtGoal" runat="server" TextMode="MultiLine" placeholder="Goal/Aim of Life" CssClass="TextBox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" 
                        ControlToValidate="txtGoal" Display="Dynamic" 
                        ErrorMessage="Enter Your Goal" ValidationGroup="v4">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:Button ID="Button3" runat="server" Text="Submit" onclick="submit_Click3" 
                        CssClass="Btn" ValidationGroup="v4" />
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary4" runat="server" 
                        ShowMessageBox="True" ShowSummary="False" ValidationGroup="v4" />
                </td>
            </tr>
        </table>
                </asp:Panel>
    
 
    </div>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style1
        {
            width: 499px;
        }
    </style>

</asp:Content>


