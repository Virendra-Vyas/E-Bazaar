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
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("~/admin/index.aspx");
            }
            else
            {
                HiddenField1.Value = Request.QueryString["id"];
                product_images_model product_image = product_images_repository.select_id(int.Parse(HiddenField1.Value));
                if (product_image == null)
                {
                    Response.Redirect("~/admin/index.aspx");
                }
                else
                {
                    //image_uplode.FileName = product_image.product_secondary_image;\
                    //lblImageName.Text = product_image.product_secondary_image;
                    //lbl_product_name_display.Text = int.Parse(product_image.product_i);
                    lbl_image_name_dispaly.Text = product_image.product_secondary_image;
                    image_1.ImageUrl =  "~/images/product_se_images/"+ product_image.product_secondary_image;
                    if (product_image.product_image_status == true)
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
 
        product_images.product_image_status = Boolean.Parse(DropDownList_product.Text);
        product_images.product_secondary_image = FileUpload1.FileName;
        product_images_repository.update_product_images(product_images);



        string path = Server.MapPath(@"~/images/product_se_images/" + FileUpload1.FileName);
        FileUpload1.SaveAs(path);

        Response.Redirect("~/seller/data_table_product_images.aspx");

    }

   
}