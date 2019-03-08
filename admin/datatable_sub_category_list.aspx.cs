using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_datatable_sub_category_list : System.Web.UI.Page
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
        List<sub_category_model> li = sub_category_repository.selectAll();
        sub_category_list.DataSource = li;
        sub_category_list.DataBind();
    }



    protected void sub_category_list_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "delete")
        {
            sub_category_repository.delete(id);
            data_bind();
        }

        if (e.CommandName == "edit")
        {
            Response.Redirect("~/admin/update_sub_category.aspx?id=" + id + "");
        }

    }
}