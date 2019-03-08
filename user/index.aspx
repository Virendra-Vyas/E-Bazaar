<%@ Page Title="" Language="C#" MasterPageFile="~/user/user_master.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="user_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
		<!--boxed layout-->

		<div class="wide_layout relative w_xs_auto">

			


			<!--slider-->

			<section class="revolution_slider">

				<div class="r_slider">

					<ul>

						<li class="f_left" data-transition="curtain-1" data-slotamount="7" data-custom-thumb="images/slide_02.jpg">

							<img src="images/fw_slide_03.jpg" alt="" data-bgrepeat="no-repeat" data-bgfit="cover" data-bgposition="center center">

						

						</li>
                        <li class="f_left" data-transition="curtain-1" data-slotamount="7" data-custom-thumb="images/slide_02.jpg">

							<%--<img src="images/man/DSC_0173.JPG" alt="" >--%>
                            <asp:Image ID="Image10" runat="server" ImageUrl="images/banner-4.jpg"  Height="480" Width="1903"/>

						
						</li>

						<li class="f_left" data-transition="cube" data-slotamount="7" data-custom-thumb="images/slide_01.jpg">

							<img src="images/fw_slide_02.jpg" alt="" data-bgrepeat="no-repeat" data-bgfit="cover" data-bgposition="center center">

							<div class="caption lft ltb f_size_large tt_uppercase slider_title_3 scheme_color" data-x="264" data-y="126" data-speed="300" data-start="1700">New arrivals</div>

							<div class="caption sfb stt slider_divider type_2" data-x="298" data-y="153" data-speed="400" data-start="1700"></div>

							<div class="caption lft ltb color_light slider_title tt_uppercase t_align_c" data-x="95" data-y="170" data-speed="500" data-easing="ease" data-start="1400"><b><span class="scheme_color">Spring/Summer 2015</span><br><span class="color_dark">Ready-To-Wear</span></b></div>

							<div class="caption lfb ltt color_light" data-x="206" data-y="318" data-speed="500" data-start="1700">

								<a href="#" role="button" class="button_type_4 bg_scheme_color color_light r_corners tt_uppercase">View Collection</a>

							</div>

						</li>

						<li class="f_left" data-transition="cube" data-slotamount="7" data-custom-thumb="images/slide_03.jpg">

							<img src="images/fw_slide_01.jpg" alt="" data-bgrepeat="no-repeat" data-bgfit="cover" data-bgposition="center center">

							<div class="caption lft ltt" data-x="center" data-y="58" data-speed="1500" data-start="1200" data-easing="easeOutBounce">

								<img src="images/slider_layer_img.png" alt="">

							</div>

							<div class="caption sfb stb color_light slider_title tt_uppercase t_align_c" data-x="center" data-y="246" data-speed="1000" data-easing="ease" data-start="2500"><b class="color_dark">up to 70% off</b></div>

							<div class="caption sfb stb color_light" data-x="center" data-y="352" data-speed="1000" data-start="2900">

								<a href="#" role="button" class="button_type_4 bg_scheme_color color_light r_corners tt_uppercase">Shop Now</a>

							</div>

						</li>

					</ul>

				</div>

			</section>

			<!--content-->

			<div class="page_content_offset">

				<div class="container">

					<!--banners-->

					<div class="row clearfix m_xs_bottom_30">

						<div class="col-lg-4 col-md-4 col-sm-4 m_bottom_50 m_xs_bottom_0">

							<a href="#" class="d_block animate_ftb h_md_auto m_xs_bottom_15 banner_type_2 r_corners red t_align_c tt_uppercase vc_child n_sm_vc_child">

								<span class="d_inline_middle">

									<img class="d_inline_middle m_md_bottom_5" src="images/banner_img_3.png" alt="">

									<span class="d_inline_middle m_left_10 t_align_l d_md_block t_md_align_c">

										<b>100% Satisfaction</b><br><span class="color_dark">Guaranteed</span>

									</span>

								</span>

							</a>

						</div>

						<div class="col-lg-4 col-md-4 col-sm-4">

							<a href="#" class="d_block animate_ftb h_md_auto m_xs_bottom_15 banner_type_2 r_corners green t_align_c tt_uppercase vc_child n_sm_vc_child">

								<span class="d_inline_middle">

									<img class="d_inline_middle m_md_bottom_5" src="images/banner_img_4.png" alt="">

									<span class="d_inline_middle m_left_10 t_align_l d_md_block t_md_align_c">

										<b>Free Shipping</b><br><span class="color_dark">On All Items</span>

									</span>

								</span>

							</a>

						</div>

						<div class="col-lg-4 col-md-4 col-sm-4">

							<a href="#" class="d_block animate_ftb h_md_auto banner_type_2 r_corners orange t_align_c tt_uppercase vc_child n_sm_vc_child">

								<span class="d_inline_middle">

									<img class="d_inline_middle m_md_bottom_5" src="images/banner_img_5.png" alt="">

									<span class="d_inline_middle m_left_10 t_align_l d_md_block t_md_align_c">

										<b>Great Daily Deals</b><br><span class="color_dark">Shop Now!</span>

									</span>

								</span>

							</a>

						</div>

					</div>

					<!--filter navigation-->

					<div class="clearfix">

						

						<div class="f_right clearfix nav_buttons_wrap f_mxs_none m_mxs_bottom_5 f_xs_none">

                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/user/index_demo.aspx">See More...</asp:HyperLink>

						</div>

					</div>

					<!--carousel with filter-->


					<div class="wfilter_carousel m_bottom_30 m_xs_bottom_15">
                        
                       
                        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">

                            <ItemTemplate>

                                	<figure class="r_corners photoframe shadow relative tr_all_hover animate_ftb long filter_class_new">

							<!--product preview-->

							<a href="#" class="d_block relative wrapper pp_wrap">

								<asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("product_main_image","~/images/product_images/{0}") %>' class="tr_all_hover" Height="245" Width="220" />

								<span data-popup="#quick_view_product_all" class="box_s_none button_type_5 color_light r_corners tr_all_hover d_xs_none">Quick View</span>

							</a>

							<!--description and price of product-->

							<figcaption>
                                <h5 class="m_bottom_10">  
                                <asp:Label ID="lbl_product_name" runat="server" class="color_dark ellipsis"> <%# Eval("product_name") %></asp:Label>
                            </h5>

								<%--<h5 class="m_bottom_10"><a href="#" class="color_dark ellipsis">Ut tellus dolor dapibus</a></h5>--%>

								<div class="clearfix m_bottom_15">
                                    <asp:Label ID="lbl_product_price" runat="server" class="scheme_color f_size_large f_left">&#8377;<%# Eval("product_price") %> </asp:Label>

									<%--<p class="scheme_color f_size_large f_left">$57.00</p>--%>

									<!--rating-->

									<ul class="horizontal_list f_right clearfix rating_list tr_all_hover">

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

								</div>
                                

								<div class="clearfix">

                                    <%--<asp:Button ID="btn_add_cart" runat="server" Text="Add to cart"  class="button_type_4 bg_scheme_color r_corners tr_all_hover color_light f_left mw_0" />
								--%>
									<button class="button_type_4 bg_scheme_color r_corners tr_all_hover color_light f_left mw_0" data-popup="#login_popup"> Add To Cart</button>
                                    

									<button class="button_type_4 bg_light_color_2 tr_all_hover f_right r_corners color_dark mw_0 m_left_5 p_hr_0 d_md_none" ><i class="fa fa-files-o"></i></button>

									<button class="button_type_4 bg_light_color_2 tr_all_hover f_right r_corners color_dark mw_0 p_hr_0 d_md_none"><i class="fa fa-heart-o"></i></button>

								</div>

							</figcaption>

						</figure>
                            </ItemTemplate>

                        </asp:Repeater>
					
					</div>

					<!--blog-->

					<div class="row clearfix m_bottom_45 m_md_bottom_35 m_xs_bottom_30">

						<div class="col-lg-6 col-md-6 col-sm-12 m_sm_bottom_35 blog_animate animate_ftr">

							<div class="clearfix m_bottom_25 m_sm_bottom_20">

								<h2 class="tt_uppercase color_dark f_left">From The Blog</h2>

								<div class="f_right clearfix nav_buttons_wrap">

									<button class="button_type_7 bg_cs_hover box_s_none f_size_ex_large bg_light_color_1 f_left tr_delay_hover r_corners blog_prev"><i class="fa fa-angle-left"></i></button>

									<button class="button_type_7 bg_cs_hover box_s_none f_size_ex_large bg_light_color_1 f_left m_left_5 tr_delay_hover r_corners blog_next"><i class="fa fa-angle-right"></i></button>

								</div>

							</div>

							<!--blog carousel-->

							<div class="blog_carousel">

								<div class="clearfix">

									<!--image-->

									<a href="#" class="d_block photoframe relative shadow wrapper r_corners f_left m_right_20 animate_ftt f_mxs_none m_mxs_bottom_10">

                                        <asp:Image ID="Image11" runat="server" Height="180" Width="285" class="tr_all_long_hover" ImageUrl="~/user/images/man/IMG_0473.JPG" />
                                        

									</a>

									<!--post content-->

									<div class="mini_post_content">

										<h4 class="m_bottom_5 animate_ftr"><a href="#" class="color_dark"><b>Ut tellus dolor, dapibus eget, elementum vel</b></a></h4>

										<p class="f_size_medium m_bottom_10 animate_ftr">25 January, 2013, 5 comments</p>

										<p class="m_bottom_10 animate_ftr">Aliquam erat volutpat. Duis ac turpis. Donec sit amet eros. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Mauris fermentum dictum magna. </p>

										<a class="tt_uppercase f_size_large animate_ftr" href="#">Read More</a>

									</div>

								</div>

								<div class="clearfix">

									<!--image-->

									<a href="#" class="d_block photoframe relative shadow wrapper r_corners f_left m_right_20 animate_ftt f_mxs_none m_mxs_bottom_10">

										<img class="tr_all_long_hover" src="images/blog_img_2.jpg" alt="">

									</a>

									<!--post content-->

									<div class="mini_post_content">

										<h4 class="m_bottom_5 animate_ftr"><a href="#" class="color_dark"><b>Cursus eleifend, elit aenean set amet lorem</b></a></h4>

										<p class="f_size_medium m_bottom_10 animate_ftr">30 January, 2013, 6 comments</p>

										<p class="m_bottom_10 animate_ftr">Aliquam erat volutpat. Duis ac turpis. Donec sit amet eros. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Mauris fermentum dictum magna. </p>

										<a class="tt_uppercase f_size_large animate_ftr" href="#">Read More</a>

									</div>

								</div>

								<div class="clearfix">

									<!--image-->

									<a href="#" class="d_block photoframe relative shadow wrapper r_corners f_left m_right_20 animate_ftt f_mxs_none m_mxs_bottom_10">

										<img class="tr_all_long_hover" src="images/blog_img_3.jpg" alt="">

									</a>

									<!--post content-->

									<div class="mini_post_content">

										<h4 class="m_bottom_5 animate_ftr"><a href="#" class="color_dark"><b>In pede mi, aliquet sit ut tellus dolor</b></a></h4>

										<p class="f_size_medium m_bottom_10 animate_ftr">1 February, 2013, 12 comments</p>

										<p class="m_bottom_10 animate_ftr">Aliquam erat volutpat. Duis ac turpis. Donec sit amet eros. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Mauris fermentum dictum magna. </p>

										<a class="tt_uppercase f_size_large animate_ftr" href="#">Read More</a>

									</div>

								</div>

							</div>

						</div>

						<!--testimonials-->

						<div class="col-lg-6 col-md-6 col-sm-12 ti_animate animate_ftr">

							<div class="clearfix m_bottom_25 m_sm_bottom_20">

								<h2 class="tt_uppercase color_dark f_left f_mxs_none m_mxs_bottom_15">What Our Customers Say</h2>

								<div class="f_right clearfix nav_buttons_wrap f_mxs_none">

									<button class="button_type_7 bg_cs_hover box_s_none f_size_ex_large bg_light_color_1 f_left tr_delay_hover r_corners ti_prev"><i class="fa fa-angle-left"></i></button>

									<button class="button_type_7 bg_cs_hover box_s_none f_size_ex_large bg_light_color_1 f_left m_left_5 tr_delay_hover r_corners ti_next"><i class="fa fa-angle-right"></i></button>

								</div>

							</div>

							<!--testimonials carousel-->

							<div class="testiomials_carousel">

								<div>

									<blockquote class="r_corners shadow f_size_large relative m_bottom_15 animate_ftr">Mauris fermentum dictum magna. Sed laoreet aliquam leo. Ut tellus dolor, dapibus eget, elementum vel, cursus eleifend, elit. Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis.</blockquote>

									<img class="circle m_left_20 d_inline_middle animate_ftr" src="images/testimonial_img_1.jpg" alt="">

									<div class="d_inline_middle m_left_15 animate_ftr">

										<h5 class="color_dark"><b>Marta Healy</b></h5>

										<p>Los Angeles</p>

									</div>

								</div>

								<div>

									<blockquote class="r_corners shadow f_size_large relative m_bottom_15">Integer rutrum ante eu lacus.Vestibulum libero nisl, porta vel, scelerisque eget, malesuada at, neque.</blockquote>

									<img class="circle m_left_20 d_inline_middle" src="images/testimonial_img_2.jpg" alt="">

									<div class="d_inline_middle m_left_15">

										<h5 class="color_dark"><b>Alan Smith</b></h5>

										<p>New York</p>

									</div>

								</div>

								<div>

									<blockquote class="r_corners shadow f_size_large relative m_bottom_15">Aenean nec eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse sollicitudin velit sed leo. Ut pharetra augue nec augue. Nam elit agna,endrerit sit amet, tincidunt.</blockquote>

									<img class="circle m_left_20 d_inline_middle" src="images/testimonial_img_3.jpg" alt="">

									<div class="d_inline_middle m_left_15">

										<h5 class="color_dark"><b>Anna Johnson</b></h5>

										<p>Detroid</p>

									</div>

								</div>

							</div>

						</div>

					</div>

					<div class="clearfix">

						<h2 class="color_dark tt_uppercase f_left m_bottom_15 f_mxs_none heading5 animate_ftr">Bestsellers</h2>

						<div class="f_right clearfix nav_buttons_wrap f_mxs_none m_mxs_bottom_5 animate_fade">

							<button class="button_type_7 bg_cs_hover box_s_none f_size_ex_large t_align_c bg_light_color_1 f_left tr_delay_hover r_corners bestsellers_prev"><i class="fa fa-angle-left"></i></button>

							<button class="button_type_7 bg_cs_hover box_s_none f_size_ex_large t_align_c bg_light_color_1 f_left m_left_5 tr_delay_hover r_corners bestsellers_next"><i class="fa fa-angle-right"></i></button>

						</div>

					</div>

					<!--bestsellers carousel-->

					<div class="bestsellers_carousel m_bottom_30 m_xs_bottom_15">

						<figure class="r_corners photoframe shadow relative tr_all_hover animate_ftb long">

							<!--product preview-->

							<a href="#" class="d_block relative pp_wrap">

								<!--hot product-->
                                 <asp:Image ID="Image6" runat="server" ImageUrl="~/user/images/man/d2.jpeg" class="tr_all_hover" Height="245" Width="220" />
								

								

								<span data-popup="#quick_view_product" class="box_s_none button_type_5 color_light r_corners tr_all_hover d_xs_none">Quick View</span>

							</a>

							<!--description and price of product-->

							<figcaption>

								<h5 class="m_bottom_10"><a href="#" class="color_dark ellipsis">Eget elementum vel</a></h5>

								<div class="clearfix">

									<p class="scheme_color f_left f_size_large m_bottom_15">$102.00</p>

									<!--rating-->

									<ul class="horizontal_list f_right clearfix rating_list tr_all_hover">

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

								</div>

								<button class="button_type_4 bg_scheme_color r_corners tr_all_hover color_light mw_0">Add to Cart</button>

							</figcaption>

						</figure>

						<figure class="r_corners photoframe shadow relative tr_all_hover animate_ftb long">

							<!--product preview-->

							<a href="#" class="d_block relative wrapper pp_wrap">

								<asp:Image ID="Image7" runat="server" ImageUrl="~/user/images/man/d3.jpg" class="tr_all_hover" Height="245" Width="220" />

								<span data-popup="#quick_view_product" class="box_s_none button_type_5 color_light r_corners tr_all_hover d_xs_none">Quick View</span>

								
							</a>

							<!--description and price of product-->

							<figcaption>

								<h5 class="m_bottom_10"><a href="#" class="color_dark ellipsis">Ut tellus dolor dapibus</a></h5>

								<div class="clearfix m_bottom_15">

									<p class="scheme_color f_size_large f_left">$57.00</p>

									<!--rating-->

									<ul class="horizontal_list f_right clearfix rating_list tr_all_hover">

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

								</div>

								<button class="button_type_4 bg_scheme_color r_corners tr_all_hover color_light mw_0">Add to Cart</button>

							</figcaption>

						</figure>

						<figure class="r_corners photoframe shadow relative tr_all_hover animate_ftb long">

							<!--product preview-->

							<a href="#" class="d_block relative wrapper pp_wrap">

								<asp:Image ID="Image8" runat="server" ImageUrl="~/user/images/man/d8.jpg" class="tr_all_hover" Height="245" Width="220" />

								<span data-popup="#quick_view_product" class="box_s_none button_type_5 color_light r_corners tr_all_hover d_xs_none">Quick View</span>

							</a>

							<!--description and price of product-->

							<figcaption>

								<h5 class="m_bottom_10"><a href="#" class="color_dark ellipsis">Cursus eleifend elit aenean aucto.</a></h5>

								<div class="clearfix">

									<p class="scheme_color f_left f_size_large m_bottom_15">$99.00</p>

									<!--rating-->

									<ul class="horizontal_list f_right clearfix rating_list tr_all_hover">

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

								</div>

								<button class="button_type_4 bg_scheme_color r_corners tr_all_hover color_light mw_0">Add to Cart</button>

							</figcaption>

						</figure>

						<figure class="r_corners photoframe shadow relative tr_all_hover animate_ftb long">

							<!--product preview-->

							<a href="#" class="d_block relative pp_wrap">

								<!--sale product-->

								<span class="hot_stripe type_2"><img src="images/sale_product_type_2.png" alt=""></span>

								<asp:Image ID="Image9" runat="server" ImageUrl="~/user/images/man/formal_shirt.jpg" class="tr_all_hover" Height="245" Width="220" />

								<span data-popup="#quick_view_product" class="box_s_none button_type_5 color_light r_corners tr_all_hover d_xs_none">Quick View</span>

							</a>

							<!--description and price of product-->

							<figcaption>

								<h5 class="m_bottom_10"><a href="#" class="color_dark ellipsis">Aliquam erat volutpat</a></h5>

								<div class="clearfix">

									<p class="scheme_color f_left f_size_large m_bottom_15"><s>$79.00</s> $36.00</p>

									<!--rating-->

									<ul class="horizontal_list f_right clearfix rating_list tr_all_hover">

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

								</div>

								<button class="button_type_4 bg_scheme_color r_corners tr_all_hover color_light mw_0">Add to Cart</button>

							</figcaption>

						</figure>

						<figure class="r_corners photoframe shadow relative hit tr_all_hover animate_ftb long">

							<!--product preview-->

							<a href="#" class="d_block relative pp_wrap">

								<!--hot product-->

								<span class="hot_stripe"><img src="images/hot_product.png" alt=""></span>

								<img src="images/product_img_1.jpg" class="tr_all_hover" alt="">

								<span data-popup="#quick_view_product" class="button_type_5 box_s_none color_light r_corners tr_all_hover d_xs_none">Quick View</span>

							</a>

							<!--description and price of product-->

							<figcaption>

								<h5 class="m_bottom_10"><a href="#" class="color_dark ellipsis">Eget elementum vel</a></h5>

								<div class="clearfix">

									<p class="scheme_color f_left f_size_large m_bottom_15">$102.00</p>

									<!--rating-->

									<ul class="horizontal_list f_right clearfix rating_list tr_all_hover">

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

								</div>

								<button class="button_type_4 bg_scheme_color r_corners tr_all_hover color_light mw_0">Add to Cart</button>

							</figcaption>

						</figure>

						<figure class="r_corners photoframe shadow relative tr_all_hover animate_ftb long">

							<!--product preview-->

							<a href="#" class="d_block relative wrapper pp_wrap">

								<img src="images/product_img_2.jpg" class="tr_all_hover" alt="">

								<span data-popup="#quick_view_product" class="box_s_none button_type_5 color_light r_corners tr_all_hover d_xs_none">Quick View</span>

							</a>

							<!--description and price of product-->

							<figcaption>

								<h5 class="m_bottom_10"><a href="#" class="color_dark ellipsis">Ut tellus dolor dapibus</a></h5>

								<div class="clearfix m_bottom_15">

									<p class="scheme_color f_size_large f_left">$57.00</p>

									<!--rating-->

									<ul class="horizontal_list f_right clearfix rating_list tr_all_hover">

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

								</div>

								<div class="clearfix">

									<button class="button_type_4 bg_scheme_color r_corners tr_all_hover color_light f_left mw_0">Add to Cart</button>

									<button class="button_type_4 bg_light_color_2 tr_all_hover f_right r_corners color_dark mw_0 m_left_5 p_hr_0"><i class="fa fa-files-o"></i></button>

									<button class="button_type_4 bg_light_color_2 tr_all_hover f_right r_corners color_dark mw_0 p_hr_0"><i class="fa fa-heart-o"></i></button>

								</div>

							</figcaption>

						</figure>

						<figure class="r_corners photoframe shadow relative tr_all_hover animate_ftb long">

							<!--product preview-->

							<a href="#" class="d_block relative wrapper pp_wrap">

								<img src="images/product_img_3.jpg" class="tr_all_hover" alt="">

								<span data-popup="#quick_view_product" class="box_s_none button_type_5 color_light r_corners tr_all_hover d_xs_none">Quick View</span>

							</a>

							<!--description and price of product-->

							<figcaption>

								<h5 class="m_bottom_10"><a href="#" class="color_dark ellipsis">Cursus eleifend elit aenean aucto.</a></h5>

								<div class="clearfix">

									<p class="scheme_color f_left f_size_large m_bottom_15">$99.00</p>

									<!--rating-->

									<ul class="horizontal_list f_right clearfix rating_list tr_all_hover">

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

								</div>

								<button class="button_type_4 bg_scheme_color r_corners tr_all_hover color_light mw_0">Add to Cart</button>

							</figcaption>

						</figure>

						

					</div>
                    <!--banners-->

					<section class="row clearfix m_bottom_45 m_sm_bottom_35">

						<div class="col-lg-6 col-md-6 col-sm-6 animate_half_tc">

							<a href="#" class="d_block banner wrapper r_corners relative m_xs_bottom_30">

								<img src="images/banner_img_1.png" alt="">

								<span class="banner_caption d_block vc_child t_align_c w_sm_auto">

									<span class="d_inline_middle">

										<span class="d_block color_dark tt_uppercase m_bottom_5 let_s">New Collection!</span>

										<span class="d_block divider_type_2 centered_db m_bottom_5"></span>

										<span class="d_block color_light tt_uppercase m_bottom_15 banner_title"><b>Colored Fashion</b></span>

										<span class="button_type_6 bg_scheme_color tt_uppercase r_corners color_light d_inline_b tr_all_hover box_s_none f_size_ex_large">Shop Now!</span>

									</span>

								</span>

							</a>

						</div>

						<div class="col-lg-6 col-md-6 col-sm-6 animate_half_tc">

							<a href="#" class="d_block banner wrapper r_corners type_2 relative">

								<img src="images/banner_img_2.png" alt="">

								<span class="banner_caption d_block vc_child t_align_c w_sm_auto">

									<span class="d_inline_middle">

										<span class="d_block scheme_color banner_title type_2 m_bottom_0 m_mxs_bottom_5"><b>-50%</b></span>

										<span class="d_block divider_type_2 centered_db m_bottom_0 d_sm_none"></span>

										<span class="d_block color_light tt_uppercase m_bottom_15 m_md_bottom_5 d_mxs_none">On All<br><b>Sunglasses</b></span>

										<span class="button_type_6 bg_dark_color tt_uppercase r_corners color_light d_inline_b tr_all_hover box_s_none f_size_ex_large">Shop Now!</span>

									</span>

								</span>

							</a>

						</div>

					</section>

					<!--product brands-->
                    <div class="clearfix m_bottom_25 m_sm_bottom_20">

						<h2 class="tt_uppercase color_dark f_left heading2 animate_fade f_mxs_none m_mxs_bottom_15">Product Brands</h2>

						<div class="f_right clearfix nav_buttons_wrap animate_fade f_mxs_none">

							<button class="button_type_7 bg_cs_hover box_s_none f_size_ex_large t_align_c bg_light_color_1 f_left tr_delay_hover r_corners pb_prev"><i class="fa fa-angle-left"></i></button>

							<button class="button_type_7 bg_cs_hover box_s_none f_size_ex_large t_align_c bg_light_color_1 f_left m_left_5 tr_delay_hover r_corners pb_next"><i class="fa fa-angle-right"></i></button>

						</div>

					</div>
                    <!--product brands carousel-->

					<div class="product_brands m_sm_bottom_35 m_xs_bottom_0">

						<a href="#" class="d_block t_align_c animate_fade"><img src="images/man/b1.jpg" alt=""></a>

						<a href="#" class="d_block t_align_c animate_fade"><img src="images/man/b2.jpg" alt=""></a>

						<a href="#" class="d_block t_align_c animate_fade"><img src="images/brand_logo.jpg" alt=""></a>

						<a href="#" class="d_block t_align_c animate_fade"><img src="images/brand_logo.jpg" alt=""></a>

						<a href="#" class="d_block t_align_c animate_fade"><img src="images/brand_logo.jpg" alt=""></a>

						<a href="#" class="d_block t_align_c animate_fade"><img src="images/brand_logo.jpg" alt=""></a>

						<a href="#" class="d_block t_align_c animate_fade"><img src="images/brand_logo.jpg" alt=""></a>

						<a href="#" class="d_block t_align_c animate_fade"><img src="images/brand_logo.jpg" alt=""></a>

						<a href="#" class="d_block t_align_c animate_fade"><img src="images/brand_logo.jpg" alt=""></a>

						<a href="#" class="d_block t_align_c animate_fade"><img src="images/brand_logo.jpg" alt=""></a>

						<a href="#" class="d_block t_align_c animate_fade"><img src="images/brand_logo.jpg" alt=""></a>

						<a href="#" class="d_block t_align_c animate_fade"><img src="images/brand_logo.jpg" alt=""></a>

					</div>

				

				</div>

			</div>

