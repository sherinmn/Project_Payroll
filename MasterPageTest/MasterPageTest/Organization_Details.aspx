<%@ Page Title="" Language="C#" MasterPageFile="~/FinCorpLookAlike.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="MasterPageTest.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Fincorpfolder/css/base_style.css" rel="stylesheet" />
    <link href="Fincorpfolder/css/Intro_style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12">
        <div class="outer-container">
            <div class="inner-container" style="top:0px;left:0px;">
                   <div class="row box-body">
                       <div style="font-family:sans-serif;width:100%;">
                           <div class="col-xs-12">
                           <asp:Label ID="lbl_Info" runat="server" Text="Let's set up your account!" Font-Size="Large" Font-Bold="True" style="font-family:sans-serif;"></asp:Label>
                            <br />
                            <asp:Label ID="lbl_Desc" runat="server" Text="Enter your organization details " Font-Size="Small" ForeColor="#999999" style="font-family:sans-serif;"></asp:Label>
                              <br />
                              <br />
                            </div>
                              <div>
                                  <div class="col-xs-12">
                                  <b><asp:Label ID="lbl_compname" class="col-sm-3 label-align" runat="server" style="font-size:15px;" Text="Label">Company Name </asp:Label></b>
                                      
                                  <asp:TextBox ID="txt_compname" runat="server" class="txtbox-border col-sm-9" width="784px"></asp:TextBox>
                                      
                                  </div>
                              </div>
                                  <br />
                                  
                                  <div class="col-xs-12">
                                      <b><asp:Label ID="lbl_country" runat="server" class="col-sm-3 label-align" Text="Label">Country  </asp:Label></b>
                                      <asp:DropDownList ID="ddl_country" runat="server" class="txtbox-border col-sm-9" Width="784px"></asp:DropDownList>
                                      
                                  </div>
                                  <div class="col-xs-12">
                                      <strong><asp:Label ID="lbl_industry" runat="server" class="col-sm-3 label-align" Text="Label">Industry</asp:Label></strong>
                                      <asp:DropDownList ID="ddl_industry" runat="server" class="txtbox-border col-sm-9" Width="784px"></asp:DropDownList>
                                      <br />
                                      <br />
                                      <br />
                                  </div>
                                  <br />
                                  
                                  <div class="col-xs-12">
                                      
                                      <strong><asp:Label ID="lbl_addr_line1" runat="server" class="col-sm-3 label-align" Text="Label">Address Line1 </asp:Label></strong>
                                      <asp:TextBox ID="txt_addr_line1" runat="server" Width="784px" class="txtbox-border col-sm-9"></asp:TextBox>
                                  </div>
                                  <div class="col-xs-12">      
                                      <strong><asp:Label ID="lbl_addr_line2" runat="server" class="col-sm-3 label-align" Text="Label">Address Line2 </asp:Label></strong>
                                      <asp:TextBox ID="txt_addr_line2" runat="server" Width="784px" class="txtbox-border col-sm-9"></asp:TextBox>
                                  </div>
                                  <div class="col-xs-12">    
                                      <strong><asp:Label ID="lbl_addr_line3" runat="server" class="col-sm-3 label-align" Text="Label">Address Line3 </asp:Label></strong>
                                      <asp:TextBox ID="txt_addr_line3" runat="server" Width="784px" class="txtbox-border col-sm-9"></asp:TextBox>
                                  </div>
                                  <div class="col-xs-12"> 
                                      <strong><asp:Label ID="lbl_state" runat="server" class="col-sm-3 label-align" Text="Label">State </asp:Label></strong>
                                      <asp:DropDownList ID="ddl_state" runat="server" Width="784px" class="txtbox-border col-sm-9"></asp:DropDownList>
                                  </div>
                                  <div class="col-xs-12"> 
                                      <strong><asp:Label ID="lbl_city" runat="server" class="col-sm-3 label-align" Text="Label">City </asp:Label></strong>
                                      <asp:TextBox ID="txt_city" runat="server" class="txtbox-border col-sm-9" Width="784px"></asp:TextBox>
                                  </div>
                                  <div class="col-xs-12"> 
                                      <strong><asp:Label ID="lbl_pin" runat="server" class="col-sm-3 label-align" Text="Label">Pin Code </asp:Label></strong>
                                      <asp:TextBox ID="txt_pin" runat="server" class="txtbox-border col-sm-9" Width="784px"></asp:TextBox>
                                  </div>
                                  
                                  <div class="col-xs-12">
                                      <strong><asp:Label ID="lbl_payroll" runat="server" class="col-sm-3 label-align" Text="Label">Have you run payroll this year?</asp:Label></strong>
                                          <asp:RadioButtonList ID="RadioButtonList1" runat="server" class="col-sm-9" style="margin-bottom:30px;">
                                              <asp:ListItem>&nbsp;&nbsp;Yes, We have run payroll this year.</asp:ListItem>
                                              <asp:ListItem>&nbsp;&nbsp;No, We will run payroll with this app.</asp:ListItem>
                                          </asp:RadioButtonList>
                                      
                                      <br />
                                      <br />
                                  </div>
                                  <div class="col-md-12 btn-toolbar" style="margin-bottom:50px;">
                                      <asp:Button ID="btn_save" runat="server" Text="Save & Continue" Height="33px" />
                                      <asp:HyperLink NavigateUrl="#" href="#" ID="hyplink_cancel" runat="server" class="btn btn-default button-cancel">Cancel</asp:HyperLink>
                                  </div>
                        </div>
                       </div>
                </div>
            </div>
        </div>
</asp:Content>
