using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_company : System.Web.UI.Page
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
        company_master_modal company_data = new company_master_modal();
        company_data.company_name = txtname.Text;
        company_data.company_status = Boolean.Parse(DropDownList_company.Text);

        company_master_repository.insert_company(company_data);
        Response.Write("<script>alert('Record inserted successfully.....');</script>");
        Response.Redirect("~/admin/datatable_company_list.aspx");
        reset();
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        DropDownList_company.Text = "Visible-Company";
    }
    public void reset()
    {
        txtname.Text = "";
        DropDownList_company.Text = "Visible-Company";
    }
}