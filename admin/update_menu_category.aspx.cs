using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_update_menu_category : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["edit_category_master_id"] == null)
            {
                Response.Redirect("~/admin/index.aspx");
            }
            else
            {
                HiddenField1.Value = Request.QueryString["edit_category_master_id"];
                category_master_model category = category_master_repository.select_id(int.Parse(HiddenField1.Value));
                
                if(category==null)
                {
                    Response.Redirect("~/admin/index2.aspx");
                }
                else
                {
                    txtname.Text = category.category_name;
                    if(category.category_status == true)
                    {
                        DropDownList_category.SelectedIndex = 1;
                    }
                    else
                    {
                        DropDownList_category.SelectedIndex = 2;
                    }
                }



            }
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        category_master_model category_update = new category_master_model();
        category_update.category_master_id = int.Parse(HiddenField1.Value);
        category_update.category_name = txtname.Text;
        category_update.category_status = Boolean.Parse(DropDownList_category.Text);

        category_master_repository.update(category_update);
        Response.Redirect("~/admin/datatable_category_list.aspx");
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/datatable_category_list.aspx");
    }
}