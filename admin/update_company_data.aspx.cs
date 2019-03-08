using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_update_company_data : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["id1"] == null)
            {
                Response.Redirect("~/admin/index.aspx");
            }
            else
            {
                HiddenField1.Value = Request.QueryString["id1"];
                company_master_modal cm = company_master_repository.select_id(int.Parse(HiddenField1.Value));
                if (cm == null)
                {
                    Response.Redirect("~/admin/index.aspx");
                }
                else
                {
                    txtname.Text = cm.company_name;

                    if (cm.company_status == true)
                    {
                        DropDownList_company.SelectedIndex = 1;
                    }
                    else
                    {
                        DropDownList_company.SelectedIndex = 2;
                    }
                }
            }
        }
    }
   
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        company_master_modal cm = new company_master_modal();
        cm.company_id = int.Parse(HiddenField1.Value);
        cm.company_name = txtname.Text;
        cm.company_status = Boolean.Parse(DropDownList_company.Text);

        company_master_repository.update(cm);

        Response.Redirect("~/admin/datatable_company_list.aspx");
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/datatable_company_list.aspx");
    }
}