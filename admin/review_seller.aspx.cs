using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_review_seller : System.Web.UI.Page
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
        List<seller_review_model> li = seller_review_repository.selectAll();
        seller_review.DataSource = li;
        seller_review.DataBind();
    }
}