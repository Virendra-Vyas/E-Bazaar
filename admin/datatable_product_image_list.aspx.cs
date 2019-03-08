using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_datatable_product_image_list : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            databind();
        }
    }
    public void databind()
    {
        List<product_images_model> li = product_images_repository.selectAll();
        product_images.DataSource = li;
        product_images.DataBind();
    }

    protected void repEmployeeDetails_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "delete")
        {
            product_images_repository.delete_product_images(id);
            databind();
        }
        if (e.CommandName == "edit")
        {
            Response.Redirect("~/seller/update_product_image.aspx?id=" + id + "");
        }
    }

}