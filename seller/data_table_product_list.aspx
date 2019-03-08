<%@ Page Title="" Language="C#" MasterPageFile="~/seller/seller_datatable.master" AutoEventWireup="true" CodeFile="data_table_product_list.aspx.cs" Inherits="seller_data_table_product_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="data_table" Runat="Server">
    <header>
        <title>
            Seller|Product List
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
                                <a href="data_table_product_list.aspx">
                                    <asp:Label ID="lbl_title_company" runat="server" Text="Product List"></asp:Label>
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
                                Product Data List
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
								<asp:Repeater runat="server" ID="product_list"  OnItemCommand="product_list_ItemCommand" >
                                    <HeaderTemplate>

                                        <table class="table table-striped table-hover table-bordered" id="sample_editable_1">
                                            <thead>
                                                <tr>

                                                    <th class="success"><asp:Label ID="lblproduct_id" runat="server" Text="Product Id" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                    <th class="success"><asp:Label ID="lblcomapny_id" runat="server" Text="Company Id" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                    <th class="success"><asp:Label ID="lblsub_category_id" runat="server" Text="Sub Category Id" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                    <th class="success"><asp:Label ID="lblseller_id" runat="server" Text="Seller Id" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                     <th class="success"><asp:Label ID="lblproduct_name" runat="server" Text="Product Name" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                     <th class="success"><asp:Label ID="lblproduct_code" runat="server" Text=" Product Code" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                     <th class="success"><asp:Label ID="lblproduct_price" runat="server" Text="Product Price" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                     <th class="success"><asp:Label ID="lblshort_desc" runat="server" Text="Short Description" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                     <th class="success"><asp:Label ID="lblwarranty" runat="server" Text="Warranty Time" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                     <th class="success"><asp:Label ID="lblspecification" runat="server" Text="Specification" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                     <th class="success"><asp:Label ID="lblstock" runat="server" Text="Total Product Stock" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                     <th class="success"><asp:Label ID="lblresplay_day" runat="server" Text="Replacement Days" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                     <th class="success"><asp:Label ID="lbldeliver_day" runat="server" Text="Deliver Day" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                     <th class="success"><asp:Label ID="lbltotal_no_rating" runat="server" Text="Total no of ratings" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                     <th class="success"><asp:Label ID="lbl_avg_no_rating" runat="server" Text="Avg Rating" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                     <th class="success"><asp:Label ID="lbl_image" runat="server" Text="Images" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>


                                                    <th class="success"><asp:Label ID="lblcompany_Status" runat="server" Text="Visible" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                    <th class="success" style="width:250px !important"> <asp:Label ID="lblcompany_Action" runat="server" Text="Action" Font-Bold="true" ForeColor="black" Font-Size="15px" ToolTip="Edit a record."></asp:Label></th>
                                                    
                                                </tr>

                                            </thead>
                                            <tbody>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <%#Eval("product_id") %>
                                            </td>
                                             <td>
                                                <%#Eval("company_id") %>
                                            </td>
                                             <td>
                                                <%#Eval("sub_category_id") %>
                                            </td>
                                             <td>
                                                <%#Eval("seller_id") %>
                                            </td>
                                            <td>
                                                <%#Eval("product_name") %>
                                            </td>
                                            <td>
                                                <%#Eval("product_code") %>
                                            </td>
                                            <td>
                                                <%#Eval("product_price") %>
                                            </td>
                                            <td>
                                                <%#Eval("product_short_description") %>
                                            </td>
                                             <td>
                                                <%#Eval("product_warranty") %>
                                            </td>
                                             <td>
                                                <%#Eval("product_specification") %>
                                            </td>
                                             <td>
                                                <%#Eval("product_stock") %>
                                            </td>
                                             <td>
                                                <%#Eval("product_replacement_days") %>
                                            </td>
                                             <td>
                                                <%#Eval("product_delivery_days") %>
                                            </td>
                                             <td>
                                                <%#Eval("product_total_no_of_ratings") %>
                                            </td>
                                             <td>
                                                <%#Eval("product_avg_rating") %>
                                            </td>
                                            
                                            <td>
                                                <asp:Image ID="Image1" ImageUrl='<%# Eval("product_main_image","~/product_images/{0}") %>' Width="100px" Height="100px" runat="server" />
                                            </td>
                                            <td>
                                                <%#Eval("product_status") %>
                                            </td>
                                            <td>
                                                
                                                <asp:LinkButton ID="btn_delete"   runat="server" class="btn red" OnClientClick="return confirm('Are you sure, you want to delete this record?');" CommandName="delete" CommandArgument='<%# Eval("product_id") %>' > <i class="fa fa-trash-o"></i> Delete</asp:LinkButton>
                                                <asp:LinkButton ID="btn_update" runat="server" class="btn blue" CommandName="edit" CommandArgument='<%# Eval("product_id") %>'><i class="fa fa-edit"></i>Edit</</asp:LinkButton>
                                                
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
        App.init();
        TableEditable.init();
    });
</script>
</asp:Content>

