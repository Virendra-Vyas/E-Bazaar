using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            displayData();
        }  
    }
    private void displayData()
    {
        List<company_master_modal> li = company_master_repository.select_all();


        sample_editable_1.DataSource = li;
        sample_editable_1.DataBind();
        
    }
}