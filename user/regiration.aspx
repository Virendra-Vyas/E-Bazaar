<%@ Page Title="" Language="C#" MasterPageFile="~/user/user_master.master" AutoEventWireup="true" CodeFile="regiration.aspx.cs" Inherits="user_regiration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wide_layout relative">

			<section class="breadcrumbs">

				<div class="container">

					<ul class="horizontal_list clearfix bc_list f_size_medium">

						<li class="m_right_10 current"><a href="#" class="default_t_color">Home<i class="fa fa-angle-right d_inline_middle m_left_10"></i></a></li>

						<li class="m_right_10 current"><a href="#" class="default_t_color">CheckOut</a></li>

						

					</ul>

				</div>

			</section>

			<!--content-->

			<div class="page_content_offset">

				<div class="container">

					<div class="row clearfix">

						<!--left content column-->

						<section class="col-lg-9 col-md-9 col-sm-9 m_xs_bottom_30">

							

							<!--cart table-->

							<!--tabs-->

							

							<h2 class="color_dark tt_uppercase m_bottom_25">Rigster</h2>

							<div class="bs_inner_offsets bg_light_color_3 shadow r_corners m_bottom_45">

								<div class="row clearfix">

									<div class="col-lg-6 col-md-6 col-sm-6 m_xs_bottom_30">

										<h5 class="fw_medium m_bottom_15">Rigster</h5>

										

											<ul>

												<li class="m_bottom_15">

													<label  class="d_inline_b m_bottom_5 required">Frist Name</label>
                                                    <asp:TextBox ID="txt_frist_name" runat="server" class="r_corners full_width"></asp:TextBox>

												</li>
                                                <li class="m_bottom_15">

													<label  class="d_inline_b m_bottom_5 required">Middle Name</label>
                                                    <asp:TextBox ID="txt_middle_name" runat="server" class="r_corners full_width"></asp:TextBox>

												</li>
                                                <li class="m_bottom_15">

													<label  class="d_inline_b m_bottom_5 required">Last Name</label>
                                                    <asp:TextBox ID="txt_last_name" runat="server" class="r_corners full_width"></asp:TextBox>

												</li>
                                                <li class="m_bottom_15">

													<label  class="d_inline_b m_bottom_5 required">Email</label>
                                                    <asp:TextBox ID="txt_email" runat="server" class="r_corners full_width" TextMode="email"></asp:TextBox>

												</li>
                                                <li class="m_bottom_15">

													<label  class="d_inline_b m_bottom_5 required">Date Of Brith</label>
                                                    <asp:TextBox ID="txt_date_of_brith" runat="server" class="r_corners full_width" TextMode="date"></asp:TextBox>

												</li>
                                               <li class="m_bottom_15">

													<label class="d_inline_b m_bottom_5 required">Gender</label>

													<!--product name select-->

													<div class="custom_select relative">

														<div class="select_title type_2 r_corners relative color_dark mw_0">Please select</div>

														<ul class="select_list d_none"></ul>

														<asp:DropDownList ID="DropDownList_gender" runat="server">
                                                            <asp:ListItem Value="male">Male</asp:ListItem>
                                                            <asp:ListItem Value="female">Female</asp:ListItem>
                                                            
                                                        </asp:DropDownList>

													</div>

												</li>
                                                 <li class="m_bottom_15">

													<label  class="d_inline_b m_bottom_5 required">User Name</label>
                                                    <asp:TextBox ID="txt_username" runat="server" class="r_corners full_width"></asp:TextBox>

												</li>
                                                 <li class="m_bottom_15">

													<label  class="d_inline_b m_bottom_5 required">Password</label>
                                                    <asp:TextBox ID="txt_password" runat="server" class="r_corners full_width" TextMode="password"></asp:TextBox>

												</li>
                                                <li class="m_bottom_15">

													<label for="a_name_1" class="d_inline_b m_bottom_5 required">Address </label>

													<asp:TextBox ID="txt_address1" runat="server" class="full_width r_corners" Height="75px" TextMode="MultiLine"></asp:TextBox>

												</li>


                                              

											</ul>

									

									</div>

									<div class="col-lg-6 col-md-6 col-sm-6">

									
                                        <h5 class="fw_medium m_bottom_15">  &nbsp;</h5>
                                        
										

											<ul>

												
												
                                               
                                                 <li class="m_bottom_15">

													<label  class="d_inline_b m_bottom_5 required">Zip/Postal Code</label>
                                                    <asp:TextBox ID="txt_pincode" runat="server" class="r_corners full_width"></asp:TextBox>

												</li>
                                                 <li class="m_bottom_15">

													<label  class="d_inline_b m_bottom_5 required">City</label>
                                                    <asp:TextBox ID="txt_city" runat="server" class="r_corners full_width"></asp:TextBox>

												</li>
                                                 <li class="m_bottom_15">

													<label  class="d_inline_b m_bottom_5 required">State</label>
                                                    <asp:TextBox ID="txt_state" runat="server" class="r_corners full_width"></asp:TextBox>

												</li>
                                                <li class="m_bottom_15">

													<label  class="d_inline_b m_bottom_5 required">Counter</label>
                                                    <asp:TextBox ID="txt_counter" runat="server" class="r_corners full_width"></asp:TextBox>

												</li>
                                                
                                                
                                                <li class="m_bottom_15">

													<label  class="d_inline_b m_bottom_5 required">Mobile Number</label>
                                                    <asp:TextBox ID="txt_mo_nu" runat="server" class="r_corners full_width"></asp:TextBox>

												</li>
                                                
                                                 <li class="m_bottom_15">

													<label  class="d_inline_b m_bottom_5 required">Security  Question</label>
                                                    <div class="custom_select relative">

														<div class="select_title type_2 r_corners relative color_dark mw_0">Please select Security  Question</div>

														<ul class="select_list d_none"></ul>

														<asp:DropDownList ID="DropDownList_qun" runat="server">
                                                            <asp:ListItem>What is Your pet name..?</asp:ListItem>
                                                            <asp:ListItem>What is Your native place..?</asp:ListItem>
                                                            <asp:ListItem>What is your best friend name..?</asp:ListItem>
                                                            <asp:ListItem>Give the name of your favorite food..?</asp:ListItem>
                                                            <asp:ListItem>Give the name of your favorite book..?</asp:ListItem>                                                         
                                                        </asp:DropDownList>

													</div>

												</li>
                                                <li class="m_bottom_15">

													<label  class="d_inline_b m_bottom_5 required">Security  Answer</label>
                                                    <asp:TextBox ID="txt_answer" runat="server" class="r_corners full_width"></asp:TextBox>

												</li>
                                                
											

											</ul>

										

									</div>
                                    


														



								</div>
                                
                            <div>
                               
                                    <asp:Button ID="btn_submit" runat="server" Text="Register" class="button_type_4 tr_all_hover r_corners f_left bg_scheme_color color_light f_mxs_none m_mxs_bottom_15" OnClick="btn_submit_Click"/>
                                                 &nbsp;
                                   <asp:Button ID="btn_cancle" runat="server" Text="Cancel" class="tr_all_hover r_corners button_type_4 bg_dark_color bg_cs_hover color_light d_inline_middle m_mxs_left_0" OnClick="btn_cancle_Click"  />
                                
                                                
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


							

							

							<figure class="widget shadow r_corners wrapper m_bottom_30">

								<figcaption>

									<h3 class="color_light">Latest Articles</h3>

								</figcaption>

								<div class="widget_content">

									<article class="clearfix m_bottom_15">

										<img src="images/article_img_4.jpg" alt="" class="f_left m_right_15 m_sm_bottom_10 f_sm_none f_xs_left m_xs_bottom_0">

										<a href="#" class="color_dark d_block bt_link p_vr_0">Aliquam erat volutpat.</a>

										<p class="f_size_medium">25 January, 2013</p>

									</article>

									<hr class="m_bottom_15">

									<article class="clearfix m_bottom_15">

										<img src="images/article_img_5.jpg" alt="" class="f_left m_right_15 m_sm_bottom_10 f_sm_none f_xs_left m_xs_bottom_0">

										<a href="#" class="color_dark d_block p_vr_0 bt_link">Integer rutrum ante </a>

										<p class="f_size_medium">21 January, 2013</p>

									</article>

									<hr class="m_bottom_15">

									<article class="clearfix m_bottom_5">

										<img src="images/article_img_6.jpg" alt="" class="f_left m_right_15 m_sm_bottom_10 f_sm_none f_xs_left m_xs_bottom_0">

										<a href="#" class="color_dark d_block p_vr_0 bt_link">Vestibulum libero nisl, porta vel</a>

										<p class="f_size_medium">18 January, 2013</p>

									</article>

								</div>

							</figure>

                            <figure class="widget shadow r_corners wrapper m_bottom_30">

								<figcaption>

									<h3 class="color_light">Latest Articles</h3>

								</figcaption>

								<div class="widget_content">

									<article class="clearfix m_bottom_15">

										<img src="images/article_img_4.jpg" alt="" class="f_left m_right_15 m_sm_bottom_10 f_sm_none f_xs_left m_xs_bottom_0">

										<a href="#" class="color_dark d_block bt_link p_vr_0">Aliquam erat volutpat.</a>

										<p class="f_size_medium">25 January, 2013</p>

									</article>

									

									

									

								</div>

							</figure>

						</aside>

					</div>

				</div>

			</div>

			<!--markup footer-->

		</div>

		<!--social widgets-->
</asp:Content>

