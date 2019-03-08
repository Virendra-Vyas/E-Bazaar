<%@ Page Title="" Language="C#" MasterPageFile="~/user/cart.master" AutoEventWireup="true" CodeFile="cart_after_login.aspx.cs" Inherits="user_cart_after_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="wide_layout relative">


			<section class="breadcrumbs">

				<div class="container">

					<ul class="horizontal_list clearfix bc_list f_size_medium">

						<li class="m_right_10 current"><a href="user_home.aspx" class="default_t_color">Home<i class="fa fa-angle-right d_inline_middle m_left_10" style="margin-left:10px;"></i></a></li>

						<li><a href="#" class="default_t_color">Cart</a></li>

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

										

											<p class="fw_medium f_size_large t_align_r scheme_color p_xs_hr_0 d_inline_middle half_column d_ib_offset_normal d_xs_block w_xs_full t_xs_align_c">Total:</p>

										</td>

										<td colspan="1" class="v_align_m">

											<p class="fw_medium f_size_large scheme_color m_xs_bottom_10">$101.05</p>

										</td>
                                        
									</tr>
                                    <tr>

                                        <td>
                                            <asp:Button ID="Button1" runat="server" Text="Continues shopping" class="button_type_6 bg_scheme_color f_size_large r_corners tr_all_hover color_light m_bottom_20" OnClick="Button1_Click" />
                                           
                                            <asp:Button ID="Button2" runat="server" Text="Place Oder"  class="button_type_6 bg_scheme_color f_size_large r_corners tr_all_hover color_light m_bottom_20" OnClick="Button2_Click"/>
                                            
                                        </td>
                                    </tr>
								</tbody>

							</table>
							

						</section>

						<!--right column-->

					</div>

				</div>

			</div>

			<!--markup footer-->

			

		</div>
</asp:Content>

