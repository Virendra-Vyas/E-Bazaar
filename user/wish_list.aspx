<%@ Page Title="" Language="C#" MasterPageFile="~/user/user_master.master" AutoEventWireup="true" CodeFile="wish_list.aspx.cs" Inherits="user_wish_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    

	<div>

		<!--wide layout-->

		<div class="wide_layout relative">


			<div class="page_content_offset">

				<div class="container">

					<div class="row clearfix">

						<!--left content column-->

						<section class="col-lg-9 col-md-9 col-sm-9 m_xs_bottom_30">

							<h2 class="tt_uppercase color_dark m_bottom_20">My Wishlist</h2>


							<!--wishlist table-->

							<table class="table_type_1 responsive_table full_width t_align_l r_corners wraper shadow bg_light_color_1 m_bottom_30">

								<thead>

									<tr class="f_size_large">

										<!--titles for td-->

										<th>Product Image</th>

										<th>Product Name</th>

										<th>Price</th>

										<th>Quanity</th>

										<th>Action</th>

									</tr>

								</thead>

								<tbody>

									<tr>

										<!--product image-->

										<td data-title="Product Image">
                                                <asp:Image ID="lbl_product_image" runat="server" ImageUrl="images/quick_view_img_10.jpg" />
                                           <%-- <img src="images/quick_view_img_10.jpg" alt="">--%>

										</td>

										<!--product name and category-->

										<td data-title="Product Name">

											

											
                                            <asp:Label ID="lbl_product_name" runat="server" Text="Eget elementum vel" class="fw_medium d_inline_b f_size_ex_large color_dark m_bottom_5"></asp:Label>

										</td>

										<!--product price-->

										<td data-title="Price">

											<span class="scheme_color fw_medium f_size_large">&#8377;102.00</span>

										</td>

										<!--quanity-->

										<td data-title="Quantity">

											

										</td>

										<!--add or remove buttons-->

										<td data-title="Action">
                                                <asp:Button ID="btn_add_cart" runat="server" Text="Add to Cart" class="button_type_4 bg_scheme_color r_corners tr_all_hover color_light mw_0 m_bottom_10" />
                                                <asp:LinkButton ID="lbl_remove" runat="server" class="color_dark"><i class="fa fa-times m_right_5"></i> Remove</asp:LinkButton>

											

										</td>

									</tr>

									

									

									

									

								</tbody>

							</table>

							<!--alert boxex-->

							<div class="alert_box r_corners color_green success m_bottom_10">

								<i class="fa fa-smile-o"></i><p>Well done! You successfully read this important alert message. </p>

							</div>

							<div class="alert_box r_corners info m_bottom_10">

								<i class="fa fa-info-circle"></i><p>As a guest, this list is stored in a cookie on your computer. For this reason it can not be shared. Login to import your list into our database to be able to share it.</p>

							</div>

							<div class="alert_box r_corners error">

								<i class="fa fa-exclamation-triangle"></i><p>Failed loading XML file </p>

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

							<!--Bestsellers-->

							<figure class="widget shadow r_corners wrapper m_bottom_30">

								<figcaption>

									<h3 class="color_light">Bestsellers</h3>

								</figcaption>

								<div class="widget_content">

									<div class="clearfix m_bottom_15">

										<img src="images/bestsellers_img_1.jpg" alt="" class="f_left m_right_15 m_sm_bottom_10 f_sm_none f_xs_left m_xs_bottom_0">

										<a href="#" class="color_dark d_block bt_link">Ut tellus dolor dapibus</a>

										<!--rating-->

										<ul class="horizontal_list clearfix d_inline_b rating_list type_2 tr_all_hover m_bottom_10">

											<li class="active">

												<i class="fa fa-star-o empty tr_all_hover"></i>

												<i class="fa fa-star active tr_all_hover"></i>

											</li>

											<li class="active">

												<i class="fa fa-star-o empty tr_all_hover"></i>

												<i class="fa fa-star active tr_all_hover"></i>

											</li>

											<li class="active">

												<i class="fa fa-star-o empty tr_all_hover"></i>

												<i class="fa fa-star active tr_all_hover"></i>

											</li>

											<li class="active">

												<i class="fa fa-star-o empty tr_all_hover"></i>

												<i class="fa fa-star active tr_all_hover"></i>

											</li>

											<li>

												<i class="fa fa-star-o empty tr_all_hover"></i>

												<i class="fa fa-star active tr_all_hover"></i>

											</li>

										</ul>

										<p class="scheme_color">$61.00</p>

									</div>

									<hr class="m_bottom_15">

									<div class="clearfix m_bottom_15">

										<img src="images/bestsellers_img_2.jpg" alt="" class="f_left m_right_15 m_sm_bottom_10 f_sm_none f_xs_left m_xs_bottom_0">

										<a href="#" class="color_dark d_block bt_link">Elementum vel</a>

										<!--rating-->

										<ul class="horizontal_list clearfix d_inline_b rating_list type_2 tr_all_hover m_bottom_10">

											<li class="active">

												<i class="fa fa-star-o empty tr_all_hover"></i>

												<i class="fa fa-star active tr_all_hover"></i>

											</li>

											<li class="active">

												<i class="fa fa-star-o empty tr_all_hover"></i>

												<i class="fa fa-star active tr_all_hover"></i>

											</li>

											<li class="active">

												<i class="fa fa-star-o empty tr_all_hover"></i>

												<i class="fa fa-star active tr_all_hover"></i>

											</li>

											<li class="active">

												<i class="fa fa-star-o empty tr_all_hover"></i>

												<i class="fa fa-star active tr_all_hover"></i>

											</li>

											<li>

												<i class="fa fa-star-o empty tr_all_hover"></i>

												<i class="fa fa-star active tr_all_hover"></i>

											</li>

										</ul>

										<p class="scheme_color">$57.00</p>

									</div>

									<hr class="m_bottom_15">

									<div class="clearfix m_bottom_5">

										<img src="images/bestsellers_img_3.jpg" alt="" class="f_left m_right_15 m_sm_bottom_10 f_sm_none f_xs_left m_xs_bottom_0">

										<a href="#" class="color_dark d_block bt_link">Crsus eleifend elit</a>

										<!--rating-->

										<ul class="horizontal_list clearfix d_inline_b rating_list type_2 tr_all_hover m_bottom_10">

											<li class="active">

												<i class="fa fa-star-o empty tr_all_hover"></i>

												<i class="fa fa-star active tr_all_hover"></i>

											</li>

											<li class="active">

												<i class="fa fa-star-o empty tr_all_hover"></i>

												<i class="fa fa-star active tr_all_hover"></i>

											</li>

											<li class="active">

												<i class="fa fa-star-o empty tr_all_hover"></i>

												<i class="fa fa-star active tr_all_hover"></i>

											</li>

											<li class="active">

												<i class="fa fa-star-o empty tr_all_hover"></i>

												<i class="fa fa-star active tr_all_hover"></i>

											</li>

											<li>

												<i class="fa fa-star-o empty tr_all_hover"></i>

												<i class="fa fa-star active tr_all_hover"></i>

											</li>

										</ul>

										<p class="scheme_color">$24.00</p>

									</div>

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

	

		<!--scripts include-->


	</div>
</asp:Content>

