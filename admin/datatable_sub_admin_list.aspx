<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_datatable_list.master" AutoEventWireup="true" CodeFile="datatable_sub_admin_list.aspx.cs" Inherits="admin_datatable_sub_admin_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="data_table" Runat="Server">
    <header>
        <title>
            Admin|Sub Admin List
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
                                    <asp:Label ID="lbl_title_wishlist" runat="server" Text="Sub Admin List"></asp:Label>
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
								Sub Admin List
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
								<asp:Repeater runat="server" ID="sub_admin_list" OnItemCommand="sub_admin_list_ItemCommand">
                                    <HeaderTemplate>

                                        <table class="table table-striped table-hover table-bordered" id="sample_editable_1">
                                            <thead>
                                                <tr>

                                                    <th class="success"><asp:Label ID="lbladmin_id" runat="server" Text=" Admin Id" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                    <th class="success"><asp:Label ID="lblf_name" runat="server" Text="Frist Name" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                    <th class="success"><asp:Label ID="lblm_name" runat="server" Text="Middle Name" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                    <th class="success"><asp:Label ID="lbll_name" runat="server" Text="Last Name" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                     <th class="success"><asp:Label ID="lbl_user" runat="server" Text="User Name" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                      <th class="success"><asp:Label ID="lbladdress" runat="server" Text="Address" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                    <th class="success"><asp:Label ID="lblemail" runat="server" Text="Email" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                    <th class="success"><asp:Label ID="lblcon" runat="server" Text="Contact No" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                    <th class="success"><asp:Label ID="Laldate" runat="server" Text="Date Of Brith" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                              
                                                    <th class="success"><asp:Label ID="lbl_password" runat="server" Text="Password" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                  
                                                    <th class="success"><asp:Label ID="lbl_image" runat="server" Text="Image" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>

                                                    <th class="success" style="width:250px !important"> <asp:Label ID="lblcompany_Action" runat="server" Text="Action" Font-Bold="true" ForeColor="black" Font-Size="15px" ToolTip="Edit a record."></asp:Label></th>
                                                    
                                                </tr>

                                            </thead>
                                            <tbody>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <%#Eval("admin_id") %>
                                            </td>
                                            <td>
                                                <%#Eval("f_name") %>
                                            </td>
                                            <td>
                                                <%#Eval("m_name") %>
                                            </td>
                                            <td>
                                                <%#Eval("l_name") %>
                                            </td>
                                            <td>
                                                <%#Eval("user_name") %>
                                            </td>
                                            <td>
                                                <%#Eval("address") %>
                                            </td>
                                            <td>
                                                <%#Eval("email") %>
                                            </td>
                                             <td>
                                                <%#Eval("number") %>
                                            </td>
                                             <td>
                                                <%#Eval("date_of_birth") %>
                                            </td>
                                             <td>
                                                <%#Eval("password") %>
                                            </td>
                                            <td>
                                                <%--<%#Eval("image") %>--%>
                                                 <asp:Image ID="Image1" ImageUrl='<%# Eval("image","~/images/admin_image/{0}") %>' Width="100px" Height="100px" runat="server" />
                                            </td>
                                           

                                            <td>
                                                
                                                <asp:LinkButton ID="btn_delete"   runat="server" class="btn red" OnClientClick="return confirm('Are you sure, you want to delete this record?');" CommandName="delete" CommandArgument='<%# Eval("admin_id") %>' > <i class="fa fa-trash-o"></i> Delete</asp:LinkButton>
                                                
                                                
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

