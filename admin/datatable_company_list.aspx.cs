using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_datatable_company_list : System.Web.UI.Page
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
        List<company_master_modal> li = company_master_repository.select_all();
        company_list.DataSource = li;
        company_list.DataBind();
    }

    protected void repEmployeeDetails_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int i = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "delete")
        {


            company_master_repository.delete(i);

            databind();


        }
        if (e.CommandName == "edit")
        {



            Response.Redirect("~/admin/update_company_data.aspx?id1=" + i + "");

        }











    }
}