<%@ Page Title="" Language="C#" MasterPageFile="~/user/after_login.master" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="user_checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="wide_layout relative">


			<section class="breadcrumbs">

				<div class="container">

					<ul class="horizontal_list clearfix bc_list f_size_medium">

						<li class="m_right_10 current"><a href="#" class="default_t_color">Home<i class="fa fa-angle-right d_inline_middle m_left_10" style="margin-left:10px;"></i></a></li>

						<li><a href="#" class="default_t_color">CheckOut</a></li>

					</ul>

				</div>

			</section>

			<!--content-->

			<div class="page_content_offset">

				<div class="container">

					<div class="row clearfix">

						<!--left content column-->

						<section class="col-lg-9 col-md-9 col-sm-9">

							<h2 class="tt_uppercase color_dark m_bottom_25">Cart Item</h2>
                            <table class="table_type_4 responsive_table full_width r_corners wraper shadow t_align_l t_xs_align_c m_bottom_30">

								<thead>

									<tr class="f_size_large">

										<!--titles for td-->

										<th>Product Image &amp; Name</th>

										<th>SKU</th>

										<th>Price</th>

										<th>Quantity</th>

										<th>Subtotal</th>

									</tr>

								</thead>

								<tbody>

									<tr>

										<!--Product name and image-->

										<td data-title="Product Image &amp; name" class="t_md_align_c">

											<img src="images/quick_view_img_10.jpg" alt="" class="m_md_bottom_5 d_xs_block d_xs_centered">

											<a href="#" class="d_inline_b m_left_5 color_dark">Eget elementum vel</a>

										</td>

										<!--product key-->

										<td data-title="SKU">PS01</td>

										<!--product price-->

										<td data-title="Price">

											<s>$102.00</s>

											<p class="f_size_large color_dark">$102.00</p>

										</td>

										<!--quanity-->

										<td data-title="Quantity">

											<div class="clearfix quantity r_corners d_inline_middle f_size_medium color_dark m_bottom_10">

												<div class="custom_select relative">

														<div class="select_title type_2 r_corners relative color_dark mw_0">0</div>

														<ul class="select_list d_none"></ul>

														<asp:DropDownList ID="DropDownList_gender" runat="server">
                                                            <asp:ListItem Value="1">1</asp:ListItem>
                                                            <asp:ListItem Value="2">2</asp:ListItem>
                                                            
                                                        </asp:DropDownList>

													</div>

											</div>

											<div>

												<a href="#" class="color_dark"><i class="fa fa-check f_size_medium m_right_5"></i>Update</a><br>

												<a href="#" class="color_dark"><i class="fa fa-times f_size_medium m_right_5"></i>Remove</a><br>

											</div>

										</td>

										<!--subtotal-->

										<td data-title="Subtotal">

											<p class="f_size_large fw_medium scheme_color">$102.00</p>

										</td>

									</tr>

									

									

									<!--prices-->

									

									<tr>

										<td colspan="4">

											<p class="fw_medium f_size_large t_align_r t_xs_align_c">Subtotal:</p>

										</td>

										<td colspan="1">

											<p class="fw_medium f_size_large color_dark">$95.00</p>

										</td>

									</tr>

									<tr>

										<td colspan="4">

											<p class="fw_medium f_size_large t_align_r t_xs_align_c">Payment Fee:</p>

										</td>

										<td colspan="1">

											<p class="fw_medium f_size_large color_dark">$6.05</p>

										</td>

									</tr>

									<tr>

										<td colspan="4">

											<p class="fw_medium f_size_large t_align_r t_xs_align_c">Shipment Fee:</p>

										</td>

										<td colspan="1">

											<p class="fw_medium f_size_large color_dark">$0.00</p>

										</td>

									</tr>

									<tr>

										<td colspan="4">

											<p class="fw_medium f_size_large t_align_r t_xs_align_c">Tax Total:</p>

										</td>

										<td colspan="1">

											<p class="fw_medium f_size_large color_dark">$17.54</p>

										</td>

									</tr>

									<!--total-->

									<tr>

										<td colspan="4" class="v_align_m d_ib_offset_large t_xs_align_l">

											<!--coupon-->

											<form class="d_ib_offset_0 d_inline_middle half_column d_xs_block w_xs_full m_xs_bottom_5">

												<input type="text" placeholder="Enter your coupon code" name="" class="r_corners f_size_medium">

												<button class="button_type_4 r_corners bg_light_color_2 m_left_5 mw_0 tr_all_hover color_dark">Save</button>

											</form>

											<p class="fw_medium f_size_large t_align_r scheme_color p_xs_hr_0 d_inline_middle half_column d_ib_offset_normal d_xs_block w_xs_full t_xs_align_c">Total:</p>

										</td>

										<td colspan="1" class="v_align_m">

											<p class="fw_medium f_size_large scheme_color m_xs_bottom_10">$101.05</p>

										</td>

									</tr>

								</tbody>

							</table>
							

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
                                    <figure class="widget shadow r_corners wrapper m_bottom_30">

								<figcaption class="clearfix relative">

									<h3 class="color_light f_left f_sm_none m_sm_bottom_10 m_xs_bottom_0">Specials</h3>

									<div class="f_right nav_buttons_wrap_type_2 tf_sm_none f_sm_none clearfix">

										
									</div>

								</figcaption>

								<div class="widget_content">

									<div class="specials_carousel">

										<!--carousel item-->

										<div class="specials_item">

											<a href="#" class="d_block d_xs_inline_b wrapper m_bottom_20">

												<img class="tr_all_long_hover" src="images/man/r1.jpg" alt="">

											</a>

											<h5 class="m_bottom_10"><a href="#" class="color_dark">Aliquam erat volutpat</a></h5>

											<p class="f_size_large m_bottom_15"><s>&#8377;79000.00</s> <span class="scheme_color">&#8377;36000.00</span></p>

											<button class="button_type_4 mw_sm_0 r_corners color_light bg_scheme_color tr_all_hover m_bottom_5">Add to Cart</button>

										</div>

										

										

									</div>

								</div>

							</figure>
                                <figure class="widget shadow r_corners wrapper m_bottom_30">

								<figcaption class="clearfix relative">

									<h3 class="color_light f_left f_sm_none m_sm_bottom_10 m_xs_bottom_0">Specials</h3>

									<div class="f_right nav_buttons_wrap_type_2 tf_sm_none f_sm_none clearfix">

										
									</div>

								</figcaption>

								<div class="widget_content">

									<div class="specials_carousel">

										<!--carousel item-->

										<div class="specials_item">

											<a href="#" class="d_block d_xs_inline_b wrapper m_bottom_20">

												<img class="tr_all_long_hover" src="images/man/download (3).jpg" alt="">

											</a>

											<h5 class="m_bottom_10"><a href="#" class="color_dark">Aliquam erat volutpat</a></h5>

											<p class="f_size_large m_bottom_15"><s>&#8377;790.00</s> <span class="scheme_color">&#8377;36.00</span></p>

											<button class="button_type_4 mw_sm_0 r_corners color_light bg_scheme_color tr_all_hover m_bottom_5">Add to Cart</button>

										</div>

										

										

									</div>

								</div>

							</figure>

								</div>


								<div class="col-lg-8 col-md-8 col-sm-8 m_xs_bottom_30">

									<h2 class="tt_uppercase color_dark m_bottom_25">Bill To &amp; Shipment Information</h2>

									

									<div runat="server" id="contactform">

										<ul>

											

											<li class="m_bottom_15">

                                                  <label for="c_name_1" class="d_inline_b m_bottom_5">Company Name</label>

                                                    <asp:TextBox ID="txt_company_name" CssClass="full_width r_corners" runat="server"></asp:TextBox>

											</li>
                                             <li class="m_bottom_15">

													<label class="d_inline_b m_bottom_5 required">Title</label>

													<!--product name select-->

													<div class="custom_select relative">

														<div class="select_title type_2 r_corners relative color_dark mw_0">Please select</div>

														<ul class="select_list d_none"></ul>

														<asp:DropDownList ID="DropDownList1" runat="server">
                                                            <asp:ListItem Value="mr">Mr</asp:ListItem>
                                                            <asp:ListItem Value="ms">Ms</asp:ListItem>
                                                            
                                                        </asp:DropDownList>

													</div>

												</li>

											<li class="m_bottom_15">

                                                  <label for="f_name_1" class="d_inline_b m_bottom_5 required">First Name</label>

                                                    <asp:TextBox ID="txt_frist_name" CssClass="full_width r_corners" runat="server"></asp:TextBox>

											</li>
                                            <li class="m_bottom_15">

                                                  <label for="f_name_1" class="d_inline_b m_bottom_5 required">Middle Name</label>

                                                    <asp:TextBox ID="txt_middle_name" CssClass="full_width r_corners" runat="server"></asp:TextBox>

											</li>
                                            <li class="m_bottom_15">

                                                  <label for="f_name_1" class="d_inline_b m_bottom_5 required">Last Name</label>
                                                        

                                                    <asp:TextBox ID="txt_last_name" CssClass="full_width r_corners" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredField" Display="Dynamic" ControlToValidate="txt_last_name" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
											</li>
                                             <li class="m_bottom_15">

                                                  <label for="f_name_1" class="d_inline_b m_bottom_5 required">Email</label>

                                                    <asp:TextBox ID="txt_email" CssClass="full_width r_corners" runat="server" TextMode="email"></asp:TextBox>

											</li>
                                             <li class="m_bottom_15">

                                                  <label for="f_name_1" class="#">Date Of Brith </label>

                                                    <asp:TextBox ID="txt_date" CssClass="full_width r_corners" runat="server" TextMode="date"></asp:TextBox>

											</li>
                                                <li class="m_bottom_15">

                                                  <label for="f_name_1" class="d_inline_b m_bottom_5 required">Address_1</label>

                                                    <asp:TextBox ID="txt_address_1" CssClass="full_width r_corners" runat="server" Height="70px"  TextMode="MultiLine"></asp:TextBox>

											</li>
                                            <li class="m_bottom_15">

                                                  <label for="f_name_1" class="#">Address_2 </label>

                                                    <asp:TextBox ID="txt_address_2" CssClass="full_width r_corners" runat="server" Height="70px" TextMode="MultiLine"></asp:TextBox>

											</li>
                                             <li class="m_bottom_15">

                                                  <label for="f_name_1" class="d_inline_b m_bottom_5 required">Postal Code</label>

                                                    <asp:TextBox ID="txt_pincode" CssClass="full_width r_corners" runat="server"></asp:TextBox>

											</li>
                                             <li class="m_bottom_15">

                                                  <label for="f_name_1" class="d_inline_b m_bottom_5 required">City</label>

                                                    <asp:TextBox ID="txt_city" CssClass="full_width r_corners" runat="server"></asp:TextBox>

											</li>
                                            <li class="m_bottom_15">

                                                  <label for="f_name_1" class="d_inline_b m_bottom_5 required">State</label>

                                                    <asp:TextBox ID="txt_state" CssClass="full_width r_corners" runat="server"></asp:TextBox>

											</li>
                                            <li class="m_bottom_15">

                                                  <label for="f_name_1" class="d_inline_b m_bottom_5 required">Country</label>

                                                    <asp:TextBox ID="txt_country" CssClass="full_width r_corners" runat="server"></asp:TextBox>

											</li>
                                             <li class="m_bottom_15">

                                                  <label for="f_name_1" class="d_inline_b m_bottom_5 required">Mobile No</label>

                                                    <asp:TextBox ID="txt_mo_number" CssClass="full_width r_corners" runat="server"></asp:TextBox>

											</li>
                                             <li class="m_bottom_15">

                                                  <label for="f_name_1" class="#">Phone No</label>

                                                    <asp:TextBox ID="txt_pho_number" CssClass="full_width r_corners" runat="server"></asp:TextBox>

											</li>
                                             <li class="m_bottom_15">

                                                  <label for="f_name_1" class="#">Fex No</label>

                                                    <asp:TextBox ID="txt_fex_number" CssClass="full_width r_corners" runat="server"></asp:TextBox>

											</li>
                                            
                                            <li>
                                                <button class="button_type_6 bg_scheme_color f_size_large r_corners tr_all_hover color_light m_bottom_20">Confirm Purchase</button>
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
                            <figure class="widget shadow r_corners wrapper m_bottom_30">

								<figcaption>

									<h3 class="color_light">New Products</h3>

								</figcaption>

								<div class="widget_content">

									<div class="clearfix m_bottom_15">

										<img src="images/man/download (1).jpg" alt="" class="f_left m_right_15 m_sm_bottom_10 f_sm_none f_xs_left m_xs_bottom_0" height="80px" width="80px">

										<a href="#" class="color_dark d_block m_bottom_5 bt_link">Ut tellus dolor dapibus</a>

										<p class="scheme_color">&#8377;61.00</p>

									</div>

									<hr class="m_bottom_15">

									<div class="clearfix m_bottom_15">

										<img src="images/man/download (2).jpg" alt="" class="f_left m_right_15 m_sm_bottom_10 f_sm_none f_xs_left m_xs_bottom_0" height="80px" width="80px">

										<a href="#" class="color_dark d_block m_bottom_5 bt_link">Ut tellus dolor dapibus</a>

										<p class="scheme_color">&#8377;61.00</p>

									</div>

									<hr class="m_bottom_15">
                                    <div class="clearfix m_bottom_15">

										<img src="images/man/d1.jpeg" alt="" class="f_left m_right_15 m_sm_bottom_10 f_sm_none f_xs_left m_xs_bottom_0" height="80px" width="80px">

										<a href="#" class="color_dark d_block m_bottom_5 bt_link">Ut tellus dolor dapibus</a>

										<p class="scheme_color">&#8377;61.00</p>

									</div>
									

								</div>

							</figure>
                            <figure class="widget shadow r_corners wrapper m_bottom_30">

								<figcaption class="clearfix relative">

									<h3 class="color_light f_left f_sm_none m_sm_bottom_10 m_xs_bottom_0">Specials</h3>

									<div class="f_right nav_buttons_wrap_type_2 tf_sm_none f_sm_none clearfix">

										
									</div>

								</figcaption>

								<div class="widget_content">

									<div class="specials_carousel">

										<!--carousel item-->

										<div class="specials_item">

											<a href="#" class="d_block d_xs_inline_b wrapper m_bottom_20">

												<img class="tr_all_long_hover" src="images/anil.JPG" alt="">

											</a>

											<h5 class="m_bottom_10"><a href="#" class="color_dark">Aliquam erat volutpat</a></h5>

											<p class="f_size_large m_bottom_15"><s>$79.00</s> <span class="scheme_color">$36.00</span></p>

											<button class="button_type_4 mw_sm_0 r_corners color_light bg_scheme_color tr_all_hover m_bottom_5">Add to Cart</button>

										</div>

										

										

									</div>

								</div>

							</figure>

						</aside>

					</div>

				</div>

			</div>

			<!--markup footer-->

			

		</div>

	
		

</asp:Content>

