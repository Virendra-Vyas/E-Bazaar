using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class seller_update_product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("~/admin/index1.aspx");
            }
            else
            {
                HiddenField1.Value = Request.QueryString["id"];
                product_model product = product_repository.select_id(int.Parse(HiddenField1.Value));
                if (product == null)
                {
                    Response.Redirect("~/admin/index2.aspx");
                }
                else
                {
                    
                    txtname.Text = product.product_name;
                    txtcode.Text = product.product_code;
                    txtprice.Text = product.product_price.ToString();
                    txtdesc.Text = product.product_short_description;
                    txtstock.Text = product.product_stock.ToString();
                    product_image.ImageUrl = "~/images/product_images/"+product.product_main_image;
                    
                    if (product.product_status == true)
                    {
                        DropDownList_product.SelectedIndex = 1;
                    }
                    else
                    {
                        DropDownList_product.SelectedIndex = 2;
                    }
                    txtwarty.Text = product.product_warranty.ToString();
                    txtspecification.Text = product.product_specification;
                    txtreplmentday.Text = product.product_replacement_days.ToString();
                    txtdeliver.Text = product.product_delivery_days.ToString();
                   

                }
            }

        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        product_model product = new product_model();
        product.product_id = int.Parse(HiddenField1.Value);
        product.product_name = txtname.Text;
        product.product_price = int.Parse(txtprice.Text);
        product.product_short_description = txtdesc.Text;
        
        product.product_status = Boolean.Parse(DropDownList_product.Text);

        product.product_warranty = int.Parse(txtwarty.Text);
        product.product_specification = txtspecification.Text;
        product.product_stock = int.Parse(txtstock.Text);
        product.product_replacement_days = int.Parse(txtreplmentday.Text);
        product.product_delivery_days = int.Parse(txtdeliver.Text);
        product_repository.update(product);
        Response.Redirect("~/seller/data_table_product_list.aspx");
        
        
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/seller/data_table_product_list.aspx");
    }
}