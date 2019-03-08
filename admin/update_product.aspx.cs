using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_update_product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["edit_product_id"] == null)
            {
                Response.Redirect("~/admin/index.aspx");
            }
            else
            {
                HiddenField1.Value = Request.QueryString["edit_product_id"];
                product_model product = product_repository.select_id(int.Parse(HiddenField1.Value));
                if (product == null)
                {
                    Response.Redirect("~/admin/index.aspx");
                }
                else
                {
                    txtname.Text = product.product_name;
                    txtcode.Text = product.product_code;
                    txtprice.Text =product.product_price.ToString();
                    txtshort.Text = product.product_short_description;
                   txtwarranty.Text = product.product_warranty.ToString();
                   txtstock.Text = product.product_stock.ToString();

                    //image_uplode.FileBytes = product.product_main_image;
                    if (product.product_status == true)
                    {
                        DropDownList_product.SelectedIndex = 1;
                    }
                    else
                    {
                        DropDownList_product.SelectedIndex = 2;
                    }


                }
            }

        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        product_model product = new product_model();
        product.product_id = int.Parse(HiddenField1.Value);
        product.product_name = txtname.Text;
        product.product_code = txtcode.Text;
        product.product_short_description =txtshort.Text;
        product.product_warranty = int.Parse(txtwarranty.Text);
        product.product_stock = int.Parse(txtstock.Text);
        product.product_main_image = image_uplode.ToString();
        product.product_status = Boolean.Parse(DropDownList_product.Text);

        product_repository.update(product);
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/datatable_productlist.aspx");
    }
}