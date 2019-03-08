<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="extra_profile.aspx.cs" Inherits="admin_extra_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <header>
        <title>
            Admin|My Profile
        </title>
    </header>  
  <div class="page-content-wrapper">
		<div class="page-content">

			<div class="row">
				<div class="col-md-12">
					<h3 class="page-title">
					<asp:Label ID="lbl_title" runat="server" Text="Admin Profile"></asp:Label>
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
							<a href="extra_profile.aspx">
								<asp:Label ID="lbl_title_extra" runat="server" Text="Extra"></asp:Label>
							</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="extra_profile.aspx">
								<asp:Label ID="lbl_inbox_info" runat="server" Text="Profile"></asp:Label>
							</a>
						</li>
					</ul>
					<!-- END PAGE TITLE & BREADCRUMB-->
				</div>
			</div>    
             <div class="row profile">
				<div class="col-md-12">
					<!--BEGIN TABS-->
					<div class="tabbable tabbable-custom tabbable-full-width">
                        <ul class="nav nav-tabs">
							<li class="active">
								<a href="#view_profile" data-toggle="tab">
									 <asp:Label ID="lblviewprofile" runat="server" Text="view-Profile"></asp:Label>
								</a>
							</li>
							<li>
								<a href="#update" data-toggle="tab">
									<asp:Label ID="lblupdate" runat="server" Text="Update-Account"></asp:Label>
								</a>
							</li>
							
							
						</ul>
<!-----------------------------------------------------------profile------------------------------------------------------------------------->
                        <div class="tab-content">
							<div class="tab-pane active" id="view_profile">
								<div class="row">
									<div class="col-md-3">
                                        <ul class="list-unstyled profile-nav">
											<li>
                                                <asp:Image ID="adminprofile" runat="server" BorderColor="Black" Height="230px" Width="230px" />
											</li>
											
										
										</ul>
                                    </div>
                                    <div class="col-md-9">
										<div class="row">
											<div class="col-md-8 profile-info">
                                                <h3><asp:Label ID="lblname" runat="server" Text="Sharma Anil"></asp:Label></h3>
                                                <p>
													 Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt laoreet dolore magna aliquam tincidunt erat volutpat laoreet dolore magna aliquam tincidunt erat volutpat.
												 </p>
                                                <p>
                                                    <a href="#">
														<asp:Label ID="lblwebside" runat="server" Text=" www.mywebsite.com"></asp:Label>
													</a>
                                                </p>
                                                <ul class="list-inline">
													<li>
														<i class="fa fa-map-marker"></i> <asp:Label ID="lbllocation" runat="server" Text="Location"></asp:Label>
													</li>
                                                    <li>
														<i class="fa fa-calendar"></i> <asp:Label ID="lbldob" runat="server" Text="01 Jan 2015"></asp:Label>
													</li>
													<li>
														<i class="fa fa-briefcase"></i> <asp:Label ID="lblwork" runat="server" Text="Admin"></asp:Label>
													</li>
													
                                                </ul>
                                                 <table>
                                                 
                                                    
                                              <div class="col-md-3">
											            <a class="btn yellow" href="#form_modal2" data-toggle="modal">
												          View Profile 
											            </a>
                                                </div>
                                                <div id="form_modal2" class="modal fade" role="dialog" aria-hidden="true">
								                    <div class="modal-dialog">
									                    <div class="modal-content">
                                                            <div class="modal-header">
											                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
											                        <h4 class="modal-title">Admin Profile</h4>
										                     </div>
										
										                    <div class="modal-body">
											                    <form id="Form1" action="#" class="form-horizontal" >
												
												                    <div class="form-group">
                                                                        <asp:Label ID="lbl_title_f_name" class="control-label col-md-3" runat="server" Text="Frist Name  " ForeColor="#0066FF" Font-Size="15px"></asp:Label>
                                                                        <asp:Label ID="lbl_f_name" runat="server" Text="Sharma" Font-Size="15px"></asp:Label>
																										                       
												                        </div> 
                                                                    <div class="form-group">
                                                                        <asp:Label ID="lbl_title_m_name" class="control-label col-md-3" runat="server" Text="Middle Name  " ForeColor="#0066FF" Font-Size="15px"></asp:Label>
                                                                        <asp:Label ID="lbl_m_name" runat="server" Text="Anil" Font-Size="15px"></asp:Label>
																										                       
												                        </div>  
                                                                    <div class="form-group">
                                                                        <asp:Label ID="lbl_title_l_name" class="control-label col-md-3" runat="server" Text="Last Name  " ForeColor="#0066FF" Font-Size="15px"></asp:Label>
                                                                        <asp:Label ID="Label2" runat="server" Text="Ramakant" Font-Size="15px"></asp:Label>
																										                       
												                        </div>
                                                                     <div class="form-group">
                                                                        <asp:Label ID="lbl_title_email" class="control-label col-md-3" runat="server" Text="Email  " ForeColor="#0066FF" Font-Size="15px"></asp:Label>
                                                                        <asp:Label ID="lbl_email" runat="server" Text="Sharmaanil8866@gmail.com" Font-Size="15px"></asp:Label>
																										                       
												                        </div> 
                                                                     <div class="form-group">
                                                                        <asp:Label ID="lbl_title_username" class="control-label col-md-3" runat="server" Text="User Name  " ForeColor="#0066FF" Font-Size="15px"></asp:Label>
                                                                        <asp:Label ID="lbl_username" runat="server" Text="Sharmaanil" Font-Size="15px"></asp:Label>
																										                       
												                        </div>
                                                                    <div class="form-group">
                                                                        <asp:Label ID="lbl_title_password" class="control-label col-md-3" runat="server" Text="Password  " ForeColor="#0066FF" Font-Size="15px"></asp:Label>
                                                                        <asp:Label ID="lbl_password" runat="server" Text="9099323359" Font-Size="15px"></asp:Label>
																										                       
												                        </div> 
                                                                    <div class="form-group">
                                                                        <asp:Label ID="lbl_title_date" class="control-label col-md-3" runat="server" Text="Date Of Brith " ForeColor="#0066FF" Font-Size="15px"></asp:Label>
                                                                        <asp:Label ID="lbl_date" runat="server" Text="29/10/1994" Font-Size="15px"></asp:Label>
																										                       
												                        </div>    
                                                                    <div class="form-group">
                                                                        <asp:Label ID="lbl_title_address" class="control-label col-md-3" runat="server" Text="Address  " ForeColor="#0066FF" Font-Size="15px"></asp:Label>
                                                                        <asp:Label ID="lbl_t_address" runat="server" Text="New namningar Ahmedabad" Font-Size="15px"></asp:Label>
																										                       
												                        </div>
                                                                    <div class="form-group">
                                                                        <asp:Label ID="lbl_title_no" class="control-label col-md-3" runat="server" Text="Telephone " ForeColor="#0066FF" Font-Size="15px"></asp:Label>
                                                                        <asp:Label ID="lbl_no" runat="server" Text="8866458588" Font-Size="15px"></asp:Label>
																										                       
												                        </div>                                         
                                               
                                          																							
												
											                            </form>
										                        </div>
										                        <div class="modal-footer">
											                            <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
											
										                        </div>
									                            </div>
								                                </div>
							                                    </div>
                                                    
                                                   
                                                             </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
