using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_sub_category : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            reset();
            category_name();
        }

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        sub_category_model add_data = new sub_category_model();
        add_data.category_master_id = int.Parse(DropDownListcategory_name.Text);
        add_data.sub_category_name = txtname.Text;
        add_data.sub_category_new_old = DropDownList_category_new.Text;
        add_data.sub_category_status = Boolean.Parse(DropDownList_Sub_category.Text);

        sub_category_repository.insert_sub_category(add_data);
        Response.Write("<script>alert('Record inserted successfully.....');</script>");
        Response.Redirect("~/admin/datatable_sub_category_list.aspx");
        reset();

    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtname.Text = " ";
        DropDownList_category_new.Text = "New";
        DropDownList_Sub_category.Text = "Visible-Sub Category";
        
    }
    public void reset()
    {
        txtname.Text = " ";
        DropDownList_category_new.Text = "old";
        DropDownList_Sub_category.Text = "Visible-Sub Category";
    }
    public void category_name()
    {
        List < category_master_model > li = category_master_repository.select_all();
        DropDownListcategory_name.DataSource = li;
        DropDownListcategory_name.DataTextField = "category_name";
        DropDownListcategory_name.DataValueField = "category_master_id";
        DropDownListcategory_name.DataBind();

    }
}