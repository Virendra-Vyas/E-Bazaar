using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for product_model
/// </summary>
public class product_model
{
	public product_model()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int          product_id { get; set; }
    public int          company_id { get; set; }
    public int          sub_category_id { get; set; }
    public int          seller_id { get; set; }
    public string       product_name { get; set; }
    public string       product_code { get; set; }
    public float        product_price { get; set; }
    public string       product_short_description { get; set; }
    public int          product_warranty { get; set; }
    public string       product_specification { get; set; }
    public int          product_stock { get; set; }
    public int          product_replacement_days { get; set; }
    public int          product_delivery_days { get; set; }
    public int          product_total_no_of_ratings { get; set; }
    public float        product_avg_rating { get; set; }
    public string       product_main_image { get; set; }
    public Boolean      product_status { get; set; }
}