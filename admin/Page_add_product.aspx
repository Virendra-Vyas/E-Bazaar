<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="Page_add_product.aspx.cs" Inherits="admin_Page_add_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <header>
        <title>
          Add Product
        </title>
    </header>
    <div class="page-content-wrapper">
		<div class="page-content">

			<div class="row">
				<div class="col-md-12">
                    <h3 class="page-title">
					<asp:Label ID="lbl_title" runat="server" Text="Pages"></asp:Label>
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
								<asp:Label ID="lbl_title_form" runat="server" Text="Pages"></asp:Label>
							</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="#">
								<asp:Label ID="lbl_title_product_delail" runat="server" Text="product Details" ></asp:Label>
							</a>
                            <i class="fa fa-angle-right"></i>
						</li>
                        <li>
							<a href="#">
								<asp:Label ID="lbl_title_product" runat="server" Text="product " ></asp:Label>
							</a>
                            
						</li>
					</ul>
                </div>
            </div>
                 <div class="row">
				<div class="col-md-12">
					<!-- BEGIN VALIDATION STATES-->
					<div class="portlet box blue">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-reorder"></i><asp:Label ID="Label1" runat="server" Text="Please Enter Product Details"></asp:Label>
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
									<h3 class="form-section"><asp:Label ID="Label2" runat="server" Text="Basic Information" ForeColor="#3399FF"></asp:Label></h3>
                                    <!-------------------------------------------tag start name-------------------------------->
									<div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblcompany_name" runat="server" Text="Company Name"  Font-Size="12pt"> <asp:Label class="required" ID="Label11" runat="server" Text=" *"></asp:Label></asp:Label>
										    <div class="col-md-4">
                                                <asp:DropDownList ID="DropDownListcompany_name" runat="server"  class="form-control"    Font-Size="15px" ForeColor="#666633"></asp:DropDownList>										    </div>
									</div>
                                    <div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblcategory_name" runat="server" Text="Category Name"  Font-Size="12pt"> </asp:Label>
										    <div class="col-md-4">
											      <asp:DropDownList ID="DropDownListcategory_name" runat="server" class="form-control"    Font-Size="15px" ForeColor="#666633"></asp:DropDownList>
										    </div>
									</div>
                                    <div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblsubcategory_name" runat="server" Text="Sub Category Name"  Font-Size="12pt"> <asp:Label class="required" ID="Label18" runat="server" Text=" *"></asp:Label></asp:Label>
										    <div class="col-md-4">
											      <asp:DropDownList ID="DropDownListsub_category_name" runat="server" class="form-control"    Font-Size="15px" ForeColor="#666633"></asp:DropDownList>
										    </div>
									</div>
                                    <div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblname" runat="server" Text="Name"  Font-Size="12pt"> <asp:Label class="required" ID="Label20" runat="server" Text=" *"></asp:Label></asp:Label>
										    <div class="col-md-4">
											      <asp:TextBox ID="txtname" placeholder=" Product name" class="form-control" runat="server"></asp:TextBox>
										    </div>
									</div>
                                    <!----------------------------------------tag end------------------------------------------>
                                    <!-------------------------------------------tag start code -------------------------------->
									<div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblcode" runat="server" Text="Code"  Font-Size="12pt"> <asp:Label class="required" ID="Label3" runat="server" Text=" *"> </asp:Label></asp:Label>
													<div class="col-md-4">
														
                                                        <asp:TextBox ID="txtcode" placeholder=" Product Code" class="form-control" runat="server"></asp:TextBox>
														
													</div>
												</div>
									</div>
                                    <!----------------------------------------tag end------------------------------------------>
                                     <!-------------------------------------------tag start price-------------------------------->
									<div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblprice" runat="server" Text="Price"  Font-Size="12pt"> <asp:Label class="required" ID="Label6" runat="server" Text=" *"></asp:Label></asp:Label>
										    <div class="col-md-4">
											      <asp:TextBox ID="txtprice" placeholder="Price" class="form-control" runat="server"></asp:TextBox>
										    </div>
									</div>
                                    <!----------------------------------------tag end------------------------------------------>
                                     <!-------------------------------------------tag start Description-------------------------------->
									<div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblDescription" runat="server" Text="short Description"  Font-Size="12pt"> <asp:Label class="required" ID="Label8" runat="server" Text=" *"></asp:Label></asp:Label>
										    <div class="col-md-4">
											     <asp:TextBox ID="txtdesc" placeholder="  Short Description of product" class="form-control" runat="server" TextMode="MultiLine" Height="66px"></asp:TextBox>
										    </div>
									</div>
                                    <!----------------------------------------tag end------------------------------------------>
                                     <!-------------------------------------------tag start stock-------------------------------->
									<div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblstock" runat="server" Text="Stock"  Font-Size="12pt"> <asp:Label class="required" ID="Label10" runat="server" Text=" *"></asp:Label></asp:Label>
										    <div class="col-md-4">
											       <asp:TextBox ID="txtstock" placeholder="Total number of Product" class="form-control" runat="server"></asp:TextBox>
										    </div>
									</div>
                                    <!----------------------------------------tag end------------------------------------------>
                                 <!-------------------------------------------tag start image-------------------------------->
									<div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblimage" runat="server" Text="Image"  Font-Size="12pt"> <asp:Label class="required" ID="Label5" runat="server" Text=" *"></asp:Label></asp:Label>
										    <div class="col-md-4">
											       <asp:FileUpload ID="image"   runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="#6666FF" />
										    </div>
									</div>
                                    <!----------------------------------------tag end------------------------------------------>
                                <!-------------------------------------------tag start visible-------------------------------->
									<div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblvisible" runat="server" Text="Visible"  Font-Size="12pt"> <asp:Label class="required" ID="Label7" runat="server" Text=" *"></asp:Label></asp:Label>
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
										        <asp:Label  class="control-label col-md-3" ID="lblwarranty" runat="server" Text="Warranty"  Font-Size="12pt"> <asp:Label class="required" ID="Label12" runat="server" Text=" *"></asp:Label></asp:Label>
										    <div class="col-md-4">
											       <asp:TextBox ID="txtwarty" placeholder=" Warranty period" class="form-control" runat="server"></asp:TextBox>
										    </div>
									</div>
                                    <!----------------------------------------tag end------------------------------------------>
                                 <!-------------------------------------------tag start Description-------------------------------->
									<div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblspecification" runat="server" Text="specification"  Font-Size="12pt"> <asp:Label class="required" ID="Label15" runat="server" Text=" *"></asp:Label></asp:Label>
										    <div class="col-md-4">
											     <asp:TextBox ID="txtspecification" placeholder="  Full specification of product" class="form-control" runat="server" TextMode="MultiLine" Height="66px"></asp:TextBox>
										    </div>
									</div>
                                    <!----------------------------------------tag end------------------------------------------>
                                 <!-------------------------------------------tag start replment-------------------------------->
									<div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblreplament" runat="server" Text="Replament Day"  Font-Size="12pt"> <asp:Label class="required" ID="Label13" runat="server" Text=" *"></asp:Label></asp:Label>
										    <div class="col-md-4">
											        <asp:TextBox ID="txtreplmentday" placeholder="Replament Day of product" class="form-control" runat="server"></asp:TextBox>
										    </div>
									</div>
                                    <!----------------------------------------tag end------------------------------------------>
                                 <!-------------------------------------------tag start deliver-------------------------------->
									<div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lbldelver" runat="server" Text="Deliver"  Font-Size="12pt"> <asp:Label class="required" ID="Label14" runat="server" Text=" *"></asp:Label></asp:Label>
										    <div class="col-md-4">
											         <asp:TextBox ID="txtdeliver" placeholder="Enter Poduct Deliver Time" class="form-control" runat="server"></asp:TextBox>
										    </div>
									</div>
                                    <!----------------------------------------tag end------------------------------------------>
                               
                                      
									
								<!----------------------------button------------------------------------------------------------------------>
                                            <div class="form-actions fluid">
												<div class="col-md-offset-3 col-md-9">
                                                    <asp:Button ID="btnsubmit" class="btn blue"  runat="server" OnClick="btnsubmit_Click" Text="Submit"   />
													<asp:Button ID="btnreset" runat="server" class="btn default " OnClick="btnreset_Click" Text="Reset"  />

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

