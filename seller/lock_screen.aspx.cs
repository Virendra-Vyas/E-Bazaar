using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class lock_screen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (txtpassword.Text == "123")
        {
            Response.Redirect(@"~/index.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invalid Password.....');</script>");
        }
    }
}