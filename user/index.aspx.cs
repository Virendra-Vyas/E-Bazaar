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
        }
    }

    public void data_bind()
    {
        List<product_model> li = product_repository.select_all();
        Repeater1.DataSource = li;
        Repeater1.DataBind();
    
    }





    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

        //HiddenField hid = (HiddenField)e.Item.FindControl("hid");
        //Label lblPrice = (Label)e.Item.FindControl("lblPrice");

        //dummy_cart_model cart = new dummy_cart_model();

        ////Session.SessionID

        //cart.product_id = int.Parse(hid.Value);
        //cart.total = int.Parse(lblPrice.Text);
        //cart.quantity = 1;
        //cart.purchase_date = DateTime.Now;
        //cart.session_id = 1;
        //cart.user_name = Session["user_name"].ToString();
        //dummy_cart_repository.insert_dummy_cart(cart);
        //Response.Write("<script>alert('Succeffuly Inserted.....')</script>");
    }


    protected void btn_add_cart_Click(object sender, EventArgs e)
    {
        dummy_cart_model cart = new dummy_cart_model();

        cart.product_id = 2;
        cart.total = 300;
        cart.quantity = 1;
        cart.purchase_date = DateTime.Now;
        cart.session_id = 1;
        cart.user_name = "Mahesh";
        dummy_cart_repository.insert_dummy_cart(cart);
        Response.Write("<script>alert('Succeffuly Inserted.....')</script>");
    }
}