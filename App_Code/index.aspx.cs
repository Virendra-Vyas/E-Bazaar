using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            //data_bind();
            //product_view();
        }
    }

    //public void data_bind()
    //{
    //    List<product_model> li = product_repository.select_all();
    //    Repeater1.DataSource = li;
    //    Repeater1.DataBind();
    //    for (int i = 0; i <= repeter_view_product.Items.Count - 1; i++)
    //    {
    //        Label lbldiv_1 = (Label)Repeater1.Items[i].FindControl("lbldiv_1");
    //        lbldiv_1.Text = "<div class=\"box_s_none button_type_5 color_light r_corners tr_all_hover d_xs_none\"  data-popup=\"quick_view_product_all\"  id=\"quick_view_product_all" + i + "\">";
    //    }
    //}

    //public void product_view()
    //{
    //    List<product_model> li = product_repository.select_all();
    //    repeter_view_product.DataSource = li;
    //    repeter_view_product.DataBind();
    //    for (int i = 0; i <= repeter_view_product.Items.Count - 1;i++ )
    //    {
    //        Label lbldiv = (Label)repeter_view_product.Items[i].FindControl("lbldiv");
    //        lbldiv.Text = "<div class=\"popup_wrap d_none\" id=\"quick_view_product_all" + i + "\">";
    //    }
    //}
}