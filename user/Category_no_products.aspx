<%@ Page Title="" Language="C#" MasterPageFile="~/user/user_master.master" AutoEventWireup="true" CodeFile="Category_no_products.aspx.cs" Inherits="user_Category_no_products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    

	<div>

		<!--wide layout-->

		<div class="wide_layout relative">

		<!--[if (lt IE 9) | IE 9]>

				<div style="background:#fff;padding:8px 0 10px;">

				<div class="container" style="width:1170px;"><div class="row wrapper"><div class="clearfix" style="padding:9px 0 0;float:left;width:83%;"><i class="fa fa-exclamation-triangle scheme_color f_left m_right_10" style="font-size:25px;color:#e74c3c;"></i><b style="color:#e74c3c;">Attention! This page may not display correctly.</b> <b>You are using an outdated version of Internet Explorer. For a faster, safer browsing experience.</b></div><div class="t_align_r" style="float:left;width:16%;"><a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode" class="button_type_4 r_corners bg_scheme_color color_light d_inline_b t_align_c" target="_blank" style="margin-bottom:2px;">Update Now!</a></div></div></div></div>

			<![endif]-->

			<!--breadcrumbs-->

			<section class="breadcrumbs">

				<div class="container">

					<ul class="horizontal_list clearfix bc_list f_size_medium">

						<li class="m_right_10 current"><a href="#" class="default_t_color">Home<i class="fa fa-angle-right d_inline_middle m_left_10" style="margin-left:10px;"></i></a></li>

						<li><a href="#" class="default_t_color">Men</a></li>

					</ul>

				</div>

			</section>

			<!--content-->

			<div class="page_content_offset">

				<div class="container">

					<div class="row clearfix">

						<!--left content column-->

						<section class="col-lg-9 col-md-9 col-sm-9">

							<h2 class="tt_uppercase color_dark m_bottom_30">Men</h2>

							<div class="clearfix m_bottom_30">

								<figure>

									<div class="photoframe shadow wrapper f_left f_xs_none d_xs_inline_b m_right_30 r_corners m_sm_bottom_10">

										<img class="tr_all_long_hover" src="images/man_img_1.jpg" alt="">

									</div>

									<figcaption class="f_size_large p_top_10">

										<p class="m_bottom_15">Ut tellus dolor, dapibus eget, elementum vel, cursus eleifend, elit. Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Donec sit amet eros. Lorem ipsum dolor sit amet, consecvtetuer adipiscing elit. Mauris fermentum dictum magna. </p>

										<p>Sed laoreet aliquam leo. Ut tellus dolor, dapibus eget, elementum vel, cursus eleifend, elit. Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Integer rutrum ante eu lacus.Vestibulum libero nisl, porta vel, scelerisque eget, malesuada at, neque. Vivamus eget nibh. Etiam cursus leo vel. </p>

									</figcaption>

								</figure>

							</div>

							<div class="alert_box r_corners info m_bottom_10 m_xs_bottom_30">

								<i class="fa fa-info-circle"></i><p>There are no products in this category.</p>

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

						</aside>

					</div>

				</div>

			</div>


		</div>

		<!--social widgets-->

		<!--login popup-->

		<div class="popup_wrap d_none" id="login_popup">

			<section class="popup r_corners shadow">

				<button class="bg_tr color_dark tr_all_hover text_cs_hover close f_size_large"><i class="fa fa-times"></i></button>

				<h3 class="m_bottom_20 color_dark">Log In</h3>

				<form>

					<ul>

						<li class="m_bottom_15">

							<label for="username" class="m_bottom_5 d_inline_b">Username</label><br>

							<input type="text" name="" id="username" class="r_corners full_width">

						</li>

						<li class="m_bottom_25">

							<label for="password" class="m_bottom_5 d_inline_b">Password</label><br>

							<input type="password" name="" id="password" class="r_corners full_width">

						</li>

						<li class="m_bottom_15">

							<input type="checkbox" class="d_none" id="checkbox_10"><label for="checkbox_10">Remember me</label>

						</li>

						<li class="clearfix m_bottom_30">

							<button class="button_type_4 tr_all_hover r_corners f_left bg_scheme_color color_light f_mxs_none m_mxs_bottom_15">Log In</button>

							<div class="f_right f_size_medium f_mxs_none">

								<a href="#" class="color_dark">Forgot your password?</a><br>

								<a href="#" class="color_dark">Forgot your username?</a>

							</div>

						</li>

					</ul>

				</form>

				<footer class="bg_light_color_1 t_mxs_align_c">

					<h3 class="color_dark d_inline_middle d_mxs_block m_mxs_bottom_15">New Customer?</h3>

					<a href="#" role="button" class="tr_all_hover r_corners button_type_4 bg_dark_color bg_cs_hover color_light d_inline_middle m_mxs_left_0">Create an Account</a>

				</footer>

			</section>

		</div>

		<button class="t_align_c r_corners tr_all_hover type_2 animate_ftl" id="go_to_top"><i class="fa fa-angle-up"></i></button>

		<!--scripts include-->

		<script src="js/jquery-2.1.0.min.js"></script>

		<script src="js/jquery-ui.min.js"></script>

		<script src="js/retina.js"></script>

		<script src="js/waypoints.min.js"></script>

		<script src="js/jquery.tweet.min.js"></script>

		<script src="js/styleswitcher.js"></script>

		<script src="js/colorpicker.js"></script>

		<script src="js/scripts_rtl.js"></script>

	</div>



</asp:Content>



