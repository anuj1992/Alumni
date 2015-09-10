<%@ Page Title="" Language="C#" MasterPageFile="~/userhome.master" AutoEventWireup="true" CodeFile="searchprofile.aspx.cs" Inherits="searchprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class=" PrsonalInfoContainer">
       <!--InfoInner-->
                <div class=" Prsnl_inner">
                       <table width="300px" style="margin-left:20px">
       <tr>
       <td> Name:</td><td><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
        </tr>
        
        <tr><td>Birthday:</td><td><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>        <td>City:</td><td><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
        </tr>
        </table>
        <br />
      <div class="socialField">
            <asp:Button ID="Button1" runat="server" Text="About"  CssClass=" profilebtn"/>&nbsp;&nbsp;&nbsp;
          <asp:Button ID="Button2" runat="server" Text="Message" CssClass="profilebtn" />  
      &nbsp;&nbsp;&nbsp;  
          <asp:Button ID="Button3" runat="server" Text="Add+" CssClass=" profilebtn" />
      </div>
              </div><!--InfoInnerEnd-->
            
               <div class=" Prsnl_inner_pic">
               <asp:Image ID="Image1" runat="server" CssClass="profilepic"/>

               
                     
                  
    <asp:Label ID="lblerror" runat="server"></asp:Label>
               
               </div>
    </div>
     <div class="rightContainer" style="clear:both";><hr />
       <div class="aboutheding"><img src="images/info_24.png" />&nbsp;<font color="white">About</font></div>
       
        <br />
        <div class="InfoContainer">
                    <!--leftPannel-->
                    <div class="Containerdevider">
                                <div id="about">
                                       <div id="abouttext">                          
                                         <h4>Work and Education</h4>

                

                                             
                                                current city: 
                                           <asp:Label ID="lblccity" runat="server" Text="Label"></asp:Label>
                                                <br />
                                                Occupation: 
                                           <asp:Label ID="lbloccupation" runat="server" Text="Label"></asp:Label>
                                                <br />
                                                <br />


                                        </div>
                                  </div>
                                  <br />
                                

                                 

                                
                    </div>
                    <!--rightPannel-->
                    <div class="basicinfoContainer">
                            <div id="about">
                                       <div id="abouttext">                          
                                         <h4>Basic Informationn</h4>

                

                                                Birth Date: 
                                           <asp:Label ID="lbldob" runat="server" Text="Label"></asp:Label>
                                                <br />
                                                Birth Year: 
                                           <asp:Label ID="lbldobyear" runat="server" Text="Label"></asp:Label>
                                                <br />
                                                Gender: 
                                           <asp:Label ID="lblsex" runat="server" Text="Label"></asp:Label>
                                                <br />
                                                Relationship Status: 
                                           <asp:Label ID="lblrstatus" runat="server" Text="Label"></asp:Label>
                                                <br />
                                   
                                   
                                                <h4>Contact Information</h4>
                                                Email Id: 
                                           <asp:Label ID="lblemailid" runat="server" Text="Label"></asp:Label>
                                                <br />
                                                Facebook Id: 
                                           <asp:Label ID="lblfbid" runat="server" Text="Label"></asp:Label>
                                                <br />
                                                Contact No: 
                                           <asp:Label ID="lblcontact" runat="server" Text="Label"></asp:Label>
                                                <br />
                                                Permanent Address: 
                                           <asp:Label ID="lblpaddress" runat="server" Text="Label"></asp:Label>
                                                <br />


                                        </div>
                                  </div>
            
                    </div>
                  <br />
        </div>
        
        <!--BRIEF DESCRIPTION-->
        <div class="briefContainer">
                                    <!--SchoolLife-->
                                  
        </div>
    </div>
</asp:Content>