<!-----------------------------------------------------------end_profile------------------------------------------------------------------------------>
<!-----------------------------------------------------------update------------------------------------------------------------------------------------>
                            <div class="tab-pane" id="update">
								<div class="row profile-account">
									<div class="col-md-3">
                                        <ul class="ver-inline-menu tabbable margin-bottom-10">
											<li class="active">
												<a data-toggle="tab" href="#personal-info">
													<i class="fa fa-cog"></i> <asp:Label ID="lblinfo" runat="server" Text="Personal info"></asp:Label>
												</a>
												<span class="after">
												</span>
											</li>
											<li>
												<a data-toggle="tab" href="#change-image">
													<i class="fa fa-picture-o"></i> <asp:Label ID="lblchange" runat="server" Text="Change Image"></asp:Label>
												</a>
											</li>
											<li>
												<a data-toggle="tab" href="#change-password">
													<i class="fa fa-lock"></i> <asp:Label ID="lblchange_password" runat="server" Text="Change Password"></asp:Label>
												</a>
											</li>
											
										</ul>
                                    </div>
                                     <div class="col-md-9">
										<div class="tab-content">
											<div id="personal-info" class="tab-pane active">
                                                <form id="update_information">
													<div class="form-group">
                                                        <asp:Label ID="lblfname" runat="server" Text="Frist Name :"  class="control-label"  Font-Size="15px" ForeColor="#666666"></asp:Label>
                                                        <asp:TextBox ID="txtfname" runat="server" placeholder="Sharma" class="form-control" ></asp:TextBox>
													</div>

                                                <div class="form-group">
                                                        <asp:Label ID="lblmname" runat="server" Text="Middle Name :"  class="control-label"  Font-Size="15px" ForeColor="#666666"></asp:Label>
                                                        <asp:TextBox ID="txtmname" runat="server" placeholder="Anil" class="form-control" ></asp:TextBox>
													</div>

                                                <div class="form-group">
                                                        <asp:Label ID="lbllname" runat="server" Text="Last Name :"  class="control-label"  Font-Size="15px" ForeColor="#666666"></asp:Label>
                                                        <asp:TextBox ID="txtlname" runat="server" placeholder="Ramkant" class="form-control" ></asp:TextBox>
													</div>

                                                <div class="form-group">
                                                        <asp:Label ID="lblmail" runat="server" Text="Email :"  class="control-label"  Font-Size="15px" ForeColor="#666666"></asp:Label>
                                                        <asp:TextBox ID="txtemail" runat="server" placeholder="Sharmaanil8866@gmail.com" class="form-control" TextMode="Email" ></asp:TextBox>
													</div>

                                                <div class="form-group">
                                                        <asp:Label ID="lblusername1" runat="server" Text="User Name :"  class="control-label"  Font-Size="15px" ForeColor="#666666"></asp:Label>
                                                        <asp:TextBox ID="txtusername" runat="server" placeholder="Sharmaanil" class="form-control" ></asp:TextBox>
													</div>

                                                <div class="form-group">
                                                        <asp:Label ID="lbldate" runat="server" Text="Date of Brith:"  class="control-label"  Font-Size="15px" ForeColor="#666666"></asp:Label>
                                                        <asp:TextBox ID="txtdate" runat="server" placeholder="29/10/1994" class="form-control" TextMode="Date" ></asp:TextBox>
                                                    
													</div>

                                                <div class="form-group">
                                                        <asp:Label ID="lbl_address" runat="server" Text="Address :"  class="control-label"  Font-Size="15px" ForeColor="#666666"></asp:Label>
                                                        <asp:TextBox ID="txtaddress" runat="server" placeholder="Ahmedabad" class="form-control" TextMode="MultiLine"></asp:TextBox>
													</div>

                                                <div class="form-group">
                                                        <asp:Label ID="lbl_number" runat="server" Text="Telephone No :"  class="control-label"  Font-Size="15px" ForeColor="#666666"></asp:Label>
                                                        <asp:TextBox ID="TextBox7" runat="server" placeholder="8866458588" class="form-control" TextMode="Phone" ></asp:TextBox>
													</div>
													
													
													
													
													
													<div class="margiv-top-10">
                                                        <asp:Button ID="btnsave" runat="server" class="btn green"  Text="Save Changes" />
                                                        <asp:Button ID="btncancel" runat="server"  class="btn default" Text="Cancel" />
												
													</div>
                                            </form>
