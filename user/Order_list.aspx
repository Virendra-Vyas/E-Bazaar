﻿<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="Order_list.aspx.cs" Inherits="user_Order_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <header>

		<title>Window Shopping - Orders List</title>

		<meta charset="utf-8">

		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<!--meta info-->

		<meta name="author" content="">

		<meta name="keywords" content="">

		<meta name="description" content="">

		<link rel="icon" type="image/ico" href="images/fav.ico">

		<!--stylesheet include-->

		<link rel="stylesheet" type="text/css" media="all" href="css/colorpicker.css">

		<link rel="stylesheet" type="text/css" media="all" href="css/bootstrap.min.css">

		 <link rel="stylesheet" type="text/css" media="all" href="css/style.css">

		<link rel="stylesheet" type="text/css" media="all" href="css/rtl.html">

		<!--font include-->

		<link href="css/font-awesome.min.css" rel="stylesheet">

		<script src="js/modernizr.js"></script>

	</header>

	<div>


		<!--wide layout-->

		<div class="wide_layout relative">

			<!--[if (lt IE 9) | IE 9]>

				<div style="background:#fff;padding:8px 0 10px;">

				<div class="container" style="width:1170px;"><div class="row wrapper"><div class="clearfix" style="padding:9px 0 0;float:left;width:83%;"><i class="fa fa-exclamation-triangle scheme_color f_left m_right_10" style="font-size:25px;color:#e74c3c;"></i><b style="color:#e74c3c;">Attention! This page may not display correctly.</b> <b>You are using an outdated version of Internet Explorer. For a faster, safer browsing experience.</b></div><div class="t_align_r" style="float:left;width:16%;"><a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode" class="button_type_4 r_corners bg_scheme_color color_light d_inline_b t_align_c" target="_blank" style="margin-bottom:2px;">Update Now!</a></div></div></div></div>

			<![endif]--

			<!--breadcrumbs-->

			<section class="breadcrumbs">

				<div class="container">

					<ul class="horizontal_list clearfix bc_list f_size_medium">

						<li class="m_right_10 current"><a href="#" class="default_t_color">Home<i class="fa fa-angle-right d_inline_middle m_left_10" style="margin-left:10px;"></i></a></li>

						<li><a href="#" class="default_t_color">Orders List</a></li>

					</ul>

				</div>

			</section>

			<!--content-->

			<div class="page_content_offset">

				<div class="container">

					<div class="row clearfix">

						<!--left content column-->

						<section class="col-lg-9 col-md-9 col-sm-9">

							<h2 class="tt_uppercase color_dark m_bottom_30">Orders List</h2>

							<!--orders list table-->

							<table class="table_type_3 responsive_table full_width r_corners wrapper shadow bg_light_color_1 m_bottom_30 t_align_l">

								<thead>

									<tr class="f_size_large">

										<!--titles for td-->

										<th>Order Number</th>

										<th>Order Date</th>

										<th>Order Status</th>

										<th>Total</th>

									</tr>

								</thead>

								<tbody>

									<tr>

										<!--order number-->

										<td data-title="Order Number"><a href="order_details.html" class="color_dark">4daf03</a></td>

										<!--order date-->

										<td data-title="Order Date">2013-01-03</td>

										<!--order status-->

										<td data-title="Order Status">Confirmed by shopper</td>

										<!--quanity-->

										<td data-title="Total"><span class="f_size_large fw_medium scheme_color">$102.00</span></td>

									</tr>

									<tr>

										<!--order number-->

										<td data-title="Order Number"><a href="order_details.html" class="color_dark">4daf03</a></td>

										<!--order date-->

										<td data-title="Order Date">2013-01-03</td>

										<!--order status-->

										<td data-title="Order Status">Confirmed by shopper</td>

										<!--quanity-->

										<td data-title="Total"><span class="f_size_large fw_medium scheme_color">$102.00</span></td>

									</tr>

									<tr>

										<!--order number-->

										<td data-title="Order Number"><a href="order_details.html" class="color_dark">4daf03</a></td>

										<!--order date-->

										<td data-title="Order Date">2013-01-03</td>

										<!--order status-->

										<td data-title="Order Status">Confirmed by shopper</td>

										<!--quanity-->

										<td data-title="Total"><span class="f_size_large fw_medium scheme_color">$102.00</span></td>

									</tr>

								</tbody>

							</table>

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

		<ul class="social_widgets d_xs_none">

			<!--facebook-->

			<li class="relative">

				<button class="sw_button t_align_c facebook"><i class="fa fa-facebook"></i></button>

				<div class="sw_content">

					<h3 class="color_dark m_bottom_20">Join Us on Facebook</h3>

					<iframe src="http://www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2Fenvato&amp;width=235&amp;height=258&amp;colorscheme=light&amp;show_faces=true&amp;header=false&amp;stream=false&amp;show_border=false&amp;appId=438889712801266" style="border:none; overflow:hidden; width:235px; height:258px;"></iframe>

				</div>

			</li>

			<!--twitter feed-->

			<li class="relative">

				<button class="sw_button t_align_c twitter"><i class="fa fa-twitter"></i></button>

				<div class="sw_content">

					<h3 class="color_dark m_bottom_20">Latest Tweets</h3>

					<div class="twitterfeed m_bottom_25"></div>

					<a role="button" class="button_type_4 d_inline_b r_corners tr_all_hover color_light tw_color" href="https://twitter.com/fanfbmltemplate">Follow on Twitter</a>

				</div>	

			</li>

			<!--contact form-->

			<li class="relative">

				<button class="sw_button t_align_c contact"><i class="fa fa-envelope-o"></i></button>

				<div class="sw_content">

					<h3 class="color_dark m_bottom_20">Contact Us</h3>

					<p class="f_size_medium m_bottom_15">Lorem ipsum dolor sit amet, consectetuer adipis mauris</p>

					<form id="contactform" class="mini">

						<input class="f_size_medium m_bottom_10 r_corners full_width" type="text" name="cf_name" placeholder="Your name">

						<input class="f_size_medium m_bottom_10 r_corners full_width" type="email" name="cf_email" placeholder="Email">

						<textarea class="f_size_medium r_corners full_width m_bottom_20" placeholder="Message" name="cf_message"></textarea>

						<button type="submit" class="button_type_4 r_corners mw_0 tr_all_hover color_dark bg_light_color_2">Send</button>

					</form>

				</div>	

			</li>

			<!--contact info-->

			<li class="relative">

				<button class="sw_button t_align_c googlemap"><i class="fa fa-map-marker"></i></button>

				<div class="sw_content">

					<h3 class="color_dark m_bottom_20">Store Location</h3>

					<ul class="c_info_list">

						<li class="m_bottom_10">

							<div class="clearfix m_bottom_15">

								<i class="fa fa-map-marker f_left color_dark"></i>

								<p class="contact_e">8901 Marmora Road,<br> Glasgow, D04 89GR.</p>

							</div>

							<iframe class="r_corners full_width" id="gmap_mini" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=ru&amp;geocode=&amp;q=Manhattan,+New+York,+NY,+United+States&amp;aq=0&amp;oq=monheten&amp;sll=37.0625,-95.677068&amp;sspn=65.430355,129.814453&amp;t=m&amp;ie=UTF8&amp;hq=&amp;hnear=%D0%9C%D0%B0%D0%BD%D1%85%D1%8D%D1%82%D1%82%D0%B5%D0%BD,+%D0%9D%D1%8C%D1%8E-%D0%99%D0%BE%D1%80%D0%BA,+%D0%9D%D1%8C%D1%8E+%D0%99%D0%BE%D1%80%D0%BA,+%D0%9D%D1%8C%D1%8E-%D0%99%D0%BE%D1%80%D0%BA&amp;ll=40.790278,-73.959722&amp;spn=0.015612,0.031693&amp;z=13&amp;output=embed"></iframe>

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

			</li>

		</ul>

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

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <footer id="footer">

				<div class="footer_top_part">

					<div class="container">

						<div class="row clearfix">

							<div class="col-lg-3 col-md-3 col-sm-3 m_xs_bottom_30">

								<h3 class="color_light_2 m_bottom_20">About</h3>

								<p class="m_bottom_25">Ut pharetra augue nec augue. Nam elit agna, endrerit sit amet, tincidunt ac, viverra sed, nulla. Donec porta diam eu massa. Quisque diam lorem, interdum vitae, dapibus ac, scelerisque.</p>

								<!--social icons-->

								<ul class="clearfix horizontal_list social_icons">

									<li class="facebook m_bottom_5 relative">

										<span class="tooltip tr_all_hover r_corners color_dark f_size_small">Facebook</span>

										<a href="#" class="r_corners t_align_c tr_delay_hover f_size_ex_large">

											<i class="fa fa-facebook"></i>

										</a>

									</li>

									<li class="twitter m_left_5 m_bottom_5 relative">

										<span class="tooltip tr_all_hover r_corners color_dark f_size_small">Twitter</span>

										<a href="#" class="r_corners f_size_ex_large t_align_c tr_delay_hover">

											<i class="fa fa-twitter"></i>

										</a>

									</li>

									<li class="google_plus m_left_5 m_bottom_5 relative">

										<span class="tooltip tr_all_hover r_corners color_dark f_size_small">Google Plus</span>

										<a href="#" class="r_corners f_size_ex_large t_align_c tr_delay_hover">

											<i class="fa fa-google-plus"></i>

										</a>

									</li>

									<li class="rss m_left_5 m_bottom_5 relative">

										<span class="tooltip tr_all_hover r_corners color_dark f_size_small">Rss</span>

										<a href="#" class="r_corners f_size_ex_large t_align_c tr_delay_hover">

											<i class="fa fa-rss"></i>

										</a>

									</li>

									<li class="pinterest m_left_5 m_bottom_5 relative">

										<span class="tooltip tr_all_hover r_corners color_dark f_size_small">Pinterest</span>

										<a href="#" class="r_corners f_size_ex_large t_align_c tr_delay_hover">

											<i class="fa fa-pinterest"></i>

										</a>

									</li>

									<li class="instagram m_left_5 m_bottom_5 relative">

										<span class="tooltip tr_all_hover r_corners color_dark f_size_small">Instagram</span>

										<a href="#" class="r_corners f_size_ex_large t_align_c tr_delay_hover">

											<i class="fa fa-instagram"></i>

										</a>

									</li>

									<li class="linkedin m_bottom_5 m_sm_left_5 relative">

										<span class="tooltip tr_all_hover r_corners color_dark f_size_small">LinkedIn</span>

										<a href="#" class="r_corners f_size_ex_large t_align_c tr_delay_hover">

											<i class="fa fa-linkedin"></i>

										</a>

									</li>

									<li class="vimeo m_left_5 m_bottom_5 relative">

										<span class="tooltip tr_all_hover r_corners color_dark f_size_small">Vimeo</span>

										<a href="#" class="r_corners f_size_ex_large t_align_c tr_delay_hover">

											<i class="fa fa-vimeo-square"></i>

										</a>

									</li>

									<li class="youtube m_left_5 m_bottom_5 relative">

										<span class="tooltip tr_all_hover r_corners color_dark f_size_small">Youtube</span>

										<a href="#" class="r_corners f_size_ex_large t_align_c tr_delay_hover">

											<i class="fa fa-youtube-play"></i>

										</a>

									</li>

									<li class="flickr m_left_5 m_bottom_5 relative">

										<span class="tooltip tr_all_hover r_corners color_dark f_size_small">Flickr</span>

										<a href="#" class="r_corners f_size_ex_large t_align_c tr_delay_hover">

											<i class="fa fa-flickr"></i>

										</a>

									</li>

									<li class="envelope m_left_5 m_bottom_5 relative">

										<span class="tooltip tr_all_hover r_corners color_dark f_size_small">Contact Us</span>

										<a href="#" class="r_corners f_size_ex_large t_align_c tr_delay_hover">

											<i class="fa fa-envelope-o"></i>

										</a>

									</li>

								</ul>

							</div>

							<div class="col-lg-3 col-md-3 col-sm-3 m_xs_bottom_30">

								<h3 class="color_light_2 m_bottom_20">The Service</h3>

								<ul class="vertical_list">

									<li><a class="color_light tr_delay_hover" href="#">My account<i class="fa fa-angle-right"></i></a></li>

									<li><a class="color_light tr_delay_hover" href="#">Order history<i class="fa fa-angle-right"></i></a></li>

									<li><a class="color_light tr_delay_hover" href="#">Wishlist<i class="fa fa-angle-right"></i></a></li>

									<li><a class="color_light tr_delay_hover" href="#">Vendor contact<i class="fa fa-angle-right"></i></a></li>

									<li><a class="color_light tr_delay_hover" href="#">Front page<i class="fa fa-angle-right"></i></a></li>

									<li><a class="color_light tr_delay_hover" href="#">Virtuemart categories<i class="fa fa-angle-right"></i></a></li>

								</ul>

							</div>

							<div class="col-lg-3 col-md-3 col-sm-3 m_xs_bottom_30">

								<h3 class="color_light_2 m_bottom_20">Information</h3>

								<ul class="vertical_list">

									<li><a class="color_light tr_delay_hover" href="#">About us<i class="fa fa-angle-right"></i></a></li>

									<li><a class="color_light tr_delay_hover" href="#">New collection<i class="fa fa-angle-right"></i></a></li>

									<li><a class="color_light tr_delay_hover" href="#">Best sellers<i class="fa fa-angle-right"></i></a></li>

									<li><a class="color_light tr_delay_hover" href="#">Manufacturers<i class="fa fa-angle-right"></i></a></li>

									<li><a class="color_light tr_delay_hover" href="#">Privacy policy<i class="fa fa-angle-right"></i></a></li>

									<li><a class="color_light tr_delay_hover" href="#">Terms &amp; condition<i class="fa fa-angle-right"></i></a></li>

								</ul>

							</div>

							<div class="col-lg-3 col-md-3 col-sm-3">

								<h3 class="color_light_2 m_bottom_20">Newsletter</h3>

								<p class="f_size_medium m_bottom_15">Sign up to our newsletter and get exclusive deals you wont find anywhere else straight to your inbox!</p>

								<form id="newsletter">

									<input type="email" placeholder="Your email address" class="m_bottom_20 r_corners f_size_medium full_width" name="newsletter-email">

									<button type="submit" class="button_type_8 r_corners bg_scheme_color color_light tr_all_hover">Subscribe</button>

								</form>

							</div>

						</div>

					</div>

				</div>

				<!--copyright part-->

				<div class="footer_bottom_part">

					<div class="container clearfix t_mxs_align_c">

						<p class="f_left f_mxs_none m_mxs_bottom_10">&copy; 2014 <span class="color_light">Flatastic</span>. All Rights Reserved.</p>

						<ul class="f_right horizontal_list clearfix f_mxs_none d_mxs_inline_b">

							<li><img src="images/payment_img_1.png" alt=""></li>

							<li class="m_left_5"><img src="images/payment_img_2.png" alt=""></li>

							<li class="m_left_5"><img src="images/payment_img_3.png" alt=""></li>

							<li class="m_left_5"><img src="images/payment_img_4.png" alt=""></li>

							<li class="m_left_5"><img src="images/payment_img_5.png" alt=""></li>

						</ul>

					</div>

				</div>

			</footer>
</asp:Content>

