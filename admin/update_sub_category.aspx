<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_datatable_list.master" AutoEventWireup="true" CodeFile="update_sub_category.aspx.cs" Inherits="admin_update_sub_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="data_table" Runat="Server">
    <header>
        <title>
           Admin|update Menusub category
        </title>
    </header>
    <div class="page-content-wrapper">
		<div class="page-content">

			<div class="row">
				<div class="col-md-12">
                    <h3 class="page-title">
					<asp:Label ID="lbl_title" runat="server" Text="Pages"></asp:Label>
					</h3>
					
                </div>
            </div>
            <div class="row">
				<div class="col-md-12">
					<!-- BEGIN VALIDATION STATES-->
					<div class="portlet box blue">
						<div class="portlet-title">
                            <div class="caption">
								<asp:Label ID="Label5" runat="server" Text="UpDate Company Data"></asp:Label>
							</div>
                            <div class="tools">
                                <a href="javascript:;" class="collapse">
								</a>
                                <a href="javascript:;"  class="reload" >
                                    
								</a>
                                <a href="javascript:;" class="remove">
								</a>
                            </div>
                        </div>
                        <div class="portlet-body form">
                            <asp:HiddenField ID="HiddenField1" runat="server" />
							<!------------------------------------------------ BEGIN FORM--------------------------------------------------------------------------------------------------------->
							<div class="form-horizontal">
                            
								<div class="form-body">
                                    <div class="form-group">
                                                    <asp:Label ID="lblname" runat="server" Text="Name" class="col-md-3 control-label"  Font-Size="12pt">
                                                        <asp:Label class="required" ID="Label10" runat="server" Text=" *"> </asp:Label>
													</asp:Label>
													<div class="col-md-4">
													    <asp:TextBox ID="txtname"  class="form-control" placeholder=" Company Name" runat="server"></asp:TextBox>
														
													</div>
                                      </div>
                                     <div class="form-group">
													<asp:Label class="control-label col-md-3" ID="lbl_category_new" runat="server" Text="category"  Font-Size="12pt" > <asp:Label class="required" ID="Label2" runat="server" Text=" *"> </asp:Label></asp:Label>
													
														<div class="col-md-4"">
															 <asp:DropDownList  class="form-control"  ID="DropDownList_category_new" runat="server"  Font-Size="15px" ForeColor="#666633">
                                                             <asp:ListItem Value="true">selete Category type</asp:ListItem>
                                                             <asp:ListItem Value="new">New</asp:ListItem>
                                                             <asp:ListItem Value="old">Old</asp:ListItem>
                                                            </asp:DropDownList>
														</div>
													
												</div>
                                    <div class="form-group">
													<asp:Label class="control-label col-md-3" ID="lblvisi" runat="server" Text="Visible"  Font-Size="12pt" > <asp:Label class="required" ID="Label6" runat="server" Text=" *"> </asp:Label></asp:Label>
													<div class="col-md-4">
														
															 <asp:DropDownList  class="form-control"  ID="DropDownList_company" runat="server"  Font-Size="15px" ForeColor="#666633">
                                                             <asp:ListItem>Visible-Sub Category</asp:ListItem>
                                                             <asp:ListItem Value="True">Yes</asp:ListItem>
                                                             <asp:ListItem Value="false">No</asp:ListItem>
                                                            </asp:DropDownList>
														
													</div>
												</div>

                                </div>
                                <!----------------------------button------------------------------------------------------------------------>
                                            <div class="form-actions fluid">
												<div class="col-md-offset-3 col-md-9">
                                                    <asp:Button ID="btnupdate" class="btn blue"  runat="server" Text="Update" OnClick="btnupdate_Click"    />
													<asp:Button ID="btncancel" runat="server" class="btn default " Text="Cancel" OnClick="btncancel_Click"   />
                                                    </div>
                                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

