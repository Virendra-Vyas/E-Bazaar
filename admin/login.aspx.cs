using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
   
    protected void btn_login_Click(object sender, EventArgs e)
    {
        
        sub_admin_model admin = sub_admin_repository.login_admin(txtusername.Text, txtpassword.Text);

        if (admin == null)
        {
            Response.Redirect("~/admin/error_page.aspx");
        }
        else
        {
            Session["admin"] = txtusername.Text;
            Response.Redirect("~/admin/index.aspx");
        } 
        
    }
}