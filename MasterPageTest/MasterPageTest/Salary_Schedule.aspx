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
                                <asp:Label ID="lbl_Tax_info" runat="server" font-size="Large" Text="Label">Enter your organizations Salary Schedule</asp:Label>
                                <br /><br />
                                <asp:Label ID="lbl_Desc" runat="server" Text="To make sure your employees get paid on time setup when and how to pay your employees." Font-Size="Small" ForeColor="#999999" style="font-family:sans-serif;"></asp:Label>
                                <br />
                                <br />
            
                            </div>
                            <div class="row col-xs-12">
                                <div class="row form-group" style="font-family:sans-serif;">
                                    <div class="pay-schedule-sub-header col-xs-12">
                                        <asp:Label ID="lbl_work_week" runat="server" Text="Label" style="margin-left:15px;"> 
                                            Select your work week <span class="mandatory-field">*</span>
                                        </asp:Label><br />
                                    </div>
                                    <div class="col-xs-12">
                                    <asp:Label ID="lbl_cal" runat="server" Text="Label" class="col-xs-12 help-text">Work days in a calendar week</asp:Label>
                                        <br />
                                        <br />
                                    </div>
                                    <div class="col-xs-12 form-group">
                                        <div class="weekDays-selector" style="margin-left:15px;">
                                              <input type="checkbox" id="weekday-mon" class="weekday" />
                                              <label for="weekday-mon">Mon</label>
                                              <input type="checkbox" id="weekday-tue" class="weekday" />
                                              <label for="weekday-tue">Tue</label>
                                              <input type="checkbox" id="weekday-wed" class="weekday" />
                                              <label for="weekday-wed">Wed</label>
                                              <input type="checkbox" id="weekday-thu" class="weekday" />
                                              <label for="weekday-thu">Thu</label>
                                              <input type="checkbox" id="weekday-fri" class="weekday" />
                                              <label for="weekday-fri">Fri</label>
                                              <input type="checkbox" id="weekday-sat" class="weekday" />
                                              <label for="weekday-sat">Sat</label>
                                              <input type="checkbox" id="weekday-sun" class="weekday" />
                                              <label for="weekday-sun">Sun</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12" style="font-family:sans-serif;">
                                        <asp:Label ID="lbl_calc_sal" runat="server" Text="Label" class="pay-schedule-sub-header"> 
                                            Select how to calculate monthly salary <span class="mandatory-field">*</span>
                                        </asp:Label><br /><br />
                            <div>
                                <div class="radio-inline">
                                <input type="radio" value="orgworkday" id="actualday" name="calcsal" />
                                <div style="display:inline-flexbox;">
                                    <div> Actual days in a month.</div>
                                </div>
                                </div><br />
                                <div class="radio-inline">
                                <input type="radio" value="orgworkday" id="orgworkday" name="calcsal" />
                                <div style="display:inline-flexbox;">
                                    <div> Organization working days -
                                    <asp:DropDownList ID="ddl_work_days" runat="server" class="box-border" Height="25px" Width="90px"></asp:DropDownList>
                                    days per month.</div>
                                </div>
                                </div>
                            </div>
                            <asp:Label ID="lbl_pay_emp" runat="server" Text="Label" class="pay-schedule-sub-header"> 
                                Pay employees on  <span class="mandatory-field">*</span>
                            </asp:Label><br /><br />
                            <div>
                                <div class="radio-inline">
                                <input type="radio" value="orgworkday" id="lastworkday" name="workday"/>
                                <div style="display:inline-flexbox;">
                                    <div> Last working day of every month.</div>
                                </div>
                                </div><br />
                                <div class="radio-inline">
                                <input type="radio" value="orgworkday" id="dayofmon" name="workday"/>
                                <div style="display:inline-flexbox;">
                                    <div> <asp:DropDownList ID="ddl_day_of_mon" runat="server" class="box-border" Height="25px" Width="90px"></asp:DropDownList>
                                        day of every month.</div>
                                </div>
                                </div>
                                <div class="help-text">
                                    <strong>Note:</strong> If payday falls on a holiday, payment will be processed on previous working day.<br /><br />
                                </div>
                             </div>
                                <div class="col-xs-10">
                                <div class="col-xs-5">
                                <div class="row group">
                                <asp:Label ID="lbl_start_pay" runat="server" Text="Label" style="font-family:sans-serif;"> 
                                Start first payroll from - 
                                </asp:Label>
                                <asp:DropDownList ID="ddl_first_pay" runat="server" class="box-border" Height="25px" Width="230px"></asp:DropDownList>
                                <br /><br />
                                </div>
                                <div class="row sub-group">
                                <asp:Label ID="lbl_sal_pay_date" runat="server" Text="Label" style="font-family:sans-serif;"> 
                                Salary will be paid on - 
                                </asp:Label>
                                <asp:DropDownList ID="ddl_sal_pay_date" runat="server" class="box-border" Height="25px" Width="230px"></asp:DropDownList>
                                </div>
                                </div>
            
                                <div class="col-xs-6 pull-right">
                                <div>
                                    <asp:Calendar ID="Calendar1" runat="server" class="pull-right pay-schedule-calendar" style="height:100px;"></asp:Calendar>
                                    
                                </div><br /><br />
                                </div>
                                    </div>
           
            
            
                             </div>
                            <div class="col-md-12 btn-toolbar" style="margin-left:20px;margin-bottom:80px;">
                                
                                  <asp:Button ID="btn_save" runat="server" Text="Save & Continue" Height="35px" />
                                 
                                
                                  <asp:HyperLink NavigateUrl="#" href="#" ID="hyplink_cancel" runat="server" class="btn btn-default button-cancel" Height="35px">Skip setup</asp:HyperLink>
                             
                                </div>
                        </div>
               </div>
            </div>
        </div>
    </div>
</asp:Content>
