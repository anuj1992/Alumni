<%@ Page Language="C#" MasterPageFile="~/userhome.master" AutoEventWireup="true" CodeFile="userprofile.aspx.cs" Inherits="userprofile" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="js/jquery-1-4-2.min.js" type="text/javascript"></script>
    <script src="AboutScroll.js" type="text/javascript"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--prsonlaInfoCntanr-->
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

               
                     <div class="choose">
                         <asp:FileUpload ID="FileUpload1" runat="server" Height="20px" Width="82px"  />
                         
                      </div>
                      <div class="upload"> <asp:Button ID="Button4" runat="server" Text="Change Picture" CssClass="ChanePx" onclick="Button4_Click"/></div>
                  
    <asp:Label ID="lblerror" runat="server"></asp:Label>
               
               </div>
    </div><!--prsonlaInfoCntanrEnd-->
    
    
    
    <div class="notification" id="ex3">
      <center>  <h4><font color="white">Notifications</font></h4></center><hr />

            <div class="innerNotiEvents"> 
                 <marquee direction="up" behavior="scroll"  scrolldelay="100" scrollamount="1" onmouseover="this.stop();" onmouseout="this.start()">

                 <div class="innerText"> Shivam Kumar Kushwaha really Cool And Awwssomm </div>
                 <div class="innerText"> Shivam Kumar Kushwaha really Cool And Awwssomm </div>
                 <div class="innerText"> Shivam Kumar Kushwaha really Cool And Awwssomm </div>
                 <div class="innerText"> Shivam Kumar Kushwaha really Cool And Awwssomm </div>
                 <div class="innerText"> Shivam Kumar Kushwaha really Cool And Awwssomm </div>
                 <div class="innerText"> Shivam Kumar Kushwaha really Cool And Awwssomm </div>
                 <div class="innerText"> Shivam Kumar Kushwaha really Cool And Awwssomm </div>
                 </marquee>
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

