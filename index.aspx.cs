using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_index : System.Web.UI.Page
{
    int i = 0;
    int j = 0;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            data_bind();
            product_view();
        }
    }

    public void data_bind()
    {
        List<product_model> li = product_repository.select_all();
        Repeater1.DataSource = li;
        Repeater1.DataBind();
        for (int i = 0; i <= repeter_view_product.Items.Count - 1; i++)
        {
            Label lbldiv_1 = (Label)Repeater1.Items[i].FindControl("lbldiv_1");
            lbldiv_1.Text = "<span role=\"button\" data-popup=\"#quick_view_product"+i+"\" class=\"button_type_5 box_s_none color_light r_corners tr_all_hover d_xs_none\">";
        }
    }

    public void product_view()
    {
        List<product_model> li = product_repository.select_all();
        repeter_view_product.DataSource = li;
        repeter_view_product.DataBind();
        for (int i = 0; i <= repeter_view_product.Items.Count - 1; i++)
        {
            Label lbldiv = (Label)repeter_view_product.Items[i].FindControl("lbldiv");
            lbldiv.Text = "<div class=\"popup_wrap d_none\" id=\"quick_view_product"+i+"\">";

            
        }
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        for (int i = 0; i <= Repeater1.Items.Count - 1; i++)
        {
           HiddenField product_id = (HiddenField)Repeater1.Items[i].FindControl("hid");
            Label price = (Label)Repeater1.Items[i].FindControl("lblprice");

            i =Convert.ToInt32(product_id.Value);
            j = Convert.ToInt32(price.Text);

            
        }
    }
    protected void btn_add_cart_Click(object sender, EventArgs e)
    {

        dummy_cart_model cart = new dummy_cart_model();

        cart.product_id = i;
        cart.total = j;
        dummy_cart_repository.insert_dummy_cart(cart);
        Response.Write("<script>alert('Succeffuly Inserted.....')</script>");


    }
}