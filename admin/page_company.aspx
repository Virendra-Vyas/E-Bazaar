﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="page_company.aspx.cs" Inherits="admin_page_company" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <header>
        <title>
            Add Company
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
								<asp:Label ID="lbl_title_pages" runat="server" Text="Pages "></asp:Label>
							</a>
							<i class="fa fa-angle-right"></i>
						</li>
                        <li>
							<a href="page_company.aspx">
								<asp:Label ID="lbl_title_multi_menu" runat="server" Text="Multi Menu"></asp:Label>
							</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="page_company.aspx">
								<asp:Label ID="lbl_title_company" runat="server" Text="Company"></asp:Label>
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
								<asp:Label ID="Label5" runat="server" Text="Basic Information"></asp:Label>
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
													<asp:Label class="control-label col-md-3" ID="lblvisi" runat="server" Text="Visible"  Font-Size="12pt" > <asp:Label class="required" ID="Label6" runat="server" Text=" *"> </asp:Label></asp:Label>
													<div class="col-md-4">
														
															 <asp:DropDownList  class="form-control"  ID="DropDownList_company" runat="server"  Font-Size="15px" ForeColor="#666633">
                                                             <asp:ListItem>Visible-Company</asp:ListItem>
                                                             <asp:ListItem Value="True">Yes</asp:ListItem>
                                                             <asp:ListItem Value="false">No</asp:ListItem>
                                                            </asp:DropDownList>
														
													</div>
												</div>

                                </div>
                                <!----------------------------button------------------------------------------------------------------------>
                                            <div class="form-actions fluid">
												<div class="col-md-offset-3 col-md-9">
                                                    <asp:Button ID="btnsubmit" class="btn blue"  runat="server" Text="Submit" OnClick="btnsubmit_Click"  />
													<asp:Button ID="btnreset" runat="server" class="btn default " Text="Reset" OnClick="btncancel_Click" />
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

