using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_update_company_menu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["menu_id"] == null)
            {
                Response.Redirect("~/admin/index.aspx");
            }
            else
            {
                HiddenField1.Value = Request.QueryString["menu_id"];
                menu_category_model menu = menu_category_repository.select_id(int.Parse(HiddenField1.Value));
                if (menu == null)
                {
                    Response.Redirect("~/admin/index.aspx");
                }
                else
                {
                    txtname.Text = menu.menu_category_name;
                    if(menu.menu_category_status == true)
                    {
                        DropDownList_menu.SelectedIndex = 1;
                    }
                    else
                    {
                        DropDownList_menu.SelectedIndex = 2;
                    }
                }
            }


        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        menu_category_model menu_update = new menu_category_model();
        menu_update.menu_category_id = int.Parse(HiddenField1.Value);
        menu_update.menu_category_name = txtname.Text;
        menu_update.menu_category_status = Boolean.Parse(DropDownList_menu.Text);

        menu_category_repository.update(menu_update);

        Response.Redirect("~/admin/datatable_menu_list.aspx");
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/datatable_menu_list.aspx");
    }
}