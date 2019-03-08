using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_cart_after_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user/user_home.aspx");
           
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user/checkout.aspx");
    }
}