using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class seller_data_table_product_list : System.Web.UI.Page
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
        List<product_model> li = product_repository.select_all();
        product_list.DataSource = li;
        product_list.DataBind();

    }
    protected void product_list_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "delete")
        {
            product_repository.delete(id);
            data_bind();
        }
        if (e.CommandName == "edit")
        {
            Response.Redirect("~/seller/update_product.aspx?id=" + id + "");
        }
    }
}