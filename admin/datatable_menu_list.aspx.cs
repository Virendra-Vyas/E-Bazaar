using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_datatable_menu_list : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            data_bind();

        }
    }

    public void data_bind()
    {
        List<menu_category_model> li = menu_category_repository.select_all();
        company_menu_list.DataSource = li;
        company_menu_list.DataBind();
    }


    protected void company_menu_list_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "delete")
        {
            menu_category_repository.delete(id);
            data_bind();
        }
        if( e.CommandName == "edit")
        {
            Response.Redirect("~/admin/update_company_menu.aspx?menu_id="+ id +"");
        }
    }
}