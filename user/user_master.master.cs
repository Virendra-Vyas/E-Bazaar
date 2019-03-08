using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_user_master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_login_Click(object sender, EventArgs e)
    {
        user_reg_model user = user_reg_repository.login_user(txt_username.Text, txt_password.Text);
        if (user == null)
        {
            Response.Redirect("~/seller/error_page.aspx");
        }
        else
        {
            Session["user"] = txt_username.Text;
            Response.Redirect("~/user/user_home.aspx");
        }

        Response.Write("<script>alert('login successfully.....');</script>");
        // Response.Redirect("~/user/regiration.aspx");
    }

    protected void btn_submit_reg_Click(object sender, EventArgs e)
    {

        user_reg_model add_user = new user_reg_model();
        add_user.user_name = txt_reg_username.Text;
        add_user.password = txt_reg_password.Text;
        add_user.email = txt_email.Text;
        add_user.gender = DropDownList_gender.Text;
        add_user.security_ans = txt_answer.Text;

        user_reg_repository.inert_user(add_user);
        Response.Write("<script>alert('insert successfully.....');</script>");
        // Response.Redirect("~/user/regiration.aspx");
    }

}
