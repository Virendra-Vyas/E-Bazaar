using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_review_product_list : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            data_dind();
        }


    }
    protected void product_images_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }

    public void data_dind()
    {
        List<product_review_model> li = product_review_repository.selectAll();
        product_review.DataSource = li;
        product_review.DataBind();
    }
}