<!-------------------------------------------------------------markup footer------------------------------------------------------------------------------------------------------>
    
			

        </div>
<!-------------------------------------------------------------------------------view Product------------------------------------------------------------------------->

		
		<div class="popup_wrap d_none" id="quick_view_product_all">

			<section class="popup r_corners shadow">

				<button class="bg_tr color_dark tr_all_hover text_cs_hover close f_size_large"><i class="fa fa-times"></i></button>

				<div class="clearfix">

					<div class="custom_scrollbar">

						<!--left popup column-->

						<div class="f_left half_column">

							<div class="relative d_inline_b m_bottom_10 qv_preview">

								<span class="hot_stripe"><img src="images/sale_product.png" alt=""></span>

								<img src="images/anil.JPG" class="tr_all_hover" alt="">

							</div>

							<!--carousel-->

							<div class="relative qv_carousel_wrap m_bottom_20">

								<button class="button_type_11 t_align_c f_size_ex_large bg_cs_hover r_corners d_inline_middle bg_tr tr_all_hover qv_btn_prev">

									<i class="fa fa-angle-left "></i>

								</button>

								<ul class="qv_carousel d_inline_middle">

									<li data-src="images/quick_view_img_1.jpg"><img src="#" alt=""></li>

									<li data-src="images/quick_view_img_2.jpg"><img src="#" alt=""></li>

									<li data-src="images/quick_view_img_3.jpg"><img src="#" alt=""></li>

									<li data-src="images/quick_view_img_1.jpg"><img src="#" alt=""></li>

									<li data-src="images/quick_view_img_2.jpg"><img src="#" alt=""></li>

									<li data-src="images/quick_view_img_3.jpg"><img src="#" alt=""></li>

								</ul>

								<button class="button_type_11 t_align_c f_size_ex_large bg_cs_hover r_corners d_inline_middle bg_tr tr_all_hover qv_btn_next">

									<i class="fa fa-angle-right "></i>

								</button>

							</div>

							<div class="d_inline_middle">Share this:</div>

							<div class="d_inline_middle m_left_5">

								<!-- AddThis Button BEGIN -->

								<div class="addthis_toolbox addthis_default_style addthis_32x32_style">

								<a class="addthis_button_preferred_1"></a>

								<a class="addthis_button_preferred_2"></a>

								<a class="addthis_button_preferred_3"></a>

								<a class="addthis_button_preferred_4"></a>

								<a class="addthis_button_compact"></a>

								<a class="addthis_counter addthis_bubble_style"></a>

								</div>

								<!-- AddThis Button END -->

							</div>

						</div>

						<!--right popup column-->

						<div class="f_right half_column">

							<!--description-->

							<h2 class="m_bottom_10"><a href="#" class="color_dark fw_medium">Eget elementum vel</a></h2>

							<div class="m_bottom_10">

								<!--rating-->

								<ul class="horizontal_list d_inline_middle type_2 clearfix rating_list tr_all_hover">

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

								<a href="#" class="d_inline_middle default_t_color f_size_small m_left_5">1 Review(s) </a>

							</div>

							<hr class="m_bottom_10 divider_type_3">

							<table class="description_table m_bottom_10">

								<tr>

									<td>Manufacturer:</td>

									<td><a href="#" class="color_dark">Chanel</a></td>

								</tr>

								<tr>

									<td>Availability:</td>

									<td><span class="color_green">in stock</span> 20 item(s)</td>

								</tr>

								<tr>

									<td>Product Code:</td>

									<td>PS06</td>

								</tr>

							</table>

							<h5 class="fw_medium m_bottom_10">Product Dimensions and Weight</h5>

							<table class="description_table m_bottom_5">

								<tr>

									<td>Product Length:</td>

									<td><span class="color_dark">10.0000M</span></td>

								</tr>

								<tr>

									<td>Product Weight:</td>
                                    <td>10.0000KG</td>

								</tr>

							</table>

							<hr class="divider_type_3 m_bottom_10">

							<p class="m_bottom_10">Ut tellus dolor, dapibus eget, elementum vel, cursus eleifend, elit. Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Donec sit amet eros. Lorem ipsum dolor sit amet, consecvtetuer adipiscing elit. </p>

							<hr class="divider_type_3 m_bottom_15">

							<div class="m_bottom_15">

								<s class="v_align_b f_size_ex_large">$152.00</s><span class="v_align_b f_size_big m_left_5 scheme_color fw_medium">$102.00</span>

							</div>

							<table class="description_table type_2 m_bottom_15">

								<tr>

									<td class="v_align_m">Size:</td>

									<td class="v_align_m">

										<div class="custom_select f_size_medium relative d_inline_middle">

											<div class="select_title r_corners relative color_dark">s</div>

											<ul class="select_list d_none"></ul>

											<select name="product_name">

												<option value="s">s</option>

												<option value="m">m</option>

												<option value="l">l</option>

											</select>

										</div>

									</td>

								</tr>

								<tr>

									<td class="v_align_m">Quantity:</td>

									<td class="v_align_m">

										<div class="clearfix quantity r_corners d_inline_middle f_size_medium color_dark">

											<button class="bg_tr d_block f_left" data-direction="down">-</button>

											<input type="text" name="" readonly value="1" class="f_left">

											<button class="bg_tr d_block f_left" data-direction="up">+</button>

										</div>

									</td>

								</tr>

							</table>

							<div class="clearfix m_bottom_15">

								<button class="button_type_12 r_corners bg_scheme_color color_light tr_delay_hover f_left f_size_large">Add to Cart</button>

								<button class="button_type_12 bg_light_color_2 tr_delay_hover f_left r_corners color_dark m_left_5 p_hr_0"><i class="fa fa-heart-o f_size_big"></i><span class="tooltip tr_all_hover r_corners color_dark f_size_small">Wishlist</span></button>

								<button class="button_type_12 bg_light_color_2 tr_delay_hover f_left r_corners color_dark m_left_5 p_hr_0"><i class="fa fa-files-o f_size_big"></i><span class="tooltip tr_all_hover r_corners color_dark f_size_small">Compare</span></button>

								<button class="button_type_12 bg_light_color_2 tr_delay_hover f_left r_corners color_dark m_left_5 p_hr_0 relative"><i class="fa fa-question-circle f_size_big"></i><span class="tooltip tr_all_hover r_corners color_dark f_size_small">Ask a Question</span></button>

							</div>

						</div>

					</div>

				</div>

			</section>

		</div>

   
	




</asp:Content>


