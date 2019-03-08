<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_datatable_list.master" AutoEventWireup="true" CodeFile="datatable_sellerlist.aspx.cs" Inherits="admin_datatable_sellerlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="data_table" Runat="Server">
     <header>
        <title>
            Admin|Seller List
        </title>
    </header>
    <div class="page-content-wrapper">
		<div class="page-content">
			
            <div class="row">
                    <div class="col-md-12">
                        <h3 class="page-title">
                            <asp:Label ID="lbl_title" runat="server" Text="Data Table List"></asp:Label>
                        </h3>
                        <ul class="page-breadcrumb breadcrumb">
                            <li>
                                <i class="fa fa-home"></i>
                                <a href="index.aspx">
                                    <asp:Label ID="lbl_title_home" runat="server" Text="Home"></asp:Label>
                                </a>
                                <i class="fa fa-angle-right"></i>
                            </li>
                            <li>
                                
                                <a href="#">
                                    <asp:Label ID="Label1" runat="server" Text="Data Table"></asp:Label>
                                </a>
                                <i class="fa fa-angle-right"></i>
                            </li>
                           
                            <li>
                                <a href="#">
                                    <asp:Label ID="lbl_title_wishlist" runat="server" Text="Seller List"></asp:Label>
                                </a>
                                
                            </li>
                            
                        </ul>
                        <!-- END PAGE TITLE & BREADCRUMB-->
                    </div>
                </div>
			<div class="row">
				<div class="col-md-12">
                    <div class="portlet box green">
                        <div class="portlet-title">
							<div class="caption">
								Seller List
							</div>
							<div class="tools">
								<a href="javascript:;" class="collapse">
								</a>
								<a href="javascript:;" class="reload">
								</a>
								<a href="javascript:;" class="remove">
								</a>
							</div>
						</div>
                        <div class="portlet-body">
								<asp:Repeater runat="server" ID="seller_List" OnItemCommand="seller_List_ItemCommand">
                                    <HeaderTemplate>

                                        <table class="table table-striped table-hover table-bordered" id="sample_editable_1">
                                            <thead>
                                                <tr>

                                                    <th class="success"><asp:Label ID="lblseller_id" runat="server" Text=" Seller Id" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                    <th class="success"><asp:Label ID="lblseller_company_name" runat="server" Text="Compant Name" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                    <th class="success"><asp:Label ID="lblseller_company_addresss" runat="server" Text="Company Address" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                    <th class="success"><asp:Label ID="lblcompany_no" runat="server" Text="Company Contact No1" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                    <th class="success"><asp:Label ID="lblcompany_no2" runat="server" Text="Company Contact No2" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                    <th class="success"><asp:Label ID="lblcompany_email" runat="server" Text="Company Email" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                    <th class="success"><asp:Label ID="lblcompany_logo" runat="server" Text="Company Log" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                    <th class="success"><asp:Label ID="Lblcompany_website" runat="server" Text="Company WebSite" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                    <th class="success"><asp:Label ID="lblcompany_cs_no" runat="server" Text="Company Cst No" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                    <th class="success"><asp:Label ID="lblseller_sataus" runat="server" Text="Seller Status" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                    <th class="success"><asp:Label ID="lblseller_user_name" runat="server" Text="User Name" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                    <th class="success"><asp:Label ID="lblseller_password" runat="server" Text="Password" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                   

                                                    <th class="success" style="width:250px !important"> <asp:Label ID="lblcompany_Action" runat="server" Text="Action" Font-Bold="true" ForeColor="black" Font-Size="15px" ToolTip="Edit a record."></asp:Label></th>
                                                    
                                                </tr>

                                            </thead>
                                            <tbody>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <%#Eval("seller_id") %>
                                            </td>
                                            <td>
                                                <%#Eval("seller_company_name") %>
                                            </td>
                                            <td>
                                                <%#Eval("seller_company_address") %>
                                            </td>
                                            <td>
                                                <%#Eval("seller_company_contact_1") %>
                                            </td>
                                            <td>
                                                <%#Eval("seller_company_contact_2") %>
                                            </td>
                                            <td>
                                                <%#Eval("seller_company_email") %>
                                            </td>
                                            <td>
                                               <%-- <%#Eval("seller_company_logo") %>--%>
                                                <asp:Image ID="Image1" ImageUrl='<%# Eval("seller_company_logo","~/images/company_logo/{0}") %>' Width="100px" Height="100px" runat="server" />
                                            </td>
                                             <td>
                                                <%#Eval("seller_company_website") %>
                                            </td>
                                             <td>
                                                <%#Eval("seller_company_cst_no") %>
                                            </td>
                                             <td>
                                                <%#Eval("seller_status") %>
                                            </td>
                                            <td>
                                                <%#Eval("user_name") %>
                                            </td>
                                            <td>
                                                <%#Eval("Password") %>
                                            </td>

                                           

                                            
                                            <td>
                                                
                                                <asp:LinkButton ID="btn_delete"   runat="server" class="btn red" OnClientClick="return confirm('Are you sure, you want to delete this record?');" CommandName="delete" CommandArgument='<%# Eval("seller_id") %>' > <i class="fa fa-trash-o"></i> Delete</asp:LinkButton>
                                                
                                                
                                            </td>
                                            
                                        </tr>
                                    </ItemTemplate> 
                                    <FooterTemplate>
                                        </tbody>
                                        </table>
                                    </FooterTemplate>
                                </asp:Repeater>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
<script src="assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script type="text/javascript" src="assets/plugins/select2/select2.min.js"></script>
<script type="text/javascript" src="assets/plugins/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="assets/plugins/data-tables/DT_bootstrap.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="assets/scripts/core/app.js"></script>
<script src="assets/scripts/custom/table-editable.js"></script>
<script>
    jQuery(document).ready(function () {
        //App.init();
        TableEditable.init();
    });
</script>
</asp:Content>

