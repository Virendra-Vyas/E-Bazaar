using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_datatable_user_list : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind_data();
        }
    }
    public void bind_data()
    {
      
        List<user_reg_model> li = user_reg_repository.select_all();
        User_List.DataSource = li;
        User_List.DataBind();
    }
    protected void User_List_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument);
            if(e.CommandName == "delete")
            {
                user_reg_repository.delete(id);
                bind_data();
            }
    }
}