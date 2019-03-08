using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    
    protected void btn_register_Click(object sender, EventArgs e)
    {
        Response.Redirect(@"~\seller\register.aspx");
    }
    protected void btn_login_Click1(object sender, EventArgs e)
    {
        seller_registration_model srm = seller_registration_repository.login_seller(txtusername.Text, txtpassword.Text);

        if (srm == null)
        {
            Response.Redirect("~/seller/error_page.aspx");
        }
        else
        {
            Session["seller"] = txtusername.Text;
            Response.Redirect("~/seller/add_product.aspx");
        } 
    }
}