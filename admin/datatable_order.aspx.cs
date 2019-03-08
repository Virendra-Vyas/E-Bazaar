using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_datatable_order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            data_bind();
        }

    }
    protected void order_List_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
    public void data_bind()
    {
        List<order_master_model> li = order_master_repository.select_all();
        order_List.DataSource = li;
        order_List.DataBind();
    }



}