using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_Virtual_trial_opticals : System.Web.UI.Page
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
        repeter_1.DataSource = li;
        repeter_1.DataBind();
    }
}