using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for seller_review_model
/// </summary>
public class seller_review_model
{
	public seller_review_model()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public int seller_review_id { get; set; }
    public int seller_id { get; set; }
    public string seller_review_description { get; set; }
    public DateTime seller_review_date_time { get; set; }
    public string reviwer_name { get; set; }
}