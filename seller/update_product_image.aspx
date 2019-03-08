<%@ Page Title="" Language="C#" MasterPageFile="~/seller/seller.master" AutoEventWireup="true" CodeFile="update_product_image.aspx.cs" Inherits="admin_update_product_image" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <header>
        <title>
           Admin|update product secondary image
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
								<asp:Label ID="Label5" runat="server" Text="product secondary image"></asp:Label>
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
													<asp:Label class="control-label col-md-3" ID="lbl_image_name" runat="server" Text="Image Name :"  Font-Size="12pt" >  </asp:Label>
													<div class="col-md-4">
														
															<asp:Label ID="lbl_image_name_dispaly" runat="server" Text=""></asp:Label> 
														
													</div>
												</div>
                                     <div class="form-group">
													<asp:Label class="control-label col-md-3" ID="lbl_image" runat="server" Text="Image  :"  Font-Size="12pt" >  </asp:Label>
													<div class="col-md-4">
														
                                                        <asp:Image ID="image_1" runat="server"  Width="150px" Height="150px"/><br />
                                                        <asp:FileUpload ID="FileUpload1" runat="server" />

                                                        
														
													</div>
												</div>
                                 <div class="form-group">
													<asp:Label class="control-label col-md-3" ID="lblvisi" runat="server" Text="Visible"  Font-Size="12pt" ></asp:Label>
													<div class="col-md-4">
														
															 <asp:DropDownList  class="form-control"  ID="DropDownList_product" runat="server"  Font-Size="15px" ForeColor="#666633">
                                                             <asp:ListItem>Visible-Product Image</asp:ListItem>
                                                             <asp:ListItem Value="True">Yes</asp:ListItem>
                                                             <asp:ListItem Value="false">No</asp:ListItem>
                                                            </asp:DropDownList>
														
													</div>
												</div>

                                </div>
                                <!----------------------------button------------------------------------------------------------------------>
                                            <div class="form-actions fluid">
												<div class="col-md-offset-3 col-md-9">
                                                    <asp:Button ID="btnupdate" class="btn blue"  runat="server" Text="Update" OnClick="btnupdate_Click"     />
													<asp:Button ID="btncancel" runat="server" class="btn default " Text="Cancel" OnClick="btncancel_Click"    />
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

