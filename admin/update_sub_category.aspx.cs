using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_update_sub_category : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("~/admin/index.aspx");
            }
            else
            {
                HiddenField1.Value = Request.QueryString["id"];
                sub_category_model cm = sub_category_repository.select_id(int.Parse(HiddenField1.Value));
                if (cm == null)
                {
                    Response.Redirect("~/admin/index.aspx");
                }
                else
                {
                    txtname.Text = cm.sub_category_name;
                    DropDownList_category_new.Text = cm.sub_category_new_old;
                    if(cm.sub_category_status == true)
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
        sub_category_model su = new sub_category_model();
        su.sub_category_id = int.Parse(HiddenField1.Value);
        su.sub_category_name = txtname.Text;
        su.sub_category_new_old = DropDownList_category_new.Text;
        su.sub_category_status = Boolean.Parse(DropDownList_company.Text);
        sub_category_repository.update(su);

        Response.Redirect("~/admin/datatable_sub_category_list.aspx");


    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/datatable_sub_category_list.aspx");
    }
}