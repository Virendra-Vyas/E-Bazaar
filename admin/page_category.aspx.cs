using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_category : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            reset();
            menu_name_bind();
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        category_master_model add_data = new category_master_model();
        add_data.menu_category_id = int.Parse(DropDownListmenu_name.Text);
        add_data.category_master_id = int.Parse(DropDownListmenu_name.Text);
        add_data.category_name = txtname.Text;
        add_data.category_status = Boolean.Parse(DropDownList_category.Text);
        category_master_repository.insert_category(add_data);
        Response.Write("<script>alert('Record inserted successfully.....');</script>");
        Response.Redirect("~/admin/datatable_category_list.aspx");
        reset();
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        DropDownList_category.Text = "";
    }
    public void reset()
    {
        txtname.Text = "";
        DropDownList_category.Text = "Visible Category";
    }

    public void menu_name_bind()
    {
        List<menu_category_model> li = menu_category_repository.select_all();
        DropDownListmenu_name.DataSource = li;
        DropDownListmenu_name.DataTextField = "menu_category_name";
        DropDownListmenu_name.DataValueField = "menu_category_id";
        DropDownListmenu_name.DataBind();
    }
}