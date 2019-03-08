using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_assets_page_add_sub_admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            reset();
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        sub_admin_model add_data = new sub_admin_model();
        add_data.f_name = txtf_name.Text;
        add_data.m_name = txtm_name.Text;
        add_data.l_name = txtl_name.Text;
        add_data.user_name = txtusername.Text;
        add_data.address = txtaddress.Text;
        add_data.email = txtemail.Text;
        add_data.number = txtnumber.Text;
        add_data.date_of_birth = DateTime.Parse(txtdate_of_brith.Text);
        add_data.password = txtpassword.Text;
        add_data.con_password = txtconpassword.Text;
        add_data.image = image_1.FileName;

       

        string path = Server.MapPath(@"~/images/admin_image/" + image_1.FileName);
        image_1.SaveAs(path);


        sub_admin_repository.insert_sub_admin(add_data);
        Response.Redirect("~/admin/datatable_sub_admin_list.aspx");
       
        
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        reset();
    }
    public void reset()
    {
        txtf_name.Text = "";
        txtm_name.Text = "";
        txtl_name.Text = "";
        txtusername.Text = "";
        txtaddress.Text = "";
        txtemail.Text = "";
        txtnumber.Text = "";
        txtdate_of_brith.Text = "";
        txtpassword.Text = "";
        txtconpassword.Text = "";
        image_1.ToString();
        
    }
}