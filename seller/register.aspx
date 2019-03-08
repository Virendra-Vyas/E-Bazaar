<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="seller_register" %>

<!DOCTYPE html>
<head>
 <title>E-bazaar|Register</title>

    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
    <link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css" />
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link rel="stylesheet" type="text/css" href="assets/plugins/select2/select2.css" />
    <link rel="stylesheet" type="text/css" href="assets/plugins/select2/select2-metronic.css" />
    <!-- END PAGE LEVEL SCRIPTS -->
    <!-- BEGIN THEME STYLES -->
    <link href="assets/css/style-metronic.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/style.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/style-responsive.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/plugins.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color" />
    <link href="assets/css/pages/login-soft.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/custom.css" rel="stylesheet" type="text/css" />
    <!-- END THEME STYLES -->
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="login">
    <!-- BEGIN LOGO -->
    <div class="logo">

    </div>
    <!-- END LOGO -->
    <!-- BEGIN LOGIN -->
    <div class="content">
        <!-- BEGIN LOGIN FORM -->
        <form id="Form1" class="login-form" runat="server">
            <h3>
                <asp:Label ID="lblforget" runat="server" Text="Sign Up "></asp:Label></h3>
                <p>
			        Enter your personal details below:
		        </p>

            <div class="form-group">
                <div class="input-icon">
                    <asp:Label ID="lbl_company_name" runat="server" Font-Bold="True" Font-Size="15px" ForeColor="white">Company Name</asp:Label>
                    <asp:Label class="required" ID="Label2" runat="server" Text=" *" ForeColor="Red"> </asp:Label>
                    
                    <asp:TextBox ID="txtcompany_name" runat="server"  class="form-control"></asp:TextBox>

                </div>
            </div>
             <div class="form-group">
                <div class="input-icon">
                     <asp:Label ID="lbl_company_address" runat="server" Font-Bold="True" Font-Size="15px" ForeColor="white">Company Address</asp:Label>
                    <asp:Label class="required" ID="Label4" runat="server" Text=" *" ForeColor="Red"> </asp:Label>
                    
                    <asp:TextBox ID="txtcompany_address" runat="server"  class="form-control placeholder-no-fix"></asp:TextBox>

                </div>
            </div>
            <div class="form-group">
                <div class="input-icon">
                    <asp:Label ID="lbl_company_nu1" runat="server" Font-Bold="True" Font-Size="15px" ForeColor="white">Company contact1</asp:Label>
                    <asp:Label class="required" ID="Label3" runat="server" Text=" *" ForeColor="Red"> </asp:Label>
                    
                    <asp:TextBox ID="txtcompany_contact1" runat="server"  class="form-control placeholder-no-fix"></asp:TextBox>

                </div>
            </div>
            <div class="form-group">
                <div class="input-icon">
                    <asp:Label ID="lbl_company_nu2" runat="server" Font-Bold="True" Font-Size="15px" ForeColor="white">Company contact2</asp:Label>
                    
                    
                    <asp:TextBox ID="txt_company_number2" runat="server"  class="form-control placeholder-no-fix"></asp:TextBox>

                </div>
            </div>
             <div class="form-group">
                <div class="input-icon">
                    <asp:Label ID="lbl_company_email" runat="server" Font-Bold="True" Font-Size="15px" ForeColor="white">Company E-mail</asp:Label>
                    
                    
                    <asp:TextBox ID="txt_company_email" runat="server"  class="form-control placeholder-no-fix"></asp:TextBox>

                </div>
            </div>
            <div class="form-group">
                <div class="input-icon">
                    <asp:Label ID="lbl_company_logo" runat="server" Font-Bold="True" Font-Size="15px" ForeColor="white">Company Logo</asp:Label>
                    <asp:Label class="required" ID="Label5" runat="server" Text=" *" ForeColor="Red"> </asp:Label>
                 </div>   
                    <asp:FileUpload ID="image_uplode_logo"   runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="White" />
										    
                
            </div>
            <div class="form-group">
                <div class="input-icon">
                    <asp:Label ID="lbl_company_website" runat="server" Font-Bold="True" Font-Size="15px" ForeColor="white">Company Website</asp:Label>
                    
                    
                    <asp:TextBox ID="txt_company_website" runat="server"  class="form-control placeholder-no-fix"></asp:TextBox>

                </div>
            </div>
            <div class="form-group">
                <div class="input-icon">
                    <asp:Label ID="lbl_cst_number" runat="server" Font-Bold="True" Font-Size="15px" ForeColor="white">Company Cst Number</asp:Label>
                    <asp:Label class="required" ID="Label1" runat="server" Text=" *" ForeColor="Red"> </asp:Label>
                    
                    <asp:TextBox ID="txt_cst_number" runat="server"  class="form-control placeholder-no-fix"></asp:TextBox>

                </div>
            </div>
            <div class="form-group">
                <div class="input-icon">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="15px" ForeColor="white">Seller status</asp:Label>
                    
                </div>
                    <asp:DropDownList  class="form-control"  ID="DropDownList_company" runat="server"  Font-Size="15px" ForeColor="#666633">
                       <asp:ListItem Value="approve">Approve</asp:ListItem>
                       <asp:ListItem Value="reject">Reject</asp:ListItem>
                       <asp:ListItem Value="pending">Pending </asp:ListItem>
                      </asp:DropDownList>
            </div>
            <p>
			 Enter your account details below:
		    </p>
            <div class="form-group">
			
			<div class="input-icon">
				<i class="fa fa-user"></i>
                <asp:TextBox ID="txtuser_name" runat="server" placeholder="Username" class="form-control placeholder-no-fix"></asp:TextBox>
				
			</div>
		</div>
		<div class="form-group">
			
			<div class="input-icon">
				<i class="fa fa-lock"></i>
				<asp:TextBox ID="txt_password" runat="server" placeholder="Password" class="form-control placeholder-no-fix" TextMode="Password"></asp:TextBox>
			</div>
		</div>
		<div class="form-group">
			
			<div class="controls">
				<div class="input-icon">
					<i class="fa fa-check"></i>
                    <asp:TextBox ID="txt_re_password" runat="server" placeholder="Re-type Your Password" class="form-control placeholder-no-fix" TextMode="Password"></asp:TextBox>
					
				</div>
			</div>
		</div>
		<div class="form-group">
			<label>
			<input type="checkbox" name="tnc"/> I agree to the
			<a href="#">
				 Terms of Service
			</a>
			 and
			<a href="#">
				 Privacy Policy
			</a>
			</label>
			<div id="register_tnc_error">
			</div>
		</div>
            
            
                
            
            
           

            
            <div class="form-actions">

                <asp:LinkButton ID="btn_back" runat="server" class="btn green"  OnClick="btn_back_Click" > 
                    <i class="m-icon-swapleft"></i> Back</asp:LinkButton>
                <asp:LinkButton ID="btn_submit" runat="server" class="btn blue pull-right" OnClick="btn_submit_Click">Submit 
                    <i class="m-icon-swapright m-icon-white"></i></asp:LinkButton>

               

            </div>

        </form>
        <!-- END LOGIN FORM -->
        <!-- BEGIN FORGOT PASSWORD FORM -->

    </div>
    <!-- END LOGIN -->
    <!-- BEGIN COPYRIGHT -->
    <div class="copyright">
        <asp:Label ID="Label7" runat="server" Text="Label">2015 &copy; window shopping</asp:Label>
    </div>
    <!-- END COPYRIGHT -->
    <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
    <!-- BEGIN CORE PLUGINS -->
    <!--[if lt IE 9]>
	<script src="assets/plugins/respond.min.js"></script>
	<script src="assets/plugins/excanvas.min.js"></script> 
	<![endif]-->
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
    <script src="assets/plugins/jquery-validation/dist/jquery.validate.min.js" type="text/javascript"></script>
    <script src="assets/plugins/backstretch/jquery.backstretch.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="assets/plugins/select2/select2.min.js"></script>
    <!-- END PAGE LEVEL PLUGINS -->
    <!-- BEGIN PAGE LEVEL SCRIPTS -->
    <script src="assets/scripts/core/app.js" type="text/javascript"></script>
    <script src="assets/scripts/custom/login-soft.js" type="text/javascript"></script>
    <!-- END PAGE LEVEL SCRIPTS -->
    <script>
        jQuery(document).ready(function () {
            App.init();
            Login.init();
        });
    </script>
    <!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
