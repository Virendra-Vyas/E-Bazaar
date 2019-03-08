using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_menu : System.Web.UI.Page
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
        menu_category_model add_menu = new menu_category_model();
        add_menu.menu_category_name = txtname.Text;
        add_menu.menu_category_status = Boolean.Parse(DropDownList_menu.Text);
        menu_category_repository.insert_menu_category(add_menu);

        Response.Write("<script>alert('Record inserted successfully.....');</script>");
        Response.Redirect("~/admin/datatable_menu_list.aspx");
        reset();
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        DropDownList_menu.Text = "Visible-Menu";

    }
    public void reset()
    {

        txtname.Text = "";
        DropDownList_menu.Text = "Visible-Menu";
    }
}