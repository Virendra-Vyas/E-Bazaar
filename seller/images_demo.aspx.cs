using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class seller_images_demo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        data_bind(); 
    }

    public void data_bind()
    {
        List<product_images_model> li = product_images_repository.selectAll();
        product_images.DataSource = li;
        product_images.DataBind();
    }
}