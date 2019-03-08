<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="page_add_sub_admin.aspx.cs" Inherits="admin_assets_page_add_sub_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <header>
        <title>
           Sub Admin
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
							<a href="form_add_admin.aspx">
								<asp:Label ID="lbl_title_pages" runat="server" Text="Pages"></asp:Label>
							</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="form_add_admin.aspx">
								<asp:Label ID="lbl_title_product" runat="server" Text="Sub Admin"></asp:Label>
							</a>
						</li>
					</ul>
					<!-- END PAGE TITLE & BREADCRUMB-->
                </div>
            </div>
            <div class="row">
				<div class="col-md-12">
					<!-- BEGIN VALIDATION STATES-->
					<div class="portlet box blue">
						<div class="portlet-title">
							<div class="caption">
							<i class="fa fa-reorder"></i><asp:Label ID="Label1" runat="server" Text="Create Account"></asp:Label>
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
                            <div class="form-horizontal" >
                                <div class="form-body">
                                    <h3 class="form-section"><asp:Label ID="Label2" runat="server" Text="Personal Detail's" ForeColor="#3399FF"></asp:Label></h3>
                                    <!-------------------------------------------tag start name-------------------------------->
									<div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblf_name" runat="server" Text="frist Name"  Font-Size="12pt"> <asp:Label class="required" ID="Label11" runat="server" Text=" *"></asp:Label></asp:Label>
										    <div class="col-md-4">
											      <asp:TextBox ID="txtf_name" placeholder=" Frist name" class="form-control" runat="server"></asp:TextBox>
										    </div>
									</div>
                                    <div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblm_name" runat="server" Text="Middel Name"  Font-Size="12pt"> <asp:Label class="required" ID="Label15" runat="server" Text=" *"></asp:Label></asp:Label>
										    <div class="col-md-4">
											      <asp:TextBox ID="txtm_name" placeholder=" Middel name" class="form-control" runat="server"></asp:TextBox>
										    </div>
									</div>
                                    <div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lbll_name" runat="server" Text="Last Name"  Font-Size="12pt"> <asp:Label class="required" ID="Label17" runat="server" Text=" *"></asp:Label></asp:Label>
										    <div class="col-md-4">
											      <asp:TextBox ID="txtl_name" placeholder=" Last name" class="form-control" runat="server"></asp:TextBox>
										    </div>
									</div>
                                    <!----------------------------------------tag end------------------------------------------>
                                     <!-------------------------------------------tag start user-name-------------------------------->
									<div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblusername" runat="server" Text="User Name"  Font-Size="12pt"> <asp:Label class="required" ID="Label3" runat="server" Text=" *"> </asp:Label></asp:Label>
													<div class="col-md-4">
														
                                                        <asp:TextBox ID="txtusername" placeholder=" User Name" class="form-control" runat="server"></asp:TextBox>
														
													</div>
												</div>
									</div>
                                    <!----------------------------------------tag end------------------------------------------>
                                 <!-------------------------------------------tag start Address-------------------------------->
									<div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lbladdress" runat="server" Text="Address"  Font-Size="12pt"> <asp:Label class="required" ID="Label8" runat="server" Text=" *"></asp:Label></asp:Label>
										    <div class="col-md-4">
											     <asp:TextBox ID="txtaddress" placeholder="  Full Address" class="form-control" runat="server" TextMode="MultiLine" Height="66px"></asp:TextBox>
										    </div>
									</div>
                                    <!----------------------------------------tag end------------------------------------------>
                                     <!-------------------------------------------tag start email-------------------------------->
									<div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblemail" runat="server" Text="Emil"  Font-Size="12pt"> <asp:Label class="required" ID="Label6" runat="server" Text=" *"></asp:Label></asp:Label>
										    <div class="col-md-4">
											      <asp:TextBox ID="txtemail" placeholder="Email" class="form-control" runat="server" TextMode="Email"></asp:TextBox>
										    </div>
									</div>
                                    <!----------------------------------------tag end------------------------------------------>
                                     <!-------------------------------------------tag start number-------------------------------->
									<div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblcon" runat="server" Text="Contact Number"  Font-Size="12pt"> <asp:Label class="required" ID="Label13" runat="server" Text=" *"></asp:Label></asp:Label>
										    <div class="col-md-4">
											      <asp:TextBox ID="txtnumber" placeholder="+91--------Number" class="form-control" runat="server" TextMode="Phone"></asp:TextBox>
										    </div>
									</div>
                                    <!----------------------------------------tag end------------------------------------------>
                                     
                                     <!-------------------------------------------tag date-------------------------------->
									<div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lbldate" runat="server" Text="Date Of Birth"  Font-Size="12pt"> <asp:Label class="required" ID="Label10" runat="server" Text=" *"></asp:Label></asp:Label>
										    <div class="col-md-4">
											       <asp:TextBox ID="txtdate_of_brith" placeholder="" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
										    </div>
									</div>
                                    <!----------------------------------------tag end------------------------------------------>
                              <h3 class="form-section"><asp:Label ID="Label5" runat="server" Text=" Pssword Information" ForeColor="#3399FF"></asp:Label></h3>
                               
                                 <!-------------------------------------------tag start password-------------------------------->
									<div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblpassword" runat="server" Text="Password"  Font-Size="12pt"> <asp:Label class="required" ID="Label9" runat="server" Text=" *"></asp:Label></asp:Label>
										    <div class="col-md-4">
											       <asp:TextBox ID="txtpassword" placeholder=" Password" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
										    </div>
									</div>
                                    <!----------------------------------------tag end------------------------------------------>
                                <!-------------------------------------------tag con-password-------------------------------->
									<div class="form-group ">
										        <asp:Label  class="control-label col-md-3" ID="lblconpassword" runat="server" Text="Confirm Password"  Font-Size="12pt"> <asp:Label class="required" ID="Label18" runat="server" Text=" *"></asp:Label></asp:Label>
										    <div class="col-md-4">
											       <asp:TextBox ID="txtconpassword" placeholder=" Confirm Password" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
										    </div>
									</div>
                                    <!----------------------------------------tag end------------------------------------------>
                                <h3 class="form-section"><asp:Label ID="Label4" runat="server" Text=" Extra Information" ForeColor="#3399FF"></asp:Label></h3>

                                <!----------------------Start tage------------------------------------------------------>
                                             <div class="form-group">
													<asp:Label class="control-label col-md-3" ID="lblavgrating" runat="server" Text="Image"  Font-Size="12pt" > </asp:Label>
													<div class="col-md-4">
												
                                                        <asp:FileUpload ID="image_1"   runat="server"  />
														
													</div>
												</div>
                                        <!----------------------end tage------------------------------------------------------>
                       
									
								<!----------------------------button------------------------------------------------------------------------>
                                            <div class="form-actions fluid">
												<div class="col-md-offset-3 col-md-9">
                                                    <asp:Button ID="btnsubmit" class="btn blue"  runat="server" Text="Submit" OnClick="btnsubmit_Click"   />
													<asp:Button ID="btnreset" runat="server" class="btn default " Text="Reset" OnClick="btnreset_Click"  />
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
    </div>

</asp:Content>

