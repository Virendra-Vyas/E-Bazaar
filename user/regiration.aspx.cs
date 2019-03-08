using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_regiration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_cancle_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user/index.aspx");
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        user_registration_model add_user = new user_registration_model();
        
    }
}