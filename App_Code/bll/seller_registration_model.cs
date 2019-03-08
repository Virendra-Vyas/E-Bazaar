using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for seller_registration_model
/// </summary>
public class seller_registration_model
{
	public seller_registration_model()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public int seller_id { get; set; }
    public string seller_company_name { get; set; }
    public string seller_company_address { get; set; }
    public string seller_company_contact_1 { get; set; }
    public string seller_company_contact_2 { get; set; }
    public string seller_company_email { get; set; }
    public string seller_company_logo { get; set; }
    public string seller_company_website { get; set; }
    public string seller_company_cst_no { get; set; }
    public string seller_status { get; set; }
    public string user_name { get; set; }
    public string password { get; set; }
}