using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for product_review_model
/// </summary>
public class product_review_model
{
	public product_review_model()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public int product_review_id { get; set; }
    public int product_id { get; set; }
    public string product_review_description { get; set; }
    public DateTime product_review_date_time { get; set; }
    public string reviwer_name { get; set; }
}