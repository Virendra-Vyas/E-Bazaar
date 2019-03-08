using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_index_demo : System.Web.UI.Page
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
    protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        for (int i = 0; i < Repeater1.Items.Count; i++)
        {
            Label lll = (Label)Repeater1.Items[i].FindControl("mmm");
            HiddenField hhh = (HiddenField)Repeater1.Items[i].FindControl("hid");

           ViewState["id"] = hhh.Value.ToString();
        }
    }

    protected void btnOK_Click(object sender, EventArgs e)
    {
     //   Response.Write("" + ViewState["id"] + "");
       // mmm.Text = ViewState["id"].ToString();
    }
}