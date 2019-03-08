<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="update_product.aspx.cs" Inherits="admin_update_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <header>
        <title>
           Admin|update Product Data
        </title>
    </header>
    <div class="page-content-wrapper">
		<div class="page-content">

			
            <div class="row">
				<div class="col-md-12">
					<!-- BEGIN VALIDATION STATES-->
					<div class="portlet box blue">
						<div class="portlet-title">
                            <div class="caption">
								<asp:Label ID="Label5" runat="server" Text="UpDate Product Data"></asp:Label>
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
													    <asp:TextBox ID="txtname"  class="form-control" placeholder=" Product Name" runat="server"></asp:TextBox>
														
													</div>
                                      </div>
                                    <div class="form-group">
                                                    <asp:Label ID="lblcode" runat="server" Text="Code" class="col-md-3 control-label"  Font-Size="12pt">
                                                        <asp:Label class="required" ID="Label2" runat="server" Text=" *"> </asp:Label>
													</asp:Label>
													<div class="col-md-4">
													    <asp:TextBox ID="txtcode"  class="form-control" placeholder=" Product code" runat="server"></asp:TextBox>
														
													</div>
                                      </div>
                                     <div class="form-group">
                                                    <asp:Label ID="lblprice" runat="server" Text="Price" class="col-md-3 control-label"  Font-Size="12pt">
                                                        <asp:Label class="required" ID="Label3" runat="server" Text=" *"> </asp:Label>
													</asp:Label>
													<div class="col-md-4">
													    <asp:TextBox ID="txtprice"  class="form-control" placeholder=" Product Price" runat="server"></asp:TextBox>
														
													</div>
                                      </div>
                                     <div class="form-group">
                                                    <asp:Label ID="lblshort" runat="server" Text="Short Description" class="col-md-3 control-label"  Font-Size="12pt">
                                                        <asp:Label class="required" ID="Label4" runat="server" Text=" *"> </asp:Label>
													</asp:Label>
													<div class="col-md-4">
													    <asp:TextBox ID="txtshort"  class="form-control" placeholder=" Short Description of product" runat="server" TextMode="MultiLine"></asp:TextBox>
														
													</div>
                                      </div>
                                    <div class="form-group">
                                                    <asp:Label ID="lblwarranty" runat="server" Text="warranty" class="col-md-3 control-label"  Font-Size="12pt">
                                                        <asp:Label class="required" ID="Label7" runat="server" Text=" *"> </asp:Label>
													</asp:Label>
													<div class="col-md-4">
													    <asp:TextBox ID="txtwarranty"  class="form-control" placeholder=" Product warranty" runat="server"></asp:TextBox>
														
													</div>
                                      </div>
                                    <div class="form-group">
                                                    <asp:Label ID="lblstock" runat="server" Text="Stock" class="col-md-3 control-label"  Font-Size="12pt">
                                                        <asp:Label class="required" ID="Label8" runat="server" Text=" *"> </asp:Label>
													</asp:Label>
													<div class="col-md-4">
													    <asp:TextBox ID="txtstock"  class="form-control" placeholder=" Total number of product" runat="server"></asp:TextBox>
														
													</div>
                                      </div>
                                    <div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblimage" runat="server" Text="Image"  Font-Size="12pt"> <asp:Label class="required" ID="Label1" runat="server" Text=" *"></asp:Label></asp:Label>
										    <div class="col-md-4">
											       <asp:FileUpload ID="image_uplode"   runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="#6666FF" />
										    </div>
									</div>
                                    <div class="form-group">
													<asp:Label class="control-label col-md-3" ID="lblvisi" runat="server" Text="Visible"  Font-Size="12pt" > <asp:Label class="required" ID="Label6" runat="server" Text=" *"> </asp:Label></asp:Label>
													<div class="col-md-4">
														
															 <asp:DropDownList  class="form-control"  ID="DropDownList_product" runat="server"  Font-Size="15px" ForeColor="#666633">
                                                             <asp:ListItem>Visible-Product</asp:ListItem>
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

