using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_update_product_image : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["edit_product_image_id"] == null)
            {
                Response.Redirect("~/admin/index.aspx");
            }
            else
            {
                HiddenField1.Value = Request.QueryString["edit_product_image_id"];
                product_images_model product_image = product_images_repository.select_id(int.Parse(HiddenField1.Value));
                if(product_image == null)
                {
                    Response.Redirect("~/admin/index.aspx");
                }
                else
                {
                    //image_uplode.FileName = product_image.product_secondary_image;
                    img_display.ImageUrl = product_image.product_secondary_image;
                    if ( product_image.product_image_status == true)
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
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/datatable_product_image_list.aspx");
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        product_images_model product_images = new product_images_model();
        product_images.product_image_id = int.Parse(HiddenField1.Value);
        //product_images.product_secondary_image = image_uplode.ToString();
       // product_images.product_secondary_image = lblproduct_image_name.Text;
        product_images.product_image_status = Boolean.Parse(DropDownList_product.Text);


        product_images_repository.update_product_images(product_images);

        //string path = Server.MapPath(@"~/productimages/" + image_uplode.FileName);
       // image_uplode.SaveAs(path);

        Response.Redirect("~/admin/datatable_product_image_list.aspx");

    }
}