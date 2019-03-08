using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_datatable_category_list : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            data_bind();
        }
    }
    public void data_bind()
    {

        List<category_master_model> li = category_master_repository.select_all();
        category_list.DataSource = li;
        category_list.DataBind();
    }
    protected void data_bind_category(object source, RepeaterCommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument);
        if(e.CommandName == "delete")
        {
            category_master_repository.delete(id);
            data_bind();
        }
        if (e.CommandName == "edit")
        {
            Response.Redirect("~/admin/update_menu_category.aspx?edit_category_master_id="+ id +"");
        }

    }
}