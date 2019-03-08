<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_datatable_list.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="data_table" Runat="Server">
    <div class="portlet box blue">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-edit"></i>Editable Table
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
							<div class="table-toolbar">
								<div class="btn-group">
									<button id="sample_editable_1_new" class="btn green">
									Add New <i class="fa fa-plus"></i>
									</button>
								</div>
								<div class="btn-group pull-right">
									<button class="btn dropdown-toggle" data-toggle="dropdown">Tools <i class="fa fa-angle-down"></i>
									</button>
									<ul class="dropdown-menu pull-right">
										<li>
											<a href="#">
												 Print
											</a>
										</li>
										<li>
											<a href="#">
												 Save as PDF
											</a>
										</li>
										<li>
											<a href="#">
												 Export to Excel
											</a>
										</li>
									</ul>
								</div>
							</div>
							

                                <asp:GridView id="sample_editable_1" runat="server"  AutoGenerateColumns="False" class="table table-striped table-hover table-bordered" BackColor="Silver">
                                    
                                    <Columns>
                                        
                                         <asp:BoundField DataField="company_id" HeaderText="ID"   FooterStyle-BackColor="Blue"  >
                                          <ControlStyle BackColor="#0066FF" />
                                         <FooterStyle BackColor="#3366FF" />
                                         </asp:BoundField>
                                          <asp:BoundField DataField="company_name" HeaderText="Company Name" />
                                             <asp:BoundField DataField="company_status" HeaderText="Status" />
                                         <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1"  runat="server" CommandName="Delete" OnClientClick="return confirm('Are you sure, you want to delete this record?');">Delete</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
                                    </Columns>

                                </asp:GridView>
                                
                           
						</div>
					</div>
					<!-- END EXAMPLE TABLE PORTLET-->
				</div>
			</div>
			<!-- END PAGE CONTENT -->
		</div>
</asp:Content>