<!-----------------------------------------------------------------------------end_update--------------------------------------------------------->

                                            </div>
<!-----------------------------------------------------------------change_image-------------------------------------------------------------------->
                                            <div id="change-image" class="tab-pane">
                                                <p>
													 Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
												</p>
                                                <div class="form-group">
														<div class="fileinput fileinput-new" data-provides="fileinput">
															<div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
																<img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image" alt=""/>
															</div>
															<div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;">
															</div>
                                                             <div>
																<span class="btn default btn-file">
																	<span class="fileinput-new">
																		<asp:Label ID="lblselect" runat="server" Text="Select"></asp:Label>
																	</span>
																	<span class="fileinput-exists">
																		 <asp:Label ID="lblchange_image" runat="server" Text="Change"></asp:Label>
																	</span>
                                                                    <asp:FileUpload ID="FileUpload1" runat="server" />
																</span>
																<a href="#" class="btn default fileinput-exists" data-dismiss="fileinput">
																	 <asp:Label ID="lblremove_image" runat="server" Text="Remove"></asp:Label>
																</a>
															</div>
                                                        </div>
                                                    </div>
                                                <div class="margin-top-10">
                                                        <asp:Button ID="btnsumit_image" runat="server" Text="Submit" class="btn green"  />
                                                        <asp:Button ID="btncancel_image" runat="server" Text="Cancel" class="btn default"  />
														
													</div>
                                            </div>
     <!---------------------------------------------------------end----------------------------------------------------------------------------->
 <!----------------------------------------------------------start change-password---------------------------------------------------------->
                 <div id="change-password" class="tab-pane">
												
												<div class="form-group">
                                                    <asp:Label ID="lblcu_password" runat="server" Text="Current Password" class="control-label"  Font-Size="15px" ForeColor="#666666"></asp:Label>
                                                    <asp:TextBox ID="txtcu_password" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
														
												</div>
                                                <div class="form-group">
                                                    <asp:Label ID="lblnew_password" runat="server" Text="New Password" class="control-label"  Font-Size="15px" ForeColor="#666666"></asp:Label>
                                                    <asp:TextBox ID="txtnew_password" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
														
												</div>	
                                                <div class="form-group">
                                                    <asp:Label ID="lblretype_password" runat="server" Text="Re-type New Password" class="control-label"  Font-Size="15px" ForeColor="#666666"></asp:Label>
                                                    <asp:TextBox ID="txtretype_password" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
														
												</div>		
                                                
													<div class="margin-top-10">
                                                        <asp:Button ID="btn_change_password" runat="server" Text="Change Password" class="btn green" />
                                                        <asp:Button ID="btn_password_cancel" runat="server" Text=" Cancel" class="btn default" />
														
													
													</div>
												
											</div>
<!---------------------------------------------------------end----------------------------------------------------------------------------->
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
<script type="text/javascript" src="assets/plugins/bootstrap-fileinput/bootstrap-fileinput.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="assets/scripts/core/app.js"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
    jQuery(document).ready(function () {
        // initiate layout and plugins
        //App.init();
    });
</script>
</asp:Content>

