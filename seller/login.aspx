<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html ">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta >
<title>window shopping|seller-login</title>


<!-- BEGIN GLOBAL MANDATORY STYLES -->

<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link rel="stylesheet" type="text/css" href="assets/plugins/select2/select2.css"/>
<link rel="stylesheet" type="text/css" href="assets/plugins/select2/select2-metronic.css"/>
<!-- END PAGE LEVEL SCRIPTS -->
<!-- BEGIN THEME STYLES -->
<link href="assets/css/style-metronic.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/pages/login-soft.css" rel="stylesheet" type="text/css"/>

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
	<form id="Form1" class="login-form" runat="server" >
		<h3 class="form-title"><asp:Label ID="lblmenu" runat="server" Text="Login to your account"></asp:Label></h3>
	
		<div class="form-group">
			<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
			<asp:Label ID="lblusername" runat="server" Text="Username" class="control-label visible-ie8 visible-ie9"></asp:Label>
			<div class="input-icon">
				<i class="fa fa-user"></i>
                <asp:TextBox ID="txtusername" runat="server" class="form-control placeholder-no-fix" type="text"  placeholder="Username" ></asp:TextBox>
				
			</div>
		</div>
		<div class="form-group">
			
            <asp:Label ID="lblpassword" runat="server" Text="Password" class="control-label visible-ie8 visible-ie9"></asp:Label>
			<div class="input-icon">
				<i class="fa fa-lock"></i>
                <asp:TextBox ID="txtpassword" runat="server" class="form-control placeholder-no-fix" placeholder="Password" TextMode="Password"></asp:TextBox>
				
			</div>
		</div>
		<div class="form-actions">
			
            
            <asp:LinkButton ID="btn_login" runat="server"  class="btn blue pull-right " OnClick="btn_login_Click1">Login<i class="m-icon-swapright m-icon-white"></i></asp:LinkButton>		
	
		</div>
		
		<div class="forget-password">
			<h4><asp:Label ID="lblforgetpassword" runat="server" Text="Forgot your password ?"></asp:Label></h4>
			<p>
				  <asp:Label ID="Label1" runat="server" Text="Click"></asp:Label>
				<a href="forget_password.aspx" >
                    
					 <asp:Label ID="lblclick" runat="server" Text="here" Font-Bold="True" ForeColor="Black"></asp:Label>
				</a>
				 <asp:Label ID="lblforpassword" runat="server" Text="to reset your password."></asp:Label>
			</p>
            
            
		</div>
        <div class="create-account">
            <p>
                <asp:Label ID="Label3" runat="server" Text="Don't have an account yet ?"></asp:Label>
                <asp:LinkButton ID="lbl_register" runat="server" OnClick="btn_register_Click">Create an account</asp:LinkButton>
                 
			
			</p>
        </div>
        
    </form>
	
	
</div>
<!-- END LOGIN -->
<!-- BEGIN COPYRIGHT -->
<div class="copyright">
	 <asp:Label ID="Label2" runat="server" Text="2015 &copy; window shopping"></asp:Label>
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