using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Page_add_product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            reset();
            company_name_bind();
            category_name_bind();
            sub_category_name_bind();
        }

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        product_model add_data = new product_model();
        add_data.company_id = int.Parse(DropDownListcompany_name.Text);
        add_data.sub_category_id =int.Parse( DropDownListsub_category_name.Text);
        add_data.product_name = txtname.Text;
        add_data.product_code = txtcode.Text;
        add_data.product_price = float.Parse(txtprice.Text);
        add_data.product_short_description = txtdesc.Text;
        add_data.product_stock = int.Parse(txtstock.Text);
        add_data.product_main_image = image.ToString();
        add_data.product_status = Boolean.Parse(DropDownList_product.Text);
        add_data.product_warranty = int.Parse(txtwarty.Text);
        add_data.product_specification = txtspecification.Text;
        add_data.product_replacement_days = int.Parse(txtreplmentday.Text);
        add_data.product_delivery_days = int.Parse(txtdeliver.Text);

        string path = Server.MapPath(@"~/images/product_images/" + image.FileName);
        image.SaveAs(path);

        product_repository.insert_product(add_data);
        Response.Write("<script>alert('Record inserted successfully.....');</script>");
        Response.Redirect("~/admin/datatable_productlist.aspx");
        reset();
    }
    public void reset()
    {
        txtname.Text = "";
        txtcode.Text = "";
        txtprice.Text = "";
        txtdesc.Text = "";
        txtstock.Text = "";
        DropDownList_product.Text = "";
        txtwarty.Text = "";
        txtspecification.Text = "";
        txtreplmentday.Text = "";
        txtdeliver.Text = "";
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        reset();
        
    }
    public void company_name_bind()
    {
        List<company_master_modal> li = company_master_repository.select_all();

        DropDownListcompany_name.DataSource = li;
        DropDownListcompany_name.DataTextField = "company_name";
        DropDownListcompany_name.DataValueField = "company_id";
        DropDownListcompany_name.DataBind();
    }

    public void category_name_bind()
    {
        List<category_master_model> li = category_master_repository.select_all();
        DropDownListcategory_name.DataSource = li;
        DropDownListcategory_name.DataTextField = "category_name";
        DropDownListcategory_name.DataValueField = "category_master_id";
        DropDownListcategory_name.DataBind();

    }
    public void sub_category_name_bind()
    {
        List<sub_category_model> li = sub_category_repository.selectAll();
        DropDownListsub_category_name.DataSource = li;
        DropDownListsub_category_name.DataTextField = "sub_category_name";
        DropDownListsub_category_name.DataValueField = "sub_category_id";
        DropDownListsub_category_name.DataBind();
    }
}