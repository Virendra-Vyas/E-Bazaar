using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_datatable_sub_admin_list : System.Web.UI.Page
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
        List<sub_admin_model> li = sub_admin_repository.select_all();
        sub_admin_list.DataSource = li;
        sub_admin_list.DataBind();
    }
    protected void sub_admin_list_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "delete")
        {
            sub_admin_repository.delete(id);
            data_bind();
        }
    }
}