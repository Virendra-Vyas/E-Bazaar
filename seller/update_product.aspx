<%@ Page Title="" Language="C#" MasterPageFile="~/seller/seller.master" AutoEventWireup="true" CodeFile="update_product.aspx.cs" Inherits="seller_update_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <header>
        <title>
          Update Product
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
								<i class="fa fa-reorder"></i><asp:Label ID="Label1" runat="server" Text="Update Product Details"></asp:Label>
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
                        <div class="portlet-body form">
							<!------------------------------------------------ BEGIN FORM--------------------------------------------------------------------------------------------------------->
							<div class="form-horizontal">
                                <div class="form-body">
                                    <asp:HiddenField ID="HiddenField1" runat="server" />
									<h3 class="form-section"><asp:Label ID="Label2" runat="server" Text="Basic Information" ForeColor="#3399FF"></asp:Label></h3>
                                    <!-------------------------------------------tag start name-------------------------------->
									
                                    
                                   
                                   

                                    <div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblname" runat="server" Text="Name"  Font-Size="12pt"> </asp:Label>
										    <div class="col-md-4">
											      <asp:TextBox ID="txtname" placeholder=" Product name" class="form-control" runat="server"></asp:TextBox>
										    </div>
									</div>
                                    <!----------------------------------------tag end------------------------------------------>
                                    <!-------------------------------------------tag start code -------------------------------->
									<div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblcode" runat="server" Text="Code"  Font-Size="12pt"> </asp:Label>
													<div class="col-md-4">
														
                                                        <asp:TextBox ID="txtcode" placeholder=" Product Code" class="form-control" runat="server" ReadOnly="true"></asp:TextBox>
														
													</div>
												</div>
									</div>
                                    <!----------------------------------------tag end------------------------------------------>
                                     <!-------------------------------------------tag start price-------------------------------->
									<div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblprice" runat="server" Text="Price"  Font-Size="12pt"></asp:Label>
										    <div class="col-md-4">
											      <asp:TextBox ID="txtprice" placeholder="Price" class="form-control" runat="server"></asp:TextBox>
										    </div>
									</div>
                                    <!----------------------------------------tag end------------------------------------------>
                                     <!-------------------------------------------tag start Description-------------------------------->
									<div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblDescription" runat="server" Text="short Description"  Font-Size="12pt"> </asp:Label>
										    <div class="col-md-4">
											     <asp:TextBox ID="txtdesc" placeholder="  Short Description of product" class="form-control" runat="server" TextMode="MultiLine" Height="66px"></asp:TextBox>
										    </div>
									</div>
                                    <!----------------------------------------tag end------------------------------------------>
                                     <!-------------------------------------------tag start stock-------------------------------->
									<div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblstock" runat="server" Text="Stock"  Font-Size="12pt"> </asp:Label>
										    <div class="col-md-4">
											       <asp:TextBox ID="txtstock" placeholder="Total number of Product" class="form-control" runat="server"></asp:TextBox>
										    </div>
									</div>
                                    <!----------------------------------------tag end------------------------------------------>
                                 <!-------------------------------------------tag start image-------------------------------->
									<div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblimage" runat="server" Text="Image"  Font-Size="12pt"> </asp:Label>
										    <div class="col-md-4">
                                                <asp:Image ID="product_image" runat="server" />
										    </div>
									</div>
                                    <!----------------------------------------tag end------------------------------------------>
                                <!-------------------------------------------tag start visible-------------------------------->
									<div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblvisible" runat="server" Text="Visible"  Font-Size="12pt"> </asp:Label>
										    <div class="col-md-4">
											      <asp:DropDownList  class="form-control"  ID="DropDownList_product" runat="server"  Font-Size="15px" ForeColor="#666633">
                                                     <asp:ListItem>Visible-Product</asp:ListItem>
                                                     <asp:ListItem Value="True">Yes</asp:ListItem>
                                                     <asp:ListItem Value="false">No</asp:ListItem>
                                                    </asp:DropDownList>
										    </div>
									</div>
                                    <!----------------------------------------tag end------------------------------------------>
                            <h3 class="form-section"><asp:Label ID="Label4" runat="server" Text=" Extra Information" ForeColor="#3399FF"></asp:Label></h3>
									 <!-------------------------------------------tag start warrent-------------------------------->
									<div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblwarranty" runat="server" Text="Warranty"  Font-Size="12pt"> </asp:Label>
										    <div class="col-md-4">
											       <asp:TextBox ID="txtwarty" placeholder=" Warranty period" class="form-control" runat="server"></asp:TextBox>
										    </div>
									</div>
                                    <!----------------------------------------tag end------------------------------------------>
                                 <!-------------------------------------------tag start Description-------------------------------->
									<div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblspecification" runat="server" Text="specification"  Font-Size="12pt"> </asp:Label>
										    <div class="col-md-4">
											     <asp:TextBox ID="txtspecification" placeholder="  Full specification of product" class="form-control" runat="server" TextMode="MultiLine" Height="66px"></asp:TextBox>
										    </div>
									</div>
                                
                                    <!----------------------------------------tag end------------------------------------------>
                                 <!-------------------------------------------tag start replment-------------------------------->
									<div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblreplament" runat="server" Text="Replament Day"  Font-Size="12pt"> </asp:Label>
										    <div class="col-md-4">
											        <asp:TextBox ID="txtreplmentday" placeholder="Replament Day of product" class="form-control" runat="server"></asp:TextBox>
										    </div>
									</div>
                                    <!----------------------------------------tag end------------------------------------------>
                                 <!-------------------------------------------tag start deliver-------------------------------->
									<div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lbldelver" runat="server" Text="Deliver"  Font-Size="12pt"> </asp:Label>
										    <div class="col-md-4">
											         <asp:TextBox ID="txtdeliver" placeholder="Enter Poduct Deliver Time" class="form-control" runat="server"></asp:TextBox>
										    </div>
									</div>
                                    <!----------------------------------------tag end------------------------------------------>
                               
                                      
									
								<!----------------------------button------------------------------------------------------------------------>
                                            <div class="form-actions fluid">
												<div class="col-md-offset-3 col-md-9">

                                                     <asp:Button ID="btnupdate" class="btn blue"  runat="server"  Text="Update" OnClick="btnupdate_Click"   />
													 <asp:Button ID="btnback" runat="server" class="btn default " Text="Back" OnClick="btnback_Click"  />

                                                    </div>
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

