using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page_product_image : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            reset();
            product_name_bind();
        }
    }
    public void reset()
    {
        
        image_upload = null;
        DropDownList_product_image.Text = "Visible-Product Image";
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        product_images_model add_image = new product_images_model();
        add_image.product_id = int.Parse(DropDownListproduct_name.Text);
        add_image.product_secondary_image = image_upload.FileName;
        add_image.product_image_status = Boolean.Parse(DropDownList_product_image.Text);
        
        product_images_repository.insert_images(add_image);

        string path = Server.MapPath(@"~/images/product_se_images/" + image_upload.FileName);
        image_upload.SaveAs(path);
        
        
        Response.Write("<script>alert('Record inserted successfully.....');</script>");
        Response.Redirect("~/admin/datatable_product_image_list.aspx");
        reset();

    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        
        image_upload = null;
        DropDownList_product_image.Text = "Visible-Product Image";
    }
    public void product_name_bind()
    {
        List<product_model> li = product_repository.select_all();
        DropDownListproduct_name.DataSource = li;
        DropDownListproduct_name.DataTextField = "product_name";
        DropDownListproduct_name.DataValueField = "product_id";
        DropDownListproduct_name.DataBind();
    }
}