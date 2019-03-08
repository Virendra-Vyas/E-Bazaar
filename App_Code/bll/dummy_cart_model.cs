using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for dummy_cart_model
/// </summary>
public class dummy_cart_model
{
	public dummy_cart_model()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int          session_id { get; set; }
    public int          cart_id { get; set; }
    public int          user_id { get; set; }
    public int          product_id { get; set; }
    public string       user_name { get; set; }
    public int          quantity { get; set; }
    public int          total { get; set; }
    public DateTime     purchase_date { get; set; }

}