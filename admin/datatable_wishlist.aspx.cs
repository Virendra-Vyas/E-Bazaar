using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_datatable_wishlist : System.Web.UI.Page
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
        List<wish_list_model> li = wish_list_repository.selectAll();
        wish_List.DataSource = li;
        wish_List.DataBind();
       
    }

    protected void wish_List_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
}