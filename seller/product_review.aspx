<%@ Page Title="" Language="C#" MasterPageFile="~/seller/seller_datatable.master" AutoEventWireup="true" CodeFile="product_review.aspx.cs" Inherits="seller_product_review" %>

<asp:Content ID="Content1" ContentPlaceHolderID="data_table" Runat="Server">
    <header>
        <title>
            Seller|Product Review
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
                                <a href="product_review.aspx">
                                    <asp:Label ID="lbl_title_company" runat="server" Text="Product Review"></asp:Label>
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
								Product Review List
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
								<asp:Repeater runat="server" ID="product_review" OnItemCommand="product_images_ItemCommand">
                                    <HeaderTemplate>

                                        <table class="table table-striped table-hover table-bordered" id="sample_editable_1">
                                            <thead>
                                                <tr>

                                                    <th class="success"><asp:Label ID="lblreview_id" runat="server" Text="Review Id" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                    <th class="success"><asp:Label ID="lblproduct_id" runat="server" Text="product Id" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                    <th class="success"><asp:Label ID="lblreview_description" runat="server" Text="Review Description" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                    <th class="success"><asp:Label ID="lblreview_date" runat="server" Text="Review Date-Time" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                    <th class="success"><asp:Label ID="lblreview_name" runat="server" Text="Review Name" Font-Bold="true" ForeColor="black" Font-Size="15px"></asp:Label></th>
                                                    <th class="success" style="width:250px !important"> <asp:Label ID="lblcompany_Action" runat="server" Text="Action" Font-Bold="true" ForeColor="black" Font-Size="15px" ToolTip="Edit a record."></asp:Label></th>
                                                    
                                                </tr>

                                            </thead>
                                            <tbody>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <%#Eval("product_review_id") %>
                                            </td>
                                            <td>
                                                <%#Eval("product_id") %>
                                            </td>
                                            <td>
                                                <%#Eval("product_review_description") %>
                                            </td>
                                            <td>
                                                <%#Eval("product_review_date_time") %>
                                            </td>
                                            <td>
                                                <%#Eval("reviwer_name") %>
                                            </td>
                                            <td>
                                                
                                                <asp:LinkButton ID="btn_delete"   runat="server" class="btn red" OnClientClick="return confirm('Are you sure, you want to delete this record?');" CommandName="delete" CommandArgument='<%# Eval("product_review_id") %>' > <i class="fa fa-trash-o"></i> Delete</asp:LinkButton>
                                                
                                                
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
       // App.init();
        TableEditable.init();
    });
</script>

</asp:Content>

