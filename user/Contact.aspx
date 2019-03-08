<%@ Page Title="" Language="C#" MasterPageFile="~/user/user_master.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="user_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   

		<div class="wide_layout relative">


			<section class="breadcrumbs">

				<div class="container">

					<ul class="horizontal_list clearfix bc_list f_size_medium">

						<li class="m_right_10 current"><a href="#" class="default_t_color">Home<i class="fa fa-angle-right d_inline_middle m_left_10" style="margin-left:10px;"></i></a></li>

						<li><a href="#" class="default_t_color">Contacts</a></li>

					</ul>

				</div>

			</section>

			<!--content-->

			<div class="page_content_offset">

				<div class="container">

					<div class="row clearfix">

						<!--left content column-->

						<section class="col-lg-9 col-md-9 col-sm-9">

							<h2 class="tt_uppercase color_dark m_bottom_25">Contacts</h2>

							<div class="r_corners photoframe map_container shadow m_bottom_45">

								<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d229.56032056377867!2d72.6281409156184!3d22.988309743542963!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0000000000000000%3A0x5fda59d63bed93fd!2sKarnawati+Ice+Cream+Parlour!5e0!3m2!1sen!2sin!4v1428172810885" width="828" height="364" frameborder="0" style="border:0"></iframe>

							</div>

							<div class="row clearfix">

								<div class="col-lg-4 col-md-4 col-sm-4 m_xs_bottom_30">

									<h2 class="tt_uppercase color_dark m_bottom_25">Contact Info</h2>

									<ul class="c_info_list">

										<li class="m_bottom_10">

											<div class="clearfix m_bottom_15">

												<i class="fa fa-map-marker f_left color_dark"></i>

												<p class="contact_e">8901 Marmora Road,<br> Glasgow, D04 89GR.</p>

											</div>

										</li>

										<li class="m_bottom_10">

											<div class="clearfix m_bottom_10">

												<i class="fa fa-phone f_left color_dark"></i>

												<p class="contact_e">800-559-65-80</p>

											</div>

										</li>

										<li class="m_bottom_10">

											<div class="clearfix m_bottom_10">

												<i class="fa fa-envelope f_left color_dark"></i>

												<a class="contact_e default_t_color" href="mailto:#">info@companyname.com</a>

											</div>

										</li>

										<li>

											<div class="clearfix">

												<i class="fa fa-clock-o f_left color_dark"></i>

												<p class="contact_e">Monday - Friday: 08.00-20.00 <br>Saturday: 09.00-15.00<br> Sunday: closed</p>

											</div>

										</li>

									</ul>

								</div>

								<div class="col-lg-8 col-md-8 col-sm-8 m_xs_bottom_30">

									<h2 class="tt_uppercase color_dark m_bottom_25">Contact Form</h2>

									<p class="m_bottom_10">Send an email. All fields with an <span class="scheme_color">*</span> are required.</p>

									<div runat="server" id="contactform">

										<ul>

											<li class="clearfix m_bottom_15">

												<div class="f_left half_column">

                                                    <asp:Label ID="lblyourname" runat="server" CssClass="required d_inline_b m_bottom_5" Text="Your Name"></asp:Label>

                                                    <asp:TextBox ID="txtcfname" CssClass="full_width r_corners" runat="server"></asp:TextBox>

												</div>

												<div class="f_left half_column">

                                                    <asp:Label ID="lblemail" runat="server" CssClass="required d_inline_b m_bottom_5" Text="Email"></asp:Label>

                                                    <asp:TextBox ID="txtemail" CssClass="full_width r_corners" runat="server"></asp:TextBox>

												</div>

											</li>

											<li class="m_bottom_15">

                                                   <asp:Label ID="lblsubject" runat="server" CssClass="required d_inline_b m_bottom_5" Text="Subject"></asp:Label>

                                                    <asp:TextBox ID="txtsubject" CssClass="full_width r_corners" runat="server"></asp:TextBox>

											</li>

											<li class="m_bottom_15">

                                                   <asp:Label ID="lblmessage" runat="server" CssClass="required d_inline_b m_bottom_5" Text="Message"></asp:Label>

                                                    <asp:TextBox ID="txtmessage" CssClass="full_width r_corners" runat="server"></asp:TextBox>

											</li>

											<li>

                                                        <asp:Button ID="btnsend" CssClass="button_type_4 bg_light_color_2 r_corners mw_0 tr_all_hover color_dark" runat="server" Text="Send" />
	
											</li>

										</ul>

									</div>

								</div>

							</div>

						</section>

						<!--right column-->

						<aside class="col-lg-3 col-md-3 col-sm-3">

							<!--widgets-->

							<figure class="widget shadow r_corners wrapper m_bottom_30">

								<figcaption>

									<h3 class="color_light">Categories</h3>

								</figcaption>

								<div class="widget_content">

									<!--Categories list-->

									<ul class="categories_list">

										<li class="active">

											<a href="#" class="f_size_large scheme_color d_block relative">

												<b>Women</b>

												<span class="bg_light_color_1 r_corners f_right color_dark talign_c"></span>

											</a>

											<!--second level-->

											<ul>

												<li class="active">

													<a href="#" class="d_block f_size_large color_dark relative">

														Dresses<span class="bg_light_color_1 r_corners f_right color_dark talign_c"></span>

													</a>

													<!--third level-->

													<ul>

														<li><a href="#" class="color_dark d_block">Evening Dresses</a></li>

														<li><a href="#" class="color_dark d_block">Casual Dresses</a></li>

														<li><a href="#" class="color_dark d_block">Party Dresses</a></li>

													</ul>

												</li>

												<li>

													<a href="#" class="d_block f_size_large color_dark relative">

														Accessories<span class="bg_light_color_1 r_corners f_right color_dark talign_c"></span>

													</a>

												</li>

												<li>

													<a href="#" class="d_block f_size_large color_dark relative">

														Tops<span class="bg_light_color_1 r_corners f_right color_dark talign_c"></span>

													</a>

												</li>

											</ul>

										</li>

										<li>

											<a href="#" class="f_size_large color_dark d_block relative">

												<b>Men</b>

												<span class="bg_light_color_1 r_corners f_right color_dark talign_c"></span>

											</a>

											<!--second level-->

											<ul class="d_none">

												<li>

													<a href="#" class="d_block f_size_large color_dark relative">

														Shorts<span class="bg_light_color_1 r_corners f_right color_dark talign_c"></span>

													</a>

													<!--third level-->

													<ul class="d_none">

														<li><a href="#" class="color_dark d_block">Evening</a></li>

														<li><a href="#" class="color_dark d_block">Casual</a></li>

														<li><a href="#" class="color_dark d_block">Party</a></li>

													</ul>

												</li>

											</ul>

										</li>

										<li>

											<a href="#" class="f_size_large color_dark d_block relative">

												<b>Kids</b>

												<span class="bg_light_color_1 r_corners f_right color_dark talign_c"></span>

											</a>

										</li>

									</ul>

								</div>

							</figure>

							<!--compare products-->

							<figure class="widget shadow r_corners wrapper m_bottom_30">

								<figcaption>

									<h3 class="color_light">Compare Products</h3>

								</figcaption>

								<div class="widget_content">

									You have no product to compare.

								</div>

							</figure>

							<!--banner-->

							<a href="#" class="d_block r_corners m_bottom_30">

								<img src="images/banner_img_6.jpg" alt="">

							</a>

						</aside>

					</div>

				</div>

			</div>

			<!--markup footer-->

			

		</div>

	
		

		
		
		

</asp:Content>



