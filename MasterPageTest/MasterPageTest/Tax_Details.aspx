<%@ Page Title="" Language="C#" MasterPageFile="~/FinCorpLookAlike.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="MasterPageTest.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Fincorpfolder/css/base_style.css" rel="stylesheet" />
    <link href="Fincorpfolder/css/Intro_style.css" rel="stylesheet" />
    <link href="Fincorpfolder/css/font-awesome.min.css" rel="stylesheet" />
    <script src="Fincorpfolder/js/jquery.min.js"></script>
    <script src="Fincorpfolder/js/Alpha_Num_Check.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12">
        <div class="outer-container">
            <div class="inner-container" style="top:0px;left:0px;">
                   <div class="row box-body">
                        <div style="font-family:sans-serif;">
                            <div class="col-xs-12">
                                <asp:Label ID="lbl_Tax_info" runat="server" font-size="Large" Text="Label">Enter your organizations Tax details</asp:Label>
                                <br />
                                <asp:Label ID="lbl_Desc" runat="server" Text="These details will be displayed in your employees Form 16 " Font-Size="Small" ForeColor="#999999" style="font-family:sans-serif;"></asp:Label>
                                <br />
                                <br />
                                <br />
                            </div>
                           
                                <div class="col-xs-12">
                                    <strong><asp:Label ID="lbl_pan" runat="server" Text="Label" class="col-sm-3 label-align">PAN</asp:Label></strong>
                                    <div>
                                    <asp:TextBox ID="txt_pan" runat="server" Class="txtbox-border text-uppercase col-sm-9" Width="784px" placeholder="AAAAA0000A" onblur="ValidatePAN(this.value);"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <strong><asp:Label ID="lbl_TAN" runat="server" Text="Label" class="col-sm-3 label-align">TAN</asp:Label></strong>
                                    <div>
                                    <asp:TextBox ID="txt_tan" runat="server" Class="txtbox-border text-uppercase" Width="784px" placeholder="AAAA00000A" onblur="ValidateTAN(this.value);"></asp:TextBox>
                                    </div>
                                </div>
                                
                                <div class="col-xs-12">
                                    <div>
                                    <strong><asp:Label ID="lbl_tds_ao" runat="server" Text="Label" class="col-sm-3 label-align">TDS Circle/AO Code</asp:Label></strong>
                                    </div>
                                    <div class="row display-flex pleft-large pright-large col-sm-9">
                                        <div>
                                            <span class="append-slash">
                                                <asp:TextBox ID="txt_aaa" runat="server" class="box-border text-uppercase" width="60px" placeholder="AAA" MaxLength="3" onkeypress="return onlyAlphabets(event,this);">

                                                </asp:TextBox>

                                            </span>
                    
                    
                                            <span class="append-slash">
                                                <asp:TextBox ID="txt_aa" runat="server" class="box-border text-uppercase" width="60px" placeholder="AA" MaxLength="2" onkeypress="return onlyAlphabets(event,this);">

                                                </asp:TextBox>

                                            </span>
                    
                   
                                            <span class="append-slash">
                                                <asp:TextBox ID="txt_000" runat="server" class="box-border text-uppercase" width="60px" placeholder="000" MaxLength="3" onkeypress="return onlyNumbers(event,this);">

                                                </asp:TextBox>

                                            </span>
                    
                    
                                            <asp:TextBox ID="TextBox1" runat="server" class="box-border text-uppercase" width="60px" placeholder="00" MaxLength="2" onkeypress="return onlyNumbers(event,this);"></asp:TextBox>
                                        </div>
                                    </div>
                                    </div>
                                    <div class="col-xs-12" style="margin-bottom:30px;">
                                        <span><span class="fa fa-info-circle">
                                            </span>
                                            </span>
                                            <strong><asp:Label ID="lbl_tax_freq" runat="server" Text="Label" class="col-sm-3 label-align">Tax Payment Frequency</asp:Label></strong>
                                            
                                            <asp:DropDownList ID="ddl_tax_freq" runat="server" class="txtbox-border col-sm-9" Width="784px"></asp:DropDownList>
                                       
                                    </div>
                               
                           
                            <div class="col-md-12 btn-toolbar" style="margin-bottom:350px;">
                                
                                  <asp:Button ID="btn_save" runat="server" Text="Save & Continue" Height="35px" />
                                 
                                
                                  <asp:HyperLink NavigateUrl="#" href="#" ID="hyplink_cancel" runat="server" class="btn btn-default button-cancel" Height="35px">Skip setup</asp:HyperLink>
                             
                                </div>
                        </div>
                                                
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
