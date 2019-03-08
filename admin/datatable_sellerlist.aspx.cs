using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_datatable_sellerlist : System.Web.UI.Page
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
        List<seller_registration_model> li = seller_registration_repository.selectAll();
        seller_List.DataSource = li;
        seller_List.DataBind();
    }
    protected void seller_List_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "delete")
        {
            seller_registration_repository.delete(id);
            data_bind();
        }
    }
}