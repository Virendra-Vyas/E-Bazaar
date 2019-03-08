<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lock_screen.aspx.cs" Inherits="lock_screen" %>

<!DOCTYPE html>
<!DOCTYPE html>
<html>
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<title>window shopping|Admin-lock_screen</title>


<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="assets/css/style-metronic.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
<link href="assets/css/pages/lock.css" rel="stylesheet" type="text/css"/>
<link href="assets/css/custom.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body>
<div class="page-lock">
	<div class="page-logo">
        
	</div>
	<div class="page-body">
		
        <asp:Image ID="Image1" class="page-lock-img" runat="server" BorderColor="White" ImageUrl="~/images/product_se_images/11078008_361812314015239_89720656_n.jpg" Height="197px" Width="195px" />
		<div class="page-lock-info">
			<h1><asp:Label ID="lblname" runat="server" Text="Sharma Anil"></asp:Label></h1>
			<span class="email">
				 <asp:Label ID="lblemail" runat="server" Text="Sharmaanil@window_shopping.com"></asp:Label>
			</span>
			<span class="locked">
				 <asp:Label ID="lbllock" runat="server" Text="Locked"></asp:Label>
			</span>
			<form id="Form1" class="form-inline" runat="server">
				<div class="input-group input-medium1">
                    <asp:TextBox ID="txtpassword" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
					
					<span class="input-group-btn ">
                        <asp:LinkButton ID="btn_login" runat="server" class="btn blue icn-only"><i class="m-icon-swapright m-icon-white"></i> Login</asp:LinkButton>
                        <%--<asp:Button ID="btnsubmit" runat="server" Text="Login" class="btn blue icn-only" BackColor="Gray" OnClick="btnsubmit_Click"  />--%>
						
					</span>
				</div>
				<!-- /input-group -->
				
			</form>
		</div>
	</div>
    <br />
	
</div>
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
<script src="assets/plugins/backstretch/jquery.backstretch.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<script src="assets/scripts/core/app.js"></script>
<script src="assets/scripts/custom/lock.js"></script>
<script>
    jQuery(document).ready(function () {
        App.init();
        Lock.init();
    });
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>