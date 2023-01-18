<%@ Page Title="" Language="C#" MasterPageFile="~/FinCorpLookAlike.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="MasterPageTest.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Fincorpfolder/css/base_style.css" rel="stylesheet" />
    <link href="Fincorpfolder/css/Intro_style.css" rel="stylesheet" />
    <link href="Fincorpfolder/css/font-awesome.min.css" rel="stylesheet" />
    <script src="Fincorpfolder/js/jquery.min.js"></script>
    <script src="Fincorpfolder/js/Payslip_Comp.js"></script>
    <style>
        /* Style the tab */
        .tab {
		    overflow: hidden;
            border:none;
		    border-bottom: 2px solid #ddd;
            width:100%;
		}
        
        /* Style the buttons that are used to open the tab content */
		.tab #btn-earn,#btn-ded,#btn-reim {
		    float: left;
		    border: none;
            background:none;
		    outline: none;
		    cursor: pointer;
		    padding: 14px 16px;
		    transition: 0.3s;
		    color: #7d7f83;
		    font-size: 13px;
            font-family:sans-serif;
		}
        .tab #btn-earn{
            border-bottom:2px solid #ff0000;
        }

		/* Change background color of buttons on hover */
		.tab #btn-earn,#btn-ded,#btn-reim:hover {
		    /*background-color: #61977e;*/
            /*border-bottom:#ff0000;*/
		}

		/* Create an active/current tablink class */
		.tab #btn-earn,#btn-ded,#btn-reim.active {
            /*border-bottom:2px solid #ff0000 ;*/
            display:block;
		}
		/* Style the tab content */
		.tab-body {
		    display: none;
		    padding: 6px 12px;
		    border-top: 1px solid #ddd;
		}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12">
        <div class="outer-container">
            <div class="inner-container" style="top:0px;left:0px;">
                   <div class="row box-body">
                       <div style="font-family:sans-serif;">
                           <div class="col-xs-12">
                                <asp:Label ID="lbl_Pay_Comp_info" runat="server" font-size="Large" Text="Label"> Setup salary structure</asp:Label>
                                <br />
                                <asp:Label ID="lbl_Pay_Comp_Desc" runat="server" Text="Select components to be included in your employee's salary structure" Font-Size="Small" ForeColor="#999999" style="font-family:sans-serif;"></asp:Label>
                                <br />
                                <br />
                                <br />
                            </div>
                        <div class="col-xs-12 tab">
                            <input type="button" id="btn-earn" class="tablinks" onclick="openPayComp(event, 'earnings', 'btn-earn')" value="EARNINGS"/>
                            <input type="button" id="btn-ded" class="tablinks" onclick="openPayComp(event, 'deductions', 'btn-ded')" value="DEDUCTIONS"/>
                            <input type="button" id="btn-reim" class="tablinks" onclick="openPayComp(event, 'reimbursements', 'btn-reim')" value="REIMBURSEMENTS"/>
                        </div>
                       <div class="col-xs-12 tab-body" id="earnings" style="display:block;">
                           <table class="nav-justified" style="margin-top:10px;margin-bottom:10px;">
                                                <thead>
                                                    <tr>
                                                        <th class="table-head">Select</th>
                                                        <th class="table-head">Earning Type</th>
                                                        <th class="table-head">Calculation Type</th>
                                                        <th class="table-head">Consider for EPF</th>
                                                        <th class="table-head">Consider for ESI</th>
                                                    </tr>
                                                </thead>
                                                <tr>
                                                    <td class="tab-dat-chk">
                                                        <input type="checkbox" id="Pay_chk_box_basic" value="yes" style="margin-left:17px;"/>&nbsp;
                                                    </td>
                                                    <td class="tab-dat">
                                                        Basic
                                                    </td>
                                                    <td class="tab-dat">
                                                        Fixed;50% CTC
                                                    </td>
                                                    <td class="tab-dat">Yes</td>
                                                    <td class="tab-dat">Yes</td>
                                                </tr>
                                                <tr>
                                                    <td class="tab-dat-chk">
                                                        <input type="checkbox" id="Pay_chk_box_HRA" name="EPF" value="yes" style="margin-left:17px;"/>&nbsp;
                                                    </td>
                                                    <td class="tab-dat">House Rent Allowance(HRA)</td>
                                                    <td class="tab-dat">Fixed;50% of Basic</td>
                                                    <td class="tab-dat">No</td>
                                                    <td class="tab-dat">Yes</td>
                                                </tr>
                                                <tr>
                                                    <td class="tab-dat-chk"><input type="checkbox" id="Pay_chk_box_conveyance" name="EPF" value="yes" style="margin-left:17px;"/>&nbsp;</td>
                                                    <td class="tab-dat">Conveyance Allowance</td>
                                                    <td class="tab-dat">Fixed; Flat Amount</td>
                                                    <td class="tab-dat">No</td>
                                                    <td>No</td>
                                                </tr>
                                                <tr>
                                                    <td class="tab-dat-chk"><input type="checkbox" id="Pay_chk_box_Transport" name="EPF" value="yes" style="margin-left:17px;"/>&nbsp;</td>
                                                    <td class="tab-dat">Transport Allowance</td>
                                                    <td class="tab-dat">Fixed; Flat Amount</td>
                                                    <td class="tab-dat">No</td>
                                                    <td class="tab-dat">Yes</td>
                                                </tr>
                                                <tr>
                                                    <td class="tab-dat-chk"><input type="checkbox" id="Pay_chk_box_Travelling" name="EPF" value="yes" style="margin-left:17px;"/>&nbsp;</td>
                                                    <td class="tab-dat">Travelling Allowance</td>
                                                    <td class="tab-dat">Fixed; Flat Amount</td>
                                                    <td class="tab-dat">No</td>
                                                    <td class="tab-dat">No</td>
                                                </tr>
                                                <tr>
                                                    <td class="tab-dat-chk"><input type="checkbox" id="Pay_chk_box_Bonus" name="EPF" value="yes" style="margin-left:17px;"/>&nbsp;</td>
                                                    <td class="tab-dat">Bonus</td>
                                                    <td class="tab-dat">Variable; Flat Amount</td>
                                                    <td class="tab-dat">No</td>
                                                    <td class="tab-dat">No</td>
                                                </tr>
                                                <tr>
                                                    <td class="tab-dat-chk"><input type="checkbox" id="Pay_chk_box_commission" name="EPF" value="yes" style="margin-left:17px;"/>&nbsp;</td>
                                                    <td class="tab-dat">Commission</td>
                                                    <td class="tab-dat">Variable; Flat Amount</td>
                                                    <td class="tab-dat">No</td>
                                                    <td class="tab-dat">Yes</td>
                                                </tr>
                                                <tr>
                                                    <td class="tab-dat-chk"><input type="checkbox" id="Pay_chk_box_child_edu" name="EPF" value="yes" style="margin-left:17px;"/>&nbsp;</td>
                                                    <td class="tab-dat">Childrens Education Allowance</td>
                                                    <td class="tab-dat">Fixed; Flat Amount</td>
                                                    <td class="tab-dat">No</td>
                                                    <td class="tab-dat">Yes</td>
                                                </tr>
                                                <tr>
                                                    <td class="tab-dat-chk"><input type="checkbox" id="Pay_chk_box_fixed_allowance" name="EPF" value="yes" style="margin-left:17px;"/>&nbsp;</td>
                                                    <td class="tab-dat">Fixed Allowance</td>
                                                    <td class="tab-dat">Fixed; Flat Amount</td>
                                                    <td class="tab-dat">No</td>
                                                    <td class="tab-dat">Yes</td>
                                                </tr>
                                                <tr>
                                                    <td class="tab-dat-chk"><input type="checkbox" id="Pay_chk_box_fixed_leave_encash" name="EPF" value="yes" style="margin-left:17px;"/>&nbsp;</td>
                                                    <td class="tab-dat">Leave Encashment</td>
                                                    <td class="tab-dat">Variable; Flat Amount</td>
                                                    <td class="tab-dat">No</td>
                                                    <td class="tab-dat">No</td>
                                                </tr>
                                                <tr>
                                                    <td class="tab-dat-chk"><input type="checkbox" id="Pay_chk_box_gratuity" name="EPF" value="yes" style="margin-left:17px;"/>&nbsp;</td>
                                                    <td class="tab-dat">Gratuity</td>
                                                    <td class="tab-dat">Variable; Flat Amount</td>
                                                    <td class="tab-dat">No</td>
                                                    <td class="tab-dat">No</td>
                                                </tr>
                                                <tr>
                                                    <td class="tab-dat-chk"><input type="checkbox" id="Pay_chk_box_notice_pay" name="EPF" value="yes" style="margin-left:17px;"/>&nbsp;</td>
                                                    <td class="tab-dat">Notice Pay</td>
                                                    <td class="tab-dat">Variable; Flat Amount</td>
                                                    <td class="tab-dat">No</td>
                                                    <td class="tab-dat">Yes</td>
                                                </tr>
                                            </table>
                       </div>
                       <div class="col-xs-12 tab-body" id="deductions">
                           <table class="nav-justified" style="margin-top:10px;margin-bottom:10px;">
                                                <thead>
                                                    <tr>
                                                        <th class="table-head" colspan="2">Name</th>
                                                        <th class="table-head" style="width:35%;">Deduction Type</th>
                                                        <th class="table-head">Deduction Frequency</th>
                                                    </tr>
                                                </thead>
                                                <tr class="font-semibold"">
                                                    <td colspan="4" class="sub-header" style="font-size:12px;color:#808080;">
                                                        Pre Tax Deductions<span class="fa fa-info-circle"></span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="tab-dat-chk" colspan="2">
                                                        <input type="checkbox" id="Ded_chk_box_VPF" value="yes" style="margin-left:17px;"/>&nbsp;
                                                    </td>
                                                    <td class="tab-dat">Voluntary Provident Fund</td>
                                                    <td class="tab-dat">Recurring</td>
                                                </tr>
                                                <tr class="font-semibold">
                                                    <td colspan="4" class="sub-header" style="font-size:12px;color:#808080;">
                                                        Post Tax Deductions<span class="fa fa-info-circle"></span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="tab-dat-chk" colspan="2">
                                                        <input type="checkbox" id="Ded_chk_box_notice_pay" value="yes" style="margin-left:17px;"/>&nbsp;
                                                    </td>
                                                    <td class="tab-dat">Notice Pay Deductions</td>
                                                    <td class="tab-dat">One Time</td>
                                                </tr>
                                            </table>
                       </div>
                       <div class="col-xs-12 tab-body" id="reimbursements">
                           <table class="nav-justified" style="margin-top:10px;margin-bottom:10px;">
                                                    <thead>
                                                        <tr>
                                                            <th class="table-head" colspan="2">Name</th>
                                                            <th class="table-head" style="width:35%;" >Reimbursement Type</th>
                                                            <th class="table-head">Maximum reimbursable amount</th>
                                                        </tr>
                                                    </thead>
                                                    <tr>
                                                        <td class="tab-dat-chk" colspan="2">
                                                            <input type="checkbox" id="Ded_chk_box_fuel_reim" value="yes" style="margin-left:17px;"/>&nbsp;
                                                        </td>
                                                        <td class="tab-dat">Fuel Reimbursement</td>
                                                        <td class="tab-dat">0 per month</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="tab-dat-chk" colspan="2">
                                                            <input type="checkbox" id="Ded_chk_box_notice_driver_reim" value="yes" style="margin-left:17px;"/>&nbsp;
                                                        </td>
                                                        <td class="tab-dat">Driver Reimbursement</td>
                                                        <td class="tab-dat">0 per month</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="tab-dat-chk" colspan="2">
                                                            <input type="checkbox" id="Ded_chk_box_notice_phone_reim" value="yes" style="margin-left:17px;"/>&nbsp;
                                                        </td>
                                                        <td class="tab-dat">Office  Calls Reimbursement</td>
                                                        <td class="tab-dat">0 per month</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="tab-dat-chk" colspan="2">
                                                            <input type="checkbox" id="Ded_chk_box_notice_leave_travel_allow" value="yes" style="margin-left:17px;"/>&nbsp;
                                                        </td>
                                                        <td class="tab-dat">Work Travel Allowance</td>
                                                        <td class="tab-dat">0 per month</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="tab-dat-chk" colspan="2">
                                                            <input type="checkbox" id="Ded_chk_box_vehicle_maint_allow" value="yes" style="margin-left:17px;"/>&nbsp;
                                                        </td>
                                                        <td class="tab-dat">Vehicle Maintenance Allowance</td>
                                                        <td class="tab-dat">0 per month</td>
                                                    </tr>
                                                </table>
                       </div>
                           <div class="col-md-12 btn-toolbar" style="margin-top:50px;margin-bottom:300px;">
                                
                                  <asp:Button ID="btn_finish" runat="server" Text="Finish Setup" Height="35px" />
                               
                               
                                  <asp:HyperLink NavigateUrl="#" href="#" ID="hyplink_cancel" runat="server" class="btn btn-default button-cancel" Height="35px">Skip setup</asp:HyperLink>
                                
                                
                            </div>
                       </div>
                                                
                    </div>
                </div>
            </div>
        </div>
    <script type="text/javascript">
        function openPayComp(evt, payType, btnId) {
            // Declare all variables
            var i, tabbody, tablinks;

            // Get all elements with class="tab-body" and hide them
            tabbody = document.getElementsByClassName("tab-body");
            for (i = 0; i < tabbody.length; i++) {
                tabbody[i].style.display = "none";
                tabbody[i].style.border = "none";
            }

            // Get all elements with class="tablinks" and remove the class "active"
            tablinks = document.getElementsByClassName("tablinks");
            for (i = 0; i < tablinks.length; i++) {
                tablinks[i].className = tablinks[i].className.replace(" active", "");
                tablinks[i].style.border = "none";
            }

            // Show the current tab, and add an "active" class to the button that opened the tab
            document.getElementById(payType).style.display = "block";
            document.getElementById(btnId).style.borderBottom = "2px solid #ff0000";
            evt.currentTarget.className += " active";
        }
	</script>
</asp:Content>
