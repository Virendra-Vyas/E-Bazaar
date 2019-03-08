using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class seller_register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_back_Click(object sender, EventArgs e)
    {
        Response.Redirect(@"~\seller\login.aspx");
    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {
        seller_registration_model seller = new seller_registration_model();
        seller.seller_company_name = txtcompany_name.Text;
        seller.seller_company_address = txtcompany_address.Text;
        seller.seller_company_contact_1 = txtcompany_contact1.Text;
        seller.seller_company_contact_2 = txt_company_number2.Text;
        seller.seller_company_email = txt_company_email.Text;
        seller.seller_company_logo = image_uplode_logo.FileName;
        seller.seller_company_website = txt_company_website.Text;
        seller.seller_company_cst_no = txt_cst_number.Text;
        seller.seller_status = DropDownList_company.Text;
        seller.user_name = txtuser_name.Text;
        seller.password = txt_re_password.Text;

        string path = Server.MapPath(@"~/images/company_logo/"+image_uplode_logo.FileName);
        image_uplode_logo.SaveAs(path);

        seller_registration_repository.insert_seller(seller);
        Response.Write("<script>alert('Record inserted successfully.....');</script>");

    }

    public void reset()
    {
        txtcompany_name.Text = "";
        txtcompany_address.Text = "";
        txtcompany_contact1.Text = "";
        txt_company_number2.Text = "";
        txt_company_email.Text = "";
        

        
    }
}