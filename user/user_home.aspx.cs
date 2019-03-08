using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_user_home : System.Web.UI.Page
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
        Repeater1.DataSource = li;
        Repeater1.DataBind();
    }
